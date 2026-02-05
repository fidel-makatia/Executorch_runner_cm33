/*
 * Copyright 2022 NXP
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Self-contained resource table for i.MX93 CM33 remoteproc.
 * Provides a trace buffer (for PRINTF output visible from Linux)
 * and one RPMsg VirtIO device entry.
 */

#include <string.h>
#include "rsc_table.h"

/* Trace buffer — M33 output goes here, Linux reads it via:
 *   cat /sys/kernel/debug/remoteproc/remoteproc0/trace0           */
char rsc_trace_buf[RSC_TRACE_BUF_SIZE] __attribute__((section(".bss")));

/*
 * The resource table itself — placed in .resource_table so the ELF
 * loader (remoteproc) can find it.  The linker script already has:
 *   .resource_table : { KEEP(*(.resource_table)) } > m_text
 */
__attribute__((section(".resource_table"), used))
const struct remote_resource_table resources = {
    /* version */
    .version = 1,
    /* number of entries */
    .num     = NO_RESOURCE_ENTRIES,
    .reserved = {0, 0},

    /* offsets to each entry */
    .offset = {
        offsetof(struct remote_resource_table, trace),
        offsetof(struct remote_resource_table, rpmsg_vdev),
    },

    /* ---- Entry 0: trace buffer ---- */
    .trace = {
        .type     = RSC_TRACE,
        .da       = 0,  /* patched at runtime by copyResourceTable() */
        .len      = RSC_TRACE_BUF_SIZE,
        .reserved = 0,
        .name     = "cm33_log",
    },

    /* ---- Entry 1: RPMsg VirtIO device ---- */
    .rpmsg_vdev = {
        .type          = RSC_VDEV,
        .id            = VIRTIO_ID_RPMSG,
        .notifyid      = 0,
        .dfeatures     = (1U << VIRTIO_RPMSG_F_NS),
        .gfeatures     = 0,
        .config_len    = 0,
        .status        = 0,
        .num_of_vrings = 2,
        .reserved      = {0, 0},
    },
    .rpmsg_vring0 = {
        .da       = 0xFFFFFFFF, /* FW_RSC_ADDR_ANY — let Linux allocate */
        .align    = 16,
        .num      = 8,
        .notifyid = 0,
        .reserved = 0,
    },
    .rpmsg_vring1 = {
        .da       = 0xFFFFFFFF,
        .align    = 16,
        .num      = 8,
        .notifyid = 1,
        .reserved = 0,
    },
};

void copyResourceTable(void)
{
    /*
     * Patch the trace buffer address so Linux knows where to read it.
     * We cast away const because the table in .resource_table (flash)
     * is copied into the writable m_rsc_tbl SRAM region below.
     */
    struct remote_resource_table *tbl =
        (struct remote_resource_table *)RESOURCE_TABLE_START;

    /* Clear TCM-ECC region then copy the table */
    memset((void *)RESOURCE_TABLE_START, 0, RESOURCE_TABLE_SIZE);
    memcpy((void *)RESOURCE_TABLE_START, &resources, sizeof(resources));

    /* Now patch the runtime trace-buffer address in the SRAM copy */
    tbl->trace.da = (uint32_t)(uintptr_t)rsc_trace_buf;
}
