# ExecuTorch Runner CM33 - MCUXpresso Setup Guide

This guide documents how to set up, build, and deploy the ExecuTorch Runner project for the i.MX93 Cortex-M33 using VS Code with the MCUXpresso extension.

> **Cross-Platform Support**: This project works on Windows, Linux, and macOS. Paths are resolved through environment variables, so you can clone the project anywhere on your filesystem.

---

## Table of Contents

- [Prerequisites](#prerequisites)
- [Step 1: Set Environment Variables](#step-1-set-environment-variables)
- [Step 2: Clone the Repository](#step-2-clone-the-repository)
- [Step 3: Open in VS Code](#step-3-open-in-vs-code)
- [Step 4: Configure and Build](#step-4-configure-and-build)
- [Command Line Build](#command-line-build)
- [Deployment to i.MX93](#deployment-to-imx93)
- [Troubleshooting](#troubleshooting)

---

## Prerequisites

- **VS Code** with the [MCUXpresso for VS Code](https://marketplace.visualstudio.com/items?itemName=nxpsemiconductors.mcuxpresso) extension installed
- **MCUXpresso SDK 25.9.0** for i.MX93 EVK (install via the MCUXpresso extension)
- **ARM GCC Toolchain 14.2.rel1** (install via the MCUXpresso extension)
- **Git**
- **CMake** 3.22.0 or later
- **Ninja** build system

---

## Step 1: Set Environment Variables

The build system reads three environment variables to locate your toolchain and SDK. Set these **once** for your user account so every project picks them up automatically.

### Required Variables

| Variable | Description | Example Value |
|----------|-------------|---------------|
| `ARMGCC_DIR` | Path to the ARM GCC toolchain root | See platform table below |
| `SdkRootDirPath` | Path to the folder **containing** the `mcuxsdk/` subdirectory | See platform table below |
| `MCUX_VENV_PATH` | Path to the MCUXpresso Python venv executables | See platform table below |

### Toolchain Directory Names by Platform

| Platform | Toolchain Directory Name |
|----------|-------------------------|
| Windows | `arm-gnu-toolchain-14.2.rel1-mingw-w64-x86_64-arm-none-eabi` |
| Linux (x86_64) | `arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi` |
| macOS (Apple Silicon) | `arm-gnu-toolchain-14.2.rel1-darwin-arm64-arm-none-eabi` |
| macOS (Intel) | `arm-gnu-toolchain-14.2.rel1-darwin-x86_64-arm-none-eabi` |

### Windows (PowerShell - persistent for current user)

```powershell
# Set ARMGCC_DIR (adjust the path if you installed the toolchain elsewhere)
[Environment]::SetEnvironmentVariable("ARMGCC_DIR", "$env:USERPROFILE\.mcuxpressotools\arm-gnu-toolchain-14.2.rel1-mingw-w64-x86_64-arm-none-eabi", "User")

# Set SdkRootDirPath (the folder that contains the mcuxsdk/ subdirectory)
[Environment]::SetEnvironmentVariable("SdkRootDirPath", "$env:USERPROFILE\mcuxsdk_root", "User")

# Set MCUX_VENV_PATH (adjust if your venv has a different name, e.g. .venv_3_11)
[Environment]::SetEnvironmentVariable("MCUX_VENV_PATH", "$env:USERPROFILE\.mcuxpressotools\.venv\Scripts", "User")
```

> **Note**: Restart VS Code (or your terminal) after setting environment variables so they take effect.

### Linux (Bash - add to `~/.bashrc` or `~/.profile`)

```bash
# Add these lines to ~/.bashrc (or ~/.profile)
export ARMGCC_DIR="$HOME/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi"
export SdkRootDirPath="$HOME/mcuxsdk_root"  # folder that contains mcuxsdk/
export MCUX_VENV_PATH="$HOME/.mcuxpressotools/.venv/bin"
```

Then reload:

```bash
source ~/.bashrc
```

### macOS (Zsh - add to `~/.zshrc`)

```bash
# Add these lines to ~/.zshrc
# For Apple Silicon:
export ARMGCC_DIR="$HOME/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-darwin-arm64-arm-none-eabi"
# For Intel Mac:
# export ARMGCC_DIR="$HOME/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-darwin-x86_64-arm-none-eabi"

export SdkRootDirPath="$HOME/mcuxsdk_root"  # folder that contains mcuxsdk/
export MCUX_VENV_PATH="$HOME/.mcuxpressotools/.venv/bin"
```

Then reload:

```bash
source ~/.zshrc
```

---

## Step 2: Clone the Repository

Clone the project **anywhere** on your filesystem:

```bash
git clone https://github.com/fidel-makatia/Executorch_runner_cm33.git
cd Executorch_runner_cm33
```

> **Note**: `mcux_include.json` reads all paths from your environment variables (`$penv{...}`).
> There are no hardcoded paths to edit. As long as Step 1 is done correctly, `cmake --preset debug` will work out of the box.

---

## Step 3: Open in VS Code

```bash
code Executorch_runner_cm33
```

---

## Step 4: Configure and Build

### In VS Code:

1. **Select CMake Configure Preset**
   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (macOS)
   - Type: `CMake: Select Configure Preset`
   - Choose: **debug** or **release**

2. **Configure the Project**
   - Press `Ctrl+Shift+P` / `Cmd+Shift+P`
   - Type: `CMake: Configure`
   - Wait for configuration to complete

3. **Build the Project**
   - Press `Ctrl+Shift+P` / `Cmd+Shift+P`
   - Type: `CMake: Build`
   - Or press `F7`

### Build Output

| File | Description |
|------|-------------|
| `debug/executorch_runner_cm33.elf` | ELF executable for debugging |
| `debug/executorch_runner_cm33.bin` | Binary file for flashing |

---

## Command Line Build

After setting the environment variables (Step 1), you can build from any terminal.

### Sanity Checks (run before your first build)

Verify that your environment is set up correctly:

```bash
# Toolchain is installed and executable
test -x "$ARMGCC_DIR/bin/arm-none-eabi-gcc" && echo "OK: toolchain" || echo "FAIL: ARMGCC_DIR"

# SDK root contains the mcuxsdk/ subdirectory
test -d "$SdkRootDirPath/mcuxsdk" && echo "OK: SDK" || echo "FAIL: SdkRootDirPath"

# Ninja is available
command -v ninja >/dev/null && echo "OK: ninja" || echo "FAIL: ninja not found"
```

If any check prints `FAIL`, fix the corresponding environment variable or install the missing tool before proceeding.

### Build

```bash
cd Executorch_runner_cm33

# Configure
cmake --preset debug

# Build
cmake --build debug
```

> **Important**: If the configure step (`cmake --preset debug`) fails, **stop and fix the
> reported errors first**. When configure fails no `build.ninja` is generated, so the
> subsequent build step will produce misleading errors (e.g. "permission denied" or
> "command was: all"). Those build errors are not the real problem -- the configure
> output above them is.

---

## Deployment to i.MX93

### Transfer ELF to Target

```bash
scp debug/executorch_runner_cm33.elf root@<target-ip>:/lib/firmware/
```

### Load via RemoteProc

```bash
# On i.MX93 Linux terminal
echo executorch_runner_cm33.elf > /sys/class/remoteproc/remoteproc0/firmware
echo start > /sys/class/remoteproc/remoteproc0/state
```

### Verify Loading

```bash
dmesg | grep remoteproc
```

Expected output:

```
remoteproc remoteproc0: powering up imx-rproc
remoteproc remoteproc0: Booting fw image executorch_runner_cm33.elf
remoteproc remoteproc0: remote processor imx-rproc is now up
```

---

## Troubleshooting

### Common Issues

| Issue | Solution |
|-------|----------|
| `ARMGCC_DIR` not found | Verify the environment variable is set: `echo $ARMGCC_DIR` (Linux/macOS) or `echo %ARMGCC_DIR%` (Windows) |
| `SdkRootDirPath` not found | Verify the variable is set and that `$SdkRootDirPath/mcuxsdk` exists |
| CMake configuration fails | Restart VS Code after setting environment variables |
| Toolchain not found | Confirm the ARM GCC toolchain directory exists at the path in `ARMGCC_DIR` |
| SDK not found | Confirm `SdkRootDirPath` points to the folder containing the `mcuxsdk` subdirectory |
| Build says "permission denied" or "command was: all" | Configure failed -- no `build.ninja` was generated. Fix the configure errors first, then re-run the build |
| IntelliSense uses wrong compiler | Select the correct configuration (Windows/Linux/macOS) in the C/C++ extension status bar |
| Permission denied (Linux/macOS) | Run `chmod +x` on toolchain binaries |
| Python/west not found | Verify `MCUX_VENV_PATH` points to your venv's `Scripts` (Windows) or `bin` (Linux/macOS) directory |

### Verify Your Setup

**Windows (PowerShell):**

```powershell
Test-Path $env:ARMGCC_DIR
Test-Path "$env:SdkRootDirPath\mcuxsdk"
```

**Linux/macOS (Bash):**

```bash
ls "$ARMGCC_DIR/bin/arm-none-eabi-gcc"
ls "$SdkRootDirPath/mcuxsdk"
```

---

## Project Configuration Summary

| Setting | Value |
|---------|-------|
| **Board** | mcimx93evk |
| **Device** | MIMX9352xxxxM |
| **Core** | Cortex-M33 (cm33) |
| **SDK Version** | 25.9.0 |
| **Toolchain** | ARM GCC 14.2.rel1 |
| **C++ Standard** | C++17 |
| **Project Type** | sdk-v2-repository |

---

## Memory Usage (Example Build)

```
Memory region         Used Size  Region Size  %age Used
m_interrupts:            1140 B        1144 B     99.65%
m_text:                 51776 B      129928 B     39.85%
m_data:                 51480 B        108 KB     46.55%
```

---

## Author

**Fidel Makatia**

---

*Last updated: February 5, 2026*
