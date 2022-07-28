// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFORWARD_PROPAGATION_H
#define XFORWARD_PROPAGATION_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xforward_propagation_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XForward_propagation_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XForward_propagation;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XForward_propagation_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XForward_propagation_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XForward_propagation_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XForward_propagation_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XForward_propagation_Initialize(XForward_propagation *InstancePtr, u16 DeviceId);
XForward_propagation_Config* XForward_propagation_LookupConfig(u16 DeviceId);
int XForward_propagation_CfgInitialize(XForward_propagation *InstancePtr, XForward_propagation_Config *ConfigPtr);
#else
int XForward_propagation_Initialize(XForward_propagation *InstancePtr, const char* InstanceName);
int XForward_propagation_Release(XForward_propagation *InstancePtr);
#endif

void XForward_propagation_Start(XForward_propagation *InstancePtr);
u32 XForward_propagation_IsDone(XForward_propagation *InstancePtr);
u32 XForward_propagation_IsIdle(XForward_propagation *InstancePtr);
u32 XForward_propagation_IsReady(XForward_propagation *InstancePtr);
void XForward_propagation_EnableAutoRestart(XForward_propagation *InstancePtr);
void XForward_propagation_DisableAutoRestart(XForward_propagation *InstancePtr);
u32 XForward_propagation_Get_return(XForward_propagation *InstancePtr);

void XForward_propagation_Set_X(XForward_propagation *InstancePtr, u64 Data);
u64 XForward_propagation_Get_X(XForward_propagation *InstancePtr);

void XForward_propagation_InterruptGlobalEnable(XForward_propagation *InstancePtr);
void XForward_propagation_InterruptGlobalDisable(XForward_propagation *InstancePtr);
void XForward_propagation_InterruptEnable(XForward_propagation *InstancePtr, u32 Mask);
void XForward_propagation_InterruptDisable(XForward_propagation *InstancePtr, u32 Mask);
void XForward_propagation_InterruptClear(XForward_propagation *InstancePtr, u32 Mask);
u32 XForward_propagation_InterruptGetEnabled(XForward_propagation *InstancePtr);
u32 XForward_propagation_InterruptGetStatus(XForward_propagation *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
