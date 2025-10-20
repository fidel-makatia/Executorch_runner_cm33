#pragma once
#include "fsl_common.h"

// For i.MX93 Cortex-M33 - use the CMSIS definitions directly
static inline void ARM_PMU_Enable(void) {
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
}

static inline void ARM_PMU_CYCCNT_Reset(void) {
    DWT->CYCCNT = 0;
}

static inline uint32_t ARM_PMU_Get_CCNTR(void) {
    return DWT->CYCCNT;
}

static inline void ARM_PMU_CNTR_Enable(uint32_t mask) {
    // Not used on Cortex-M33
    (void)mask;
}

#define PMU_CNTENSET_CCNTR_ENABLE_Msk 0x1

// Add missing functions
static inline void StartMeasurements(void) {
    ARM_PMU_CYCCNT_Reset();
}

static inline void StopMeasurements(int n) {
    uint32_t cycles = ARM_PMU_Get_CCNTR();
    // You can add logging here if needed
    (void)n;
    (void)cycles;
}
