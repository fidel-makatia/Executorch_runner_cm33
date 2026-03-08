# ExecuTorch Runner for i.MX93 Cortex-M33 + Ethos-U65 NPU

Run [ExecuTorch](https://github.com/pytorch/executorch) ML inference on the **Ethos-U65 NPU** of the NXP i.MX93, controlled by the Cortex-M33 core via Linux remoteproc. Tested with MobileNet V2 (1000-class ImageNet classification, 100% NPU utilization).

```
Linux (A55) ──remoteproc──> CM33 firmware ──AXI──> Ethos-U65 NPU
                              │                      │
                              │ DTCM (108KB data)     │ DDR model   @ 0xC0000000 (4MB)
                              │ ITCM (128KB code)     │ DDR scratch @ 0xA8000000 (128MB ethosu_region)
                              │                       │ DDR planned @ 0xA8200000
```

The firmware loads a `.pte` model from DDR, delegates computation to the Ethos-U65 NPU, and reports results via the remoteproc trace buffer (`trace0`).

---

## Prerequisites

- **MCUXpresso SDK** for i.MX93 EVK (install via MCUXpresso for VS Code extension or [mcuxpresso.nxp.com](https://mcuxpresso.nxp.com))
- **Arm GNU Toolchain** (install via MCUXpresso Installer — select "Arm GNU Toolchain (Latest)")
- **CMake** 3.22.0+
- **Ninja** build system
- **i.MX93 FRDM** running Linux with remoteproc support and Ethos-U kernel driver bound

---

## Quick Start

### 1. Set Environment Variables

Find your installed toolchain directory name:

```bash
# Linux/macOS
ls ~/.mcuxpressotools/arm-gnu-toolchain-*

# Windows (PowerShell)
dir $env:USERPROFILE\.mcuxpressotools\arm-gnu-toolchain-*
```

Use the directory name from the output below (version number may differ).

| Variable | Description |
|----------|-------------|
| `ARMGCC_DIR` | Path to the Arm GCC toolchain directory found above |
| `SdkRootDirPath` | Path to the folder **containing** the `mcuxsdk/` subdirectory |
| `MCUX_VENV_PATH` | Path to the MCUXpresso Python venv executables |

<details>
<summary><b>macOS (Zsh)</b></summary>

```bash
# Add to ~/.zshrc — replace <toolchain-dir> with the directory name found above
export ARMGCC_DIR="$HOME/.mcuxpressotools/<toolchain-dir>"
export SdkRootDirPath="$HOME/mcuxsdk_root"
export MCUX_VENV_PATH="$HOME/.mcuxpressotools/.venv/bin"

source ~/.zshrc
```
</details>

<details>
<summary><b>Linux (Bash)</b></summary>

```bash
# Add to ~/.bashrc — replace <toolchain-dir> with the directory name found above
export ARMGCC_DIR="$HOME/.mcuxpressotools/<toolchain-dir>"
export SdkRootDirPath="$HOME/mcuxsdk_root"
export MCUX_VENV_PATH="$HOME/.mcuxpressotools/.venv/bin"

source ~/.bashrc
```
</details>

<details>
<summary><b>Windows (PowerShell)</b></summary>

```powershell
# Replace <toolchain-dir> with the directory name found above
[Environment]::SetEnvironmentVariable("ARMGCC_DIR", "$env:USERPROFILE\.mcuxpressotools\<toolchain-dir>", "User")
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

### 4. Load Model to DDR

The firmware reads a `.pte` model from DDR address `0xC0000000`. The model must be compiled with the Ethos-U65 delegate (see [the learning path](https://github.com/fidel-makatia/arm-learning-paths) for compilation instructions).

**Option A — From Linux via `/dev/mem` (no reboot required):**

Copy the `.pte` file to the board and write it to DDR:

```bash
scp mobilenetv2_u65.pte root@<board-ip>:/tmp/

# On the board
python3 -c "
import mmap, os
pte = open('/tmp/mobilenetv2_u65.pte', 'rb').read()
fd = os.open('/dev/mem', os.O_RDWR | os.O_SYNC)
m = mmap.mmap(fd, len(pte), mmap.MAP_SHARED, mmap.PROT_WRITE, offset=0xC0000000)
m.write(pte)
m.close()
os.close(fd)
print(f'Wrote {len(pte)} bytes to 0xC0000000')
"
```

**Option B — Via U-Boot (requires reboot):**

Copy the `.pte` file to the first partition of the SD card, then load it in U-Boot before booting Linux:

```
u-boot=> fatload mmc 0:1 0xc0000000 mobilenetv2_u65.pte
u-boot=> boot
```

### 5. Deploy and Run

```bash
# Copy firmware to board
scp debug/executorch_runner_cm33.elf root@<board-ip>:/lib/firmware/

# On the board (or via SSH)
echo stop > /sys/class/remoteproc/remoteproc0/state 2>/dev/null
echo executorch_runner_cm33.elf > /sys/class/remoteproc/remoteproc0/firmware
echo start > /sys/class/remoteproc/remoteproc0/state
sleep 15
cat /sys/kernel/debug/remoteproc/remoteproc0/trace0
```

Expected output (MobileNet V2):
```
NPU config match
NPU arch match
cmd_end_reached 0x1
bus_status_error 0x0
1 inferences finished
Output[0]: dtype=6, numel=1000, nbytes=4000
    [0]=0 (float raw)
    [1]=1058744595 (float raw)
    ...
Program complete, exiting.
```

The model outputs 1000 values — one score per ImageNet class. With random input, the scores are arbitrary. To get meaningful predictions, feed a real 224x224 RGB image.

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

The i.MX93 device tree reserves two DDR regions for the Ethos-U subsystem:

| Region | Address | Size | Contents |
|--------|---------|------|----------|
| ITCM (m_text) | 0x0FFE0000 | 128KB | Code + rodata |
| DTCM (m_data) | 0x20003000 | 108KB | Data, BSS, heap, stack |
| DDR (model) | 0xC0000000 | 4MB | `.pte` model file (reserved via `model@c0000000`) |
| DDR (scratch) | 0xA8000000 | 2MB | NPU scratch buffer (inside `ethosu_region@A8000000`) |
| DDR (planned) | 0xA8200000 | 32MB | Activation tensors for large models (inside `ethosu_region@A8000000`) |
| DDR (ethosu_region) | 0xA8000000 | 128MB | Total Ethos-U working memory reserved via device tree |

Small models (e.g., a simple add model) allocate planned buffers in DTCM. Large models like MobileNet V2 (which needs 752KB of planned buffers) automatically use the DDR ethosu_region instead.

### Build Size

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

The NXP BSP for the FRDM-IMX93 reserves two DDR regions by default:

```dts
reserved-memory {
    model@c0000000 {
        reg = <0 0xc0000000 0 0x400000>;   /* 4MB for .pte model */
        no-map;
    };
    ethosu_region@A8000000 {
        reg = <0 0xa8000000 0 0x8000000>;  /* 128MB for NPU working memory */
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
| NPU bus error (`bus_status_error 0x1`) | Scratch buffer in DTCM (not AXI-accessible by NPU) | Already fixed — scratch mapped to DDR `0xA8000000` |
| Memory allocation failed for planned buffer | Model activations too large for DTCM | Already fixed — large models auto-use DDR `0xA8200000` |
| NPU errors invisible in `trace0` | Driver logs go to UART only | Run `./patches/apply_patches.sh` |
| Log shows literal "zu" instead of numbers | nano printf doesn't support `%zu` | Already fixed — uses `%lu` with `(unsigned long)` cast |
| Firmware hangs at NPU init | Linux ethosu driver not loaded | Ensure `/dev/ethosu0` exists |
| `trace0` output truncated | 3KB trace buffer filled | Trace resets before each inference run |
| remoteproc fails to start | Stale state | Run `echo stop > .../state` first, wait 2s, then start |

---

## Architecture Details

### Key Design Decisions

1. **NPU working memory in ethosu_region** — The Ethos-U65 accesses memory via the AXI bus. CM33 DTCM (0x20003000) is tightly-coupled and not AXI-accessible. The scratch buffer and large planned buffers are placed in the 128MB `ethosu_region@A8000000` reserved by the device tree.

2. **Automatic DTCM/DDR planned buffer placement** — Small models (activations < 12KB) allocate planned buffers from the DTCM method allocator. Large models like MobileNet V2 (752KB planned buffers) automatically use DDR. No configuration change is needed when switching between models.

3. **Selective operator registration** — Only `quantize_per_tensor.out` and `dequantize_per_tensor.out` are registered. These are the CPU ops at the NPU delegation boundary. Full registration overflows ITCM.

4. **Trace buffer for all output** — All inference results, NPU driver messages, and diagnostics go to the 3KB remoteproc trace buffer, readable from Linux via `cat /sys/kernel/debug/remoteproc/remoteproc0/trace0`.

---

## Project Structure

```
Executorch_runner_cm33/
├── CMakeLists.txt              # Build configuration
├── CMakePresets.json            # CMake presets (debug/release)
├── mcux_include.json            # Environment variable bindings
├── source/
│   ├── arm_executor_runner.cpp  # Main firmware (inference loop, memory management)
│   ├── arm_memory_allocator.cpp # Memory allocator
│   ├── rsc_table.c              # Remoteproc resource table
│   └── *.h                      # Headers
├── executorch/
│   ├── include/                 # ExecuTorch headers
│   └── lib/                     # Pre-built static libraries for Cortex-M33
├── patches/
│   ├── apply_patches.sh         # One-time SDK patch script
│   └── ethosu_log.h             # Patched Ethos-U driver log header
└── debug/                       # Build output (generated)
```

---

## Author

**Fidel Makatia**

---

*Last updated: March 2026*
