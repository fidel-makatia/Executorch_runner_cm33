# ExecuTorch Ethos-U65 NPU Runner - Setup & Fixes Guide

This documents the fixes required to run ExecuTorch ML inference on the **Ethos-U65 NPU** of the NXP i.MX93 FRDM board via the Cortex-M33 core.

---

## Architecture Overview

```
Linux (A55) ──remoteproc──> CM33 firmware ──AXI──> Ethos-U65 NPU
                              │                      │
                              │ DTCM (108KB)          │ DDR (4MB reserved)
                              │ code in ITCM (128KB)  │ model @ 0xC0000000
                              │                       │ scratch @ 0xC0100000
```

The CM33 firmware loads an ExecuTorch `.pte` model, delegates computation to the Ethos-U65 NPU, and reports results via the remoteproc trace buffer.

---

## Fixes Applied

### Runner-Side Fixes (this repo)

#### 1. Quantized Operator Kernel Registration

**Problem:** `load_method` fails with `resolve_operator` errors. The PTE model has two CPU operators at the NPU boundary that need kernel implementations:
- `quantized_decomposed::quantize_per_tensor.out`
- `quantized_decomposed::dequantize_per_tensor.out`

**Why:** ExecuTorch models compiled for Ethos-U delegate most ops to the NPU, but quantize/dequantize at the input/output boundary still run on the CPU. These kernel implementations must be linked.

**Fix:** Built a selective `libquantized_ops_lib_selective.a` (1.1KB) that only registers the 2 needed ops. The full `libquantized_ops_lib.a` (29KB) registers all quantized ops and pulls in all kernel code (~92KB text), overflowing the 128KB ITCM.

**Files changed:**
- `CMakeLists.txt` — link selective quantized ops + quantized_kernels + kernels_util_all_deps
- `executorch/lib/libquantized_ops_lib_selective.a` — custom-built selective registration

#### 2. NPU Scratch Buffer Placed in DDR

**Problem:** NPU bus error during inference (`bus_status_error 0x1, status 0x4804`). The Ethos-U65 NPU accesses memory via the AXI bus and **cannot access CM33 DTCM** (tightly-coupled memory at 0x20003000).

**Why:** The `temp_allocation_pool` (scratch buffer for NPU intermediate data) was in `.bss.tensor_arena` which the linker places in DTCM. The NPU tried to DMA to/from this buffer and got a bus fault.

**Fix:** Mapped the scratch buffer to a fixed DDR address `0xC0100000` (1MB into the reserved 4MB DDR region at 0xC0000000-0xC03FFFFF). DDR is AXI-accessible by both CM33 and NPU.

```cpp
// Before (BROKEN - DTCM, not AXI-accessible by NPU):
unsigned char __attribute__((section(".bss.tensor_arena"), aligned(16)))
    temp_allocation_pool[temp_allocation_pool_size];

// After (FIXED - DDR, AXI-accessible):
unsigned char* const temp_allocation_pool =
    reinterpret_cast<unsigned char*>(0xC0100000);
```

**File changed:** `source/arm_executor_runner.cpp`

#### 3. BusFault Handler with Correct Exception Frame

**Problem:** The original BusFault handler read the wrong stack frame, showing garbage PC/LR values (ASCII string data instead of code addresses).

**Why:** Using `__asm volatile("mrs %0, msp" : "=r"(sp))` inside a C function with local variables reads the handler's own pushed registers instead of the hardware exception frame.

**Fix:** Used `__attribute__((naked))` wrapper that passes MSP directly to the C handler via r0, bypassing the compiler's prologue.

```cpp
__attribute__((naked)) void BusFault_Handler(void) {
    __asm volatile("mrs r0, msp\n" "b BusFault_Handler_C\n");
}
void BusFault_Handler_C(uint32_t *frame) {
    // frame[6] = PC, frame[5] = LR — correct exception frame
}
```

**File changed:** `source/arm_executor_runner.cpp`

#### 4. Ethos-U Driver Logging to Trace Buffer

**Problem:** NPU driver error messages (LOG_ERR/LOG_INFO) went to UART via `DbgConsole_Printf` but not to the remoteproc trace buffer (`trace0`), making NPU errors invisible when debugging via `cat trace0`.

**Fix:** Added `ethosu_trace_log()` function and redirected driver log macros to write to the trace buffer.

**File changed:** `source/arm_executor_runner.cpp` (added `ethosu_trace_log()`)

#### 5. nano printf `%zu` Fix

**Problem:** All size values in log output showed as literal "zu" instead of numbers.

