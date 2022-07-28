// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xforward_propagation.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XForward_propagation_CfgInitialize(XForward_propagation *InstancePtr, XForward_propagation_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XForward_propagation_Start(XForward_propagation *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_AP_CTRL) & 0x80;
    XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XForward_propagation_IsDone(XForward_propagation *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XForward_propagation_IsIdle(XForward_propagation *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XForward_propagation_IsReady(XForward_propagation *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XForward_propagation_EnableAutoRestart(XForward_propagation *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XForward_propagation_DisableAutoRestart(XForward_propagation *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XForward_propagation_Get_return(XForward_propagation *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XForward_propagation_Set_X(XForward_propagation *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_X_DATA, (u32)(Data));
    XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_X_DATA + 4, (u32)(Data >> 32));
}

u64 XForward_propagation_Get_X(XForward_propagation *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_X_DATA);
    Data += (u64)XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_X_DATA + 4) << 32;
    return Data;
}

void XForward_propagation_InterruptGlobalEnable(XForward_propagation *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_GIE, 1);
}

void XForward_propagation_InterruptGlobalDisable(XForward_propagation *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_GIE, 0);
}

void XForward_propagation_InterruptEnable(XForward_propagation *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_IER);
    XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_IER, Register | Mask);
}

void XForward_propagation_InterruptDisable(XForward_propagation *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_IER);
    XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_IER, Register & (~Mask));
}

void XForward_propagation_InterruptClear(XForward_propagation *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XForward_propagation_WriteReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_ISR, Mask);
}

u32 XForward_propagation_InterruptGetEnabled(XForward_propagation *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_IER);
}

u32 XForward_propagation_InterruptGetStatus(XForward_propagation *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XForward_propagation_ReadReg(InstancePtr->Control_BaseAddress, XFORWARD_PROPAGATION_CONTROL_ADDR_ISR);
}

