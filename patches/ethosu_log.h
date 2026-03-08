/*
 * Copyright (c) 2021 Arm Limited. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the License); you may
 * not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an AS IS BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef ETHOSU_LOG_H
#define ETHOSU_LOG_H

/******************************************************************************
 * Includes
 ******************************************************************************/

#include <stdio.h>
#include <string.h>

#include "fsl_debug_console.h"

/******************************************************************************
 * Defines
 ******************************************************************************/

// Log severity levels
#define ETHOSU_LOG_ERR 0
#define ETHOSU_LOG_WARN 1
#define ETHOSU_LOG_INFO 2
#define ETHOSU_LOG_DEBUG 3

#define ETHOSU_LOG_SEVERITY ETHOSU_LOG_INFO

// Define default log severity
#ifndef ETHOSU_LOG_SEVERITY
#define ETHOSU_LOG_SEVERITY ETHOSU_LOG_WARN
#endif

// Trace buffer hook - declared in arm_executor_runner.cpp
#ifdef __cplusplus
extern "C" {
#endif
extern volatile char rsc_trace_buf[];
extern volatile unsigned int trace_idx;
void ethosu_trace_log(const char* fmt, ...);
#ifdef __cplusplus
}
#endif

// Log formatting - redirect to trace buffer via ethosu_trace_log

#define LOG(f, ...) PRINTF(f, ##__VA_ARGS__)

#if ETHOSU_LOG_SEVERITY >= ETHOSU_LOG_ERR
#define LOG_ERR(f, ...) ethosu_trace_log("E: " f " (%s:%d)\n", ##__VA_ARGS__, strrchr("/" __FILE__, '/') + 1, __LINE__)
#else
#define LOG_ERR(f, ...)
#endif

#if ETHOSU_LOG_SEVERITY >= ETHOSU_LOG_WARN
#define LOG_WARN(f, ...) ethosu_trace_log("W: " f "\n", ##__VA_ARGS__)
#else
#define LOG_WARN(f, ...)
#endif

#if ETHOSU_LOG_SEVERITY >= ETHOSU_LOG_INFO
#define LOG_INFO(f, ...) ethosu_trace_log("I: " f "\n", ##__VA_ARGS__)
#else
#define LOG_INFO(f, ...)
#endif

#if ETHOSU_LOG_SEVERITY >= ETHOSU_LOG_DEBUG
#define LOG_DEBUG(f, ...) ethosu_trace_log("D: %s(): " f "\n", __FUNCTION__, ##__VA_ARGS__)
#else
#define LOG_DEBUG(f, ...)
#endif

#endif
