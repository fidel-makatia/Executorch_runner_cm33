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
 * main() runs.  The buffer is in DTCM (m_rsc_tbl region) at offset
 * 0x200, which imx_rproc can translate via its DTCM mapping.
 */

#include <string.h>
#include "rsc_table.h"

/*
 * Trace buffer — M33 output goes here, Linux reads it via:
 *   cat /sys/kernel/debug/remoteproc/remoteproc0/trace0
 *
 * Points to DTCM at TRACE_BUFFER_ADDR (0x2001E200), inside the
 * m_rsc_tbl region after the resource table copy.  DTCM addresses
 * are in the imx_rproc translation table so Linux can map them.
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
     * to avoid clobbering the trace buffer which shares this region.
     */
    memset((void *)RESOURCE_TABLE_START, 0, sizeof(resources));
    memcpy((void *)RESOURCE_TABLE_START, &resources, sizeof(resources));

    /* Zero-initialize the trace buffer area */
    memset((void *)TRACE_BUFFER_ADDR, 0, RSC_TRACE_BUF_SIZE);
}
