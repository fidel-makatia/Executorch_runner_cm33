# ExecuTorch Runner CM33 - MCUXpresso Setup Guide

This guide documents how to import and configure the ExecuTorch Runner project for the i.MX93 Cortex-M33 in VS Code with MCUXpresso extension.

> **Cross-Platform Support**: This project is configured to work on Windows, Linux, and macOS with automatic OS detection.

---

## Table of Contents

- [Prerequisites](#prerequisites)
- [Step 1: Clone the Repository](#step-1-clone-the-repository)
- [Step 2: Initial Setup](#step-2-initial-setup)
- [Step 3: Open in VS Code](#step-3-open-in-vs-code)
- [Step 4: Configure and Build](#step-4-configure-and-build)
- [Cross-Platform Configuration Details](#cross-platform-configuration-details)
- [Command Line Build](#command-line-build)
- [Deployment to i.MX93](#deployment-to-imx93)
- [Troubleshooting](#troubleshooting)

---

## Prerequisites

- **VS Code** with MCUXpresso extension installed
- **MCUXpresso SDK** for i.MX93 EVK (installed in `~/mcimx93_evk`)
- **ARM GCC Toolchain** 14.2.rel1 (installed via MCUXpresso tools)
- **Git** installed
- **CMake** 3.22.0 or later
- **Ninja** build system

---

## Step 1: Clone the Repository

### Windows (PowerShell)

```powershell
cd $HOME
git clone https://github.com/fidel-makatia/Executorch_runner_cm33
```

### Linux (Bash)

```bash
cd ~
git clone https://github.com/fidel-makatia/Executorch_runner_cm33
```

### macOS (Bash/Zsh)

```bash
cd ~
git clone https://github.com/fidel-makatia/Executorch_runner_cm33
```

---

## Step 2: Initial Setup

### Create the `prj.conf` file (Required)

The MCUXpresso build system requires a `prj.conf` file in the project root:

**Windows (PowerShell):**
```powershell
cd Executorch_runner_cm33
New-Item -Path "prj.conf" -ItemType File -Force
```

**Linux/macOS (Bash):**
```bash
cd Executorch_runner_cm33
touch prj.conf
```

---

## Step 3: Open in VS Code

### Windows
```powershell
code "$HOME\Executorch_runner_cm33"
```

### Linux/macOS
```bash
code ~/Executorch_runner_cm33
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

## Cross-Platform Configuration Details

The project uses CMake preset conditions to automatically detect your operating system and apply the correct paths.

### Expected Directory Structure

```
~/                                    # User home directory
 .mcuxpressotools/                # MCUXpresso tools
    arm-gnu-toolchain-14.2.rel1-<platform>-arm-none-eabi/
    .venv/                       # Python virtual environment
 mcimx93_evk/                     # SDK root
    mcuxsdk/                     # MCUXpresso SDK
 Executorch_runner_cm33/          # This project
```

### Toolchain Names by Platform

| Platform | Toolchain Directory Name |
|----------|-------------------------|
| Windows | `arm-gnu-toolchain-14.2.rel1-mingw-w64-x86_64-arm-none-eabi` |
| Linux | `arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi` |
| macOS (Apple Silicon) | `arm-gnu-toolchain-14.2.rel1-darwin-arm64-arm-none-eabi` |
| macOS (Intel) | `arm-gnu-toolchain-14.2.rel1-darwin-x86_64-arm-none-eabi` |

### Python venv Path by Platform

| Platform | venv Executables Path |
|----------|----------------------|
| Windows | `.venv/Scripts` |
| Linux/macOS | `.venv/bin` |

---

## Command Line Build

### Windows (PowerShell)

```powershell
cd $HOME\Executorch_runner_cm33

# Set environment variables
$env:ARMGCC_DIR = "$HOME/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-mingw-w64-x86_64-arm-none-eabi"
$env:SdkRootDirPath = "$HOME/mcimx93_evk"
$env:BOARD = "mcimx93evk"

# Clean (optional)
Remove-Item -Recurse -Force debug -ErrorAction SilentlyContinue

# Configure
cmake --preset debug

# Build
cmake --build debug
# Or: cd debug; ninja
```

### Linux (Bash)

```bash
cd ~/Executorch_runner_cm33

# Set environment variables
export ARMGCC_DIR=~/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi
export SdkRootDirPath=~/mcimx93_evk
export BOARD=mcimx93evk

# Clean (optional)
rm -rf debug

# Configure
cmake --preset debug

# Build
cmake --build debug
# Or: cd debug && ninja
```

### macOS (Bash/Zsh)

```bash
cd ~/Executorch_runner_cm33

# Set environment variables (Apple Silicon)
export ARMGCC_DIR=~/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-darwin-arm64-arm-none-eabi
# For Intel Mac, use:
# export ARMGCC_DIR=~/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-darwin-x86_64-arm-none-eabi

export SdkRootDirPath=~/mcimx93_evk
export BOARD=mcimx93evk

# Clean (optional)
rm -rf debug

# Configure
cmake --preset debug

# Build
cmake --build debug
# Or: cd debug && ninja
```

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
| CMake configuration fails | Verify SDK and toolchain paths exist |
| Toolchain not found | Check `ARMGCC_DIR` matches your installed toolchain |
| SDK not found | Verify `SdkRootDirPath` points to the SDK location |
| `prj.conf` missing | Create an empty `prj.conf` in project root |
| IntelliSense uses wrong compiler | Select correct configuration in VS Code (Windows/Linux/macOS) |
| Permission denied (Linux/macOS) | Run `chmod +x` on toolchain binaries |

### Verify Your Setup

**Windows (PowerShell):**
```powershell
# Check toolchain
Test-Path "$HOME\.mcuxpressotools\arm-gnu-toolchain-14.2.rel1-mingw-w64-x86_64-arm-none-eabi"

# Check SDK
Test-Path "$HOME\mcimx93_evk\mcuxsdk"

# Check prj.conf
Test-Path ".\prj.conf"
```

**Linux/macOS (Bash):**
```bash
# Check toolchain
ls ~/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-*

# Check SDK
ls ~/mcimx93_evk/mcuxsdk

# Check prj.conf
ls -la prj.conf
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
m_text:                 51624 B      129928 B     39.73%
m_data:                 51480 B        108 KB     46.55%
```

---

## Files Modified for Cross-Platform Support

The following files contain OS-specific configurations:

1. **`mcux_include.json`** - CMake presets with OS conditions
2. **`.vscode/c_cpp_properties.json`** - IntelliSense configurations for each OS
3. **`.vscode/mcuxpresso-tools.json`** - MCUXpresso project settings
4. **`CMakeLists.txt`** - Compiler flags to suppress warnings

---

## Author

**Fidel Makatia**

---

*Last updated: January 28, 2026*
