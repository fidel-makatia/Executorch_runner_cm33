/*
 * Copyright 2022 NXP
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Self-contained resource table for i.MX93 CM33 remoteproc.
 * Provides a trace buffer (for PRINTF output visible from Linux).
 *
 * Trace-only: the RPMsg VirtIO device entry has been removed to avoid
 * imx_rproc_kick timeout errors (-ETIME) when the firmware does not
 * implement virtio/RPMsg handling.
 *
 * The trace buffer da (device address) is set at compile time so that
 * Linux remoteproc can translate it when parsing the ELF — before
 * main() runs.  The buffer is at TRACE_BUFFER_ADDR (0xa4020000) in
 * the vdevbuffer reserved memory region from the device tree.
 */

#include <string.h>
#include "rsc_table.h"

/*
 * Trace buffer — M33 output goes here, Linux reads it via:
 *   cat /sys/kernel/debug/remoteproc/remoteproc0/trace0
 *
 * Points to the vdevbuffer reserved memory region (0xa4020000) from
 * the device tree.  Both M33 and Linux can access DDR at this address.
 */
char *const rsc_trace_buf = (char *)TRACE_BUFFER_ADDR;

/*
 * The resource table itself — placed in .resource_table so the ELF
 * loader (remoteproc) can find it.  The linker script already has:
 *   .resource_table : { KEEP(*(.resource_table)) } > m_text
 *
 * IMPORTANT: da must be a valid, non-zero M33 address at link time.
 * Linux parses this table from the ELF *before* the M33 boots, so
 * runtime patching (the old copyResourceTable approach) is too late.
 */
__attribute__((section(".resource_table"), used))
const struct remote_resource_table resources = {
    .version = 1,
    .num     = NO_RESOURCE_ENTRIES,
    .reserved = {0, 0},

    .offset = {
        offsetof(struct remote_resource_table, trace),
    },

    /* ---- Entry 0: trace buffer ---- */
    .trace = {
        .type     = RSC_TRACE,
        .da       = TRACE_BUFFER_ADDR,
        .len      = RSC_TRACE_BUF_SIZE,
        .reserved = 0,
        .name     = "cm33_log",
    },
};

void copyResourceTable(void)
{
    /*
     * Copy the resource table into the m_rsc_tbl SRAM region.
     * Only clear the resource table area (not the whole 4KB region)
     * to avoid clobbering the trace buffer at TRACE_BUFFER_ADDR which
     * shares the m_rsc_tbl region.
     */
    memset((void *)RESOURCE_TABLE_START, 0, sizeof(resources));
    memcpy((void *)RESOURCE_TABLE_START, &resources, sizeof(resources));
}
