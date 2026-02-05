/*
 * Copyright 2022 NXP
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Self-contained resource table header for remoteproc on i.MX93 CM33.
 * No dependency on rpmsg_lite or libmetal — just enough for Linux to
 * find the resource table in the ELF and set up a trace buffer.
 */

#ifndef RSC_TABLE_H_
#define RSC_TABLE_H_

#include <stdint.h>
#include <stddef.h>

#if defined __cplusplus
extern "C" {
#endif

/* Must match the m_rsc_tbl region in the linker script */
#define RESOURCE_TABLE_START 0x2001E000U
#define RESOURCE_TABLE_SIZE  0x1000U

/* Number of top-level resource entries */
#define NO_RESOURCE_ENTRIES 2

/* Trace buffer size (2 KB) */
#define RSC_TRACE_BUF_SIZE 0x800

/* Resource types (from remoteproc spec) */
#define RSC_CARVEOUT 0
#define RSC_DEVMEM   1
#define RSC_TRACE    2
#define RSC_VDEV     3

/* VirtIO RPMsg feature flags */
#define VIRTIO_ID_RPMSG    7
#define VIRTIO_RPMSG_F_NS  0   /* name-service announcement */

/* ---- Struct definitions matching the remoteproc resource format ---- */

struct fw_rsc_trace {
    uint32_t type;
    uint32_t da;       /* device (M33) address of the trace buffer */
    uint32_t len;
    uint32_t reserved;
    uint8_t  name[32];
};

struct fw_rsc_vdev_vring {
    uint32_t da;       /* 0xFFFFFFFF = let host allocate */
    uint32_t align;
    uint32_t num;      /* number of buffers */
    uint32_t notifyid;
    uint32_t reserved;
};

struct fw_rsc_vdev {
    uint32_t type;
    uint32_t id;
    uint32_t notifyid;
    uint32_t dfeatures;
    uint32_t gfeatures;
    uint32_t config_len;
    uint8_t  status;
    uint8_t  num_of_vrings;
    uint8_t  reserved[2];
};

/* Top-level table that remoteproc parses from the .resource_table section */
struct remote_resource_table {
    uint32_t version;
    uint32_t num;
    uint32_t reserved[2];
    uint32_t offset[NO_RESOURCE_ENTRIES];

    /* Entry 0 — trace buffer */
    struct fw_rsc_trace trace;

    /* Entry 1 — RPMsg VirtIO device */
    struct fw_rsc_vdev  rpmsg_vdev;
    struct fw_rsc_vdev_vring rpmsg_vring0;
    struct fw_rsc_vdev_vring rpmsg_vring1;
};

/*
 * Copy the resource table from .resource_table (in m_text) to the
 * m_rsc_tbl region in SRAM so Linux can find it for early-boot cases.
 */
void copyResourceTable(void);

/* Trace buffer — readable from Linux via debugfs */
extern char rsc_trace_buf[];

#if defined __cplusplus
}
#endif

#endif /* RSC_TABLE_H_ */