**Why:** The ARM nano.specs `snprintf` doesn't support the `%zu` (size_t) format specifier.

**Fix:** Changed all `%zu` to `%lu` with `(unsigned long)` cast throughout the runner source.

**File changed:** `source/arm_executor_runner.cpp`

#### 6. Output Printing to Trace Buffer

**Problem:** Inference outputs were only printed behind `#if defined(ET_LOG_DUMP_OUTPUT)` using `printf()` (UART), never visible in `trace0`.

**Fix:** Rewrote `print_outputs()` to always dump tensor metadata (dtype, shape, size) and element values to the trace buffer. Shows up to 32 elements per tensor.

**File changed:** `source/arm_executor_runner.cpp`

---

### MCUXpresso SDK-Side Fixes (NOT in this repo)

These fixes must be applied to your MCUXpresso SDK installation.

#### 7. GOT Section Initialization in Linker Script

**Problem:** BUS FAULT during `load_method` — vtable pointers corrupted (vptr = 0x00000008).

**Root cause:** The `.got` and `.got.plt` linker sections sat in a gap between `.data` and `.bss`. The startup code copies `.data` and zeros `.bss`, but the GOT in between was never initialized — all GOT entries contained zeros.

**Fix:** Add `*(.got)` and `*(.got.plt)` inside the `.data` section.

**File:** `<SDK>/devices/i.MX/i.MX93/MIMX9352/gcc/MIMX9352xxxxM_ram.ld`

```ld
.data : AT(__DATA_ROM)
{
    ...
    *(.data)
    *(.data*)
    KEEP(*(.jcr*))
    /* GOT must be inside .data so startup code copies it from ROM to RAM */
    *(.got)
    *(.got.plt)
    . = ALIGN(4);
    __data_end__ = .;
} > m_data
```

#### 8. Ethos-U Driver Log Header

**Problem:** Driver log messages not visible in trace buffer.

**Fix:** Modify `ethosu_log.h` to redirect LOG_ERR/LOG_INFO through `ethosu_trace_log()` instead of PRINTF, and set severity to INFO.

**File:** `<SDK>/middleware/eiq/ethos-u-core-software/core_driver/src/ethosu_log.h`

---

## Memory Layout

| Region | Address | Size | Contents |
|--------|---------|------|----------|
| ITCM (m_text) | 0x0FFE0000 | 128KB | Code + rodata |
| DTCM (m_data) | 0x20003000 | 108KB | Data, BSS, heap, stack |
| DDR (model) | 0xC0000000 | ~4KB-3.3MB | .pte model file |
| DDR (scratch) | 0xC0100000 | 16KB | NPU scratch buffer |
| DDR (reserved) | 0xC0000000 | 4MB | Total reserved via device tree |

## Build Output

```
Memory region         Used Size  Region Size  %age Used
    m_interrupts:        1140 B       1144 B     99.65%
          m_text:      103476 B     129928 B     79.64%
          m_data:       61984 B       108 KB     56.05%
```

## Libraries Linked

| Library | Size | Purpose |
|---------|------|---------|
| `libexecutorch.a` | 52KB | ExecuTorch runtime |
| `libexecutorch_core.a` | 217KB | Core runtime (gc-sections removes most) |
| `libexecutorch_delegate_ethos_u.a` | 19KB | Ethos-U NPU delegate backend |
| `libquantized_ops_lib_selective.a` | 7KB | Registers quantize/dequantize_per_tensor ops |
| `libquantized_kernels.a` | 242KB | Kernel implementations (gc-sections removes unused) |
| `libkernels_util_all_deps.a` | 308KB | Kernel utilities (gc-sections removes unused) |

## Quick Test

```bash
# Build
export SdkRootDirPath=<path-to-sdk>/mcuxsdk
export ARMGCC_DIR=<path-to-arm-gcc>
cmake --build debug

# Deploy and run
scp debug/executorch_runner_cm33.elf root@<board-ip>:/lib/firmware/
ssh root@<board-ip> "echo stop > /sys/class/remoteproc/remoteproc0/state; \
  sleep 2; echo start > /sys/class/remoteproc/remoteproc0/state; \
  sleep 3; cat /sys/kernel/debug/remoteproc/remoteproc0/trace0"
```

Expected output includes:
```
NPU config match
NPU arch match
cmd_end_reached 0x1
1 inferences finished
Output[0]: dtype=6, numel=1, nbytes=4
  [0]=1073741824 (float raw)     ← 0x40000000 = 2.0f
Model run: 1
Program complete, exiting.
```
