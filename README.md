# ExecuTorch Runner for i.MX93 Cortex-M33 + Ethos-U65 NPU

Run [ExecuTorch](https://github.com/pytorch/executorch) ML inference on the **Ethos-U65 NPU** of the NXP i.MX93 EVK, controlled by the Cortex-M33 core via Linux remoteproc.

```
Linux (A55) ──remoteproc──> CM33 firmware ──AXI──> Ethos-U65 NPU
                              │                      │
                              │ DTCM (108KB data)     │ DDR (4MB reserved)
                              │ ITCM (128KB code)     │ model @ 0xC0000000
                              │                       │ scratch @ 0xC0100000
```

The firmware loads a `.pte` model from DDR, delegates computation to the Ethos-U65 NPU, and reports results via the remoteproc trace buffer (`trace0`).

---

## Prerequisites

- **MCUXpresso SDK 25.9.0** for i.MX93 EVK (install via MCUXpresso for VS Code extension or [mcuxpresso.nxp.com](https://mcuxpresso.nxp.com))
- **ARM GCC Toolchain 14.2.rel1** ([developer.arm.com](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads))
- **CMake** 3.22.0+
- **Ninja** build system
- **i.MX93 EVK** running Linux with remoteproc support and Ethos-U kernel driver bound

---

## Quick Start

### 1. Set Environment Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `ARMGCC_DIR` | ARM GCC toolchain root | `$HOME/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-...` |
| `SdkRootDirPath` | Folder **containing** `mcuxsdk/` subdirectory | `$HOME/mcuxsdk_root` |

<details>
<summary><b>macOS (Zsh)</b></summary>

```bash
# Add to ~/.zshrc
# Apple Silicon:
export ARMGCC_DIR="$HOME/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-darwin-arm64-arm-none-eabi"
# Intel:
# export ARMGCC_DIR="$HOME/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-darwin-x86_64-arm-none-eabi"

export SdkRootDirPath="$HOME/mcuxsdk_root"
export MCUX_VENV_PATH="$HOME/.mcuxpressotools/.venv/bin"

source ~/.zshrc
```
</details>

<details>
<summary><b>Linux (Bash)</b></summary>

```bash
# Add to ~/.bashrc
export ARMGCC_DIR="$HOME/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi"
export SdkRootDirPath="$HOME/mcuxsdk_root"
export MCUX_VENV_PATH="$HOME/.mcuxpressotools/.venv/bin"

source ~/.bashrc
```
</details>

<details>
<summary><b>Windows (PowerShell)</b></summary>

```powershell
[Environment]::SetEnvironmentVariable("ARMGCC_DIR", "$env:USERPROFILE\.mcuxpressotools\arm-gnu-toolchain-14.2.rel1-mingw-w64-x86_64-arm-none-eabi", "User")
[Environment]::SetEnvironmentVariable("SdkRootDirPath", "$env:USERPROFILE\mcuxsdk_root", "User")
[Environment]::SetEnvironmentVariable("MCUX_VENV_PATH", "$env:USERPROFILE\.mcuxpressotools\.venv\Scripts", "User")
```
Restart your terminal after setting these.
</details>

### 2. Clone and Apply SDK Patches

```bash
git clone https://github.com/fidel-makatia/Executorch_runner_cm33.git
cd Executorch_runner_cm33

# Apply required SDK patches (run once)
./patches/apply_patches.sh
```

The patch script modifies two files in your SDK (with backups):

| Patch | File | Why |
|-------|------|-----|
| **GOT initialization** | `devices/.../gcc/MIMX9352xxxxM_ram.ld` | Adds `*(.got)` and `*(.got.plt)` inside `.data` section. Without this, GOT entries are never initialized by startup code, causing vtable corruption and BUS FAULT during `load_method`. |
| **NPU log redirect** | `middleware/.../core_driver/src/ethosu_log.h` | Redirects Ethos-U driver LOG_ERR/LOG_INFO to the remoteproc trace buffer. Without this, NPU errors are only on UART and invisible via `cat trace0`. |

### 3. Build

```bash
cmake --preset debug
cmake --build debug
```

### 4. Load Model to DDR via U-Boot

The firmware expects a `.pte` model at DDR address `0xC0000000`. Load it via U-Boot before booting Linux:

```
# In U-Boot console
fatload mmc 0:1 0xc0000000 model_u65.pte
boot
```

The model must be compiled with the Ethos-U65 delegate.

### 5. Deploy and Run

```bash
# Copy firmware to board
scp debug/executorch_runner_cm33.elf root@<board-ip>:/lib/firmware/

# On the board (or via SSH)
echo stop > /sys/class/remoteproc/remoteproc0/state 2>/dev/null
echo executorch_runner_cm33.elf > /sys/class/remoteproc/remoteproc0/firmware
echo start > /sys/class/remoteproc/remoteproc0/state
sleep 3
cat /sys/kernel/debug/remoteproc/remoteproc0/trace0
```

Expected output:
```
I: ethosu_init. base_address=0x4a900000
NPU config match
NPU arch match
cmd_end_reached 0x1
1 inferences finished
Output[0]: dtype=6, numel=1, nbytes=4
  [0]=1073741824 (float raw)     <- 0x40000000 = 2.0f
Model run: 1
Program complete, exiting.
```

---

## Pre-built Libraries

The `executorch/lib/` directory contains pre-built static libraries for Cortex-M33 (`-Os`, MinSizeRel):

| Library | Size | Purpose |
|---------|------|---------|
| `libexecutorch.a` | 52KB | ExecuTorch runtime |
| `libexecutorch_core.a` | 217KB | Core runtime (gc-sections removes most) |
| `libexecutorch_delegate_ethos_u.a` | 19KB | Ethos-U NPU delegate backend |
| `libquantized_ops_lib_selective.a` | 7KB | Registers only `quantize_per_tensor.out` and `dequantize_per_tensor.out` |
| `libquantized_kernels.a` | 242KB | Kernel implementations (gc-sections removes unused) |
| `libkernels_util_all_deps.a` | 308KB | Kernel utilities (gc-sections removes unused) |

**Why selective ops?** ExecuTorch PTE models compiled for Ethos-U delegate most ops to the NPU, but quantize/dequantize at the input/output boundary still run on the CPU. The full `libquantized_ops_lib.a` registers ALL quantized ops and pulls in ~92KB of kernel code, overflowing the 128KB ITCM. The selective library registers only the 2 needed ops.

---

## Memory Layout

| Region | Address | Size | Contents |
|--------|---------|------|----------|
| ITCM (m_text) | 0x0FFE0000 | 128KB | Code + rodata |
| DTCM (m_data) | 0x20003000 | 108KB | Data, BSS, heap, stack |
| DDR (model) | 0xC0000000 | up to ~3.3MB | `.pte` model file |
| DDR (scratch) | 0xC0100000 | 16KB | NPU scratch buffer |
| DDR (reserved) | 0xC0000000-0xC03FFFFF | 4MB | Total reserved via device tree |

### Build Size (example)

```
Memory region         Used Size  Region Size  %age Used
    m_interrupts:        1140 B       1144 B     99.65%
          m_text:      103476 B     129928 B     79.64%
          m_data:       61984 B       108 KB     56.05%
```

---

## Linux-Side Requirements

The Ethos-U65 NPU must be powered and clocked by the Linux kernel driver before the CM33 firmware can use it.

### Device Tree

Ensure your device tree reserves 4MB of DDR for the CM33 model:

```dts
reserved-memory {
    /* ... */
    ethosu_mem: ethosu@c0000000 {
        reg = <0 0xc0000000 0 0x400000>;
        no-map;
    };
};
```

### Ethos-U Kernel Driver

The Linux `ethosu` driver must be loaded and bound. Check with:

```bash
ls /dev/ethosu*        # Should show /dev/ethosu0
dmesg | grep ethosu    # Should show driver probe success
```

If the driver is not loaded, the NPU will not be powered and the firmware will hang at NPU initialization.

---

## VS Code Build (Alternative)

If you prefer VS Code with the MCUXpresso extension:

1. Install [MCUXpresso for VS Code](https://marketplace.visualstudio.com/items?itemName=nxpsemiconductors.mcuxpresso)
2. Open the project folder in VS Code
3. `Cmd/Ctrl+Shift+P` > `CMake: Select Configure Preset` > **debug**
4. `Cmd/Ctrl+Shift+P` > `CMake: Configure`
5. `F7` to build

---

## Troubleshooting

| Symptom | Cause | Fix |
|---------|-------|-----|
| BUS FAULT during `load_method` (vtable corruption) | GOT section not initialized | Run `./patches/apply_patches.sh` |
| `resolve_operator` error for `quantized_decomposed::*` | Missing CPU kernel for quantize/dequantize ops | Already fixed — `libquantized_ops_lib_selective.a` is linked |
| NPU bus error (`bus_status_error 0x1`) | Scratch buffer in DTCM (not AXI-accessible by NPU) | Already fixed — scratch mapped to DDR `0xC0100000` |
| NPU errors invisible in `trace0` | Driver logs go to UART only | Run `./patches/apply_patches.sh` |
| Log shows literal "zu" instead of numbers | nano printf doesn't support `%zu` | Already fixed — uses `%lu` with `(unsigned long)` cast |
| Firmware hangs at NPU init | Linux ethosu driver not loaded | Ensure `/dev/ethosu0` exists |
| `trace0` output truncated | 3KB trace buffer filled | Trace resets before each inference run |
| remoteproc fails to start | Stale state | Run `echo stop > .../state` first, wait 2s, then start |

---

## Architecture Details

### Key Design Decisions

1. **NPU scratch in DDR, not DTCM** — The Ethos-U65 accesses memory via the AXI bus. CM33 DTCM (0x20003000) is tightly-coupled and not AXI-accessible. The scratch buffer is mapped to DDR `0xC0100000` (1MB after model start).

2. **Selective operator registration** — Only `quantize_per_tensor.out` and `dequantize_per_tensor.out` are registered. These are the CPU ops at the NPU delegation boundary. Full registration overflows ITCM.

3. **BusFault handler with naked wrapper** — Uses `__attribute__((naked))` to read the correct MSP exception frame, bypassing the compiler's prologue that corrupts the stack pointer.

4. **Trace buffer for all output** — All inference results, NPU driver messages, and diagnostics go to the 3KB remoteproc trace buffer, readable from Linux via `cat /sys/kernel/debug/remoteproc/remoteproc0/trace0`.

---

## Project Structure

```
Executorch_runner_cm33/
├── CMakeLists.txt              # Build configuration
├── CMakePresets.json            # CMake presets (debug/release)
├── mcux_include.json            # Environment variable bindings
├── source/
│   ├── arm_executor_runner.cpp  # Main firmware (inference loop + all fixes)
│   ├── arm_memory_allocator.cpp # Memory allocator
│   ├── rsc_table.c              # Remoteproc resource table
│   └── *.h                      # Headers
├── executorch/
│   ├── include/                 # ExecuTorch headers
│   └── lib/                     # Pre-built static libraries for Cortex-M33
├── patches/
│   ├── apply_patches.sh         # One-time SDK patch script
│   └── ethosu_log.h             # Patched Ethos-U driver log header
├── SETUP.md                     # Detailed fix documentation
└── debug/                       # Build output (generated)
```

---

## Author

**Fidel Makatia**

---

*Last updated: March 2026*
