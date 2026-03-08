#!/bin/bash
# apply_patches.sh - Apply required SDK patches for ExecuTorch Ethos-U65 runner
#
# Usage: ./patches/apply_patches.sh
#
# This script patches two files in your MCUXpresso SDK:
#   1. Linker script  - Adds GOT section initialization (prevents BUS FAULT)
#   2. ethosu_log.h   - Redirects NPU driver logs to remoteproc trace buffer
#
# Both patches are required. Without them, the firmware will crash or
# NPU errors will be invisible.

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

# Resolve SdkRootDirPath
if [ -z "$SdkRootDirPath" ]; then
    echo "ERROR: SdkRootDirPath environment variable is not set."
    echo "Set it to the path containing the mcuxsdk/ subdirectory."
    echo "  export SdkRootDirPath=\$HOME/mcuxsdk_root"
    exit 1
fi

# The CMake build uses $SdkRootDirPath/mcuxsdk as the actual SDK root
SDK="$SdkRootDirPath/mcuxsdk"
if [ ! -d "$SDK" ]; then
    echo "ERROR: SDK not found at $SDK"
    echo "Make sure SdkRootDirPath points to the folder containing mcuxsdk/"
    exit 1
fi

LINKER_SCRIPT="$SDK/devices/i.MX/i.MX93/MIMX9352/gcc/MIMX9352xxxxM_ram.ld"
ETHOSU_LOG="$SDK/middleware/eiq/ethos-u-core-software/core_driver/src/ethosu_log.h"

echo "=== ExecuTorch Runner SDK Patches ==="
echo ""

# --- Patch 1: Linker script GOT fix ---
echo "[1/2] Linker script GOT fix: $LINKER_SCRIPT"

if [ ! -f "$LINKER_SCRIPT" ]; then
    echo "  ERROR: Linker script not found. Check your SDK installation."
    exit 1
fi

if grep -q '^\s*\*(.got)' "$LINKER_SCRIPT"; then
    echo "  SKIP: GOT fix already applied."
else
    # Backup original
    cp "$LINKER_SCRIPT" "${LINKER_SCRIPT}.bak"
    echo "  Backup: ${LINKER_SCRIPT}.bak"

    # Insert *(.got) and *(.got.plt) after KEEP(*(.jcr*)) inside .data section
    sed -i.tmp '/KEEP(\*(.jcr\*))/a\
    /* GOT must be inside .data so startup code copies it from ROM to RAM */\
    *(.got)\
    *(.got.plt)' "$LINKER_SCRIPT"
    rm -f "${LINKER_SCRIPT}.tmp"

    echo "  APPLIED: Added *(.got) and *(.got.plt) inside .data section."
    echo "  Without this fix, GOT entries are never initialized -> vtable corruption -> BUS FAULT."
fi

echo ""

# --- Patch 2: ethosu_log.h trace buffer redirect ---
echo "[2/2] Ethos-U driver log redirect: $ETHOSU_LOG"

if [ ! -f "$ETHOSU_LOG" ]; then
    echo "  ERROR: ethosu_log.h not found. Check your SDK installation."
    exit 1
fi

if grep -q 'ethosu_trace_log' "$ETHOSU_LOG"; then
    echo "  SKIP: Trace log redirect already applied."
else
    # Backup original
    cp "$ETHOSU_LOG" "${ETHOSU_LOG}.bak"
    echo "  Backup: ${ETHOSU_LOG}.bak"

    # Replace with our patched version
    cp "$SCRIPT_DIR/ethosu_log.h" "$ETHOSU_LOG"

    echo "  APPLIED: LOG_ERR/LOG_WARN/LOG_INFO/LOG_DEBUG now write to remoteproc trace buffer."
    echo "  Without this fix, NPU driver errors are only on UART, invisible via 'cat trace0'."
fi

echo ""
echo "=== All patches applied successfully ==="
echo ""
echo "You can now build:"
echo "  cmake --preset debug && cmake --build debug"
