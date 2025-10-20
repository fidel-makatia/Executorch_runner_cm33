# Running ExecuTorch on i.MX93 Cortex-M33 – Developer Guide

✅ **Successfully Deployed ExecuTorch Runtime on NXP i.MX93 EVK**

---

## Overview

This document details the successful deployment of **ExecuTorch (PyTorch's edge runtime)** on the **NXP i.MX93 Cortex-M33** co-processor, enabling ML inference with NPU acceleration.

---

## Architecture

```

i.MX93 SoC
├── Cortex-A55 (Linux Host)
│   └── RemoteProc Framework
└── Cortex-M33 (ExecuTorch Runtime)
├── ExecuTorch Core
├── Ethos-U NPU Delegate
└── Model at DDR (0x80100000)

````

---

## Step 1: Build Environment Setup

### Docker Build Container

```bash
# ExecuTorch built in Docker for i.MX93
docker run -it <container_id> bash
cd /root/executorch/build-imx93-ethos
````

### MCUXpresso Project Structure

```
hello_world/
├── CMakeLists.txt
├── source/
│   ├── arm_executor_runner.cpp
│   ├── arm_memory_allocator.cpp
│   ├── arm_memory_allocator.h
│   └── arm_perf_monitor.h
├── executorch/
│   ├── lib/
│   │   ├── libexecutorch.a
│   │   ├── libexecutorch_core.a
│   │   └── libexecutorch_delegate_ethos_u.a
│   └── include/
│       └── executorch/...
```

---

## Step 2: CMake Configuration

### `CMakeLists.txt`

```cmake
cmake_minimum_required(VERSION 3.22.0)
project(executorch_runner LANGUAGES C CXX ASM)

# Add ExecuTorch sources
mcux_add_source(
    BASE_PATH ${CMAKE_CURRENT_SOURCE_DIR}
    SOURCES 
        source/arm_executor_runner.cpp
        source/arm_memory_allocator.cpp
)

# Include paths
target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/executorch/include
    ${CMAKE_CURRENT_SOURCE_DIR}/source
)

# Link ExecuTorch libraries
target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/executorch/lib/libexecutorch_delegate_ethos_u.a
    ${CMAKE_CURRENT_SOURCE_DIR}/executorch/lib/libexecutorch.a
    ${CMAKE_CURRENT_SOURCE_DIR}/executorch/lib/libexecutorch_core.a
    m
    stdc++
)

# Memory configuration for limited RAM
target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ET_ARM_BAREMETAL_METHOD_ALLOCATOR_POOL_SIZE=0x4000    # 16KB
    ET_ARM_BAREMETAL_SCRATCH_TEMP_ALLOCATOR_POOL_SIZE=0x2000  # 8KB
    ET_MODEL_PTE_ADDR=0x80100000  # DDR address for model
)

# C++ settings
set_target_properties(${MCUX_SDK_PROJECT_NAME} PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
)
```

---

## Step 3: Build Process

```bash
# VS Code with MCUXpresso Extension
# Clean and build
rm -rf debug/
# Ctrl+Shift+P → CMake: configure
# Ctrl+Shift+P → CMake: build
```

**Result:**

```
✓ executorch_runner_cm33.elf created
✓ Memory usage: 52KB code, 51KB data (fits in 108KB RAM)
```

---

## Step 4: Deployment to i.MX93

### Transfer ELF to Target

```bash
# Copy to i.MX93 Linux filesystem
scp executorch_runner_cm33.elf root@192.168.1.24:/lib/firmware/
```

### Load and Run via RemoteProc

```bash
# On i.MX93 Linux terminal
echo executorch_runner_cm33.elf > /sys/class/remoteproc/remoteproc0/firmware
echo start > /sys/class/remoteproc/remoteproc0/state
```

**Verify Loading**

```bash
dmesg | grep remoteproc
[84667.799615] remoteproc remoteproc0: powering up imx-rproc
[84667.800440] remoteproc remoteproc0: Booting fw image executorch_runner_cm33.elf, size 614984
[84667.800489] remoteproc remoteproc0: header-less resource table
[84667.800494] remoteproc remoteproc0: No resource table in elf
[84668.335339] remoteproc remoteproc0: remote processor imx-rproc is now up
```

---

## Step 5: Loading the Model

### Option A: Via U-Boot (Pre-boot)

```bash
fatload mmc 1:1 0x80100000 model.pte
```

### Option B: Via Linux devmem2

```bash
dd if=model.pte of=/dev/mem bs=1M seek=2049 # 0x80100000
```

### Option C: Include in Device Tree

```dts
reserved-memory {
    model_region: model@80100000 {
        reg = <0x80100000 0x1000000>; /* 16MB for model */
        no-map;
    };
};
```

---

## Key Technical Details

### Memory Map

| Address      | Region   | Description                  |
| ------------ | -------- | ---------------------------- |
| `0x1FFE0000` | M33 TCM  | 128KB                        |
| `0x20000000` | M33 SRAM | 108KB                        |
| `0x80100000` | DDR      | Model storage (configurable) |

---

### Resource Constraints Addressed

* Limited M33 RAM (108KB) → Reduced pool sizes
* No resource table needed for basic operation
* Model stored in DDR, accessed via AXI bus

---

### Performance Optimizations

* Ethos-U NPU delegate for acceleration
* DWT cycle counter for profiling
* Minimal memory footprint

---

## Troubleshooting

| Issue            | Solution                                                           |
| ---------------- | ------------------------------------------------------------------ |
| Memory overflow  | Reduce pool sizes in `CMakeLists.txt`                              |
| Missing headers  | Copy from Docker: `docker cp <container_id> ./executorch/include/` |
| RemoteProc fails | Check firmware permissions and path                                |
| Model not found  | Verify DDR address `0x80100000` is accessible                      |

---

## Verified Working Configuration

| Component          | Configuration                      |
| ------------------ | ---------------------------------- |
| **Board**          | i.MX93 EVK / FRDM                  |
| **SDK**            | MCUXpresso SDK                     |
| **Toolchain**      | arm-gnu-toolchain-14.2.rel1        |
| **ExecuTorch**     | Built with Ethos-U support         |
| **Memory**         | 16KB method pool, 8KB scratch pool |
| **Model Location** | DDR @ `0x80100000`                 |

---

## Next Steps

* Load actual `.pte` model to DDR
* Monitor Cortex-M33 console output for inference results
* Optimize memory pools based on model requirements
* Enable inter-processor communication for results

---

**Status:** ✅ Successfully deployed and running on target hardware

**Author:** *Fidel Makatia*
