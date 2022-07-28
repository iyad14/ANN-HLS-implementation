// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xforward_propagation.h"

extern XForward_propagation_Config XForward_propagation_ConfigTable[];

XForward_propagation_Config *XForward_propagation_LookupConfig(u16 DeviceId) {
	XForward_propagation_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFORWARD_PROPAGATION_NUM_INSTANCES; Index++) {
		if (XForward_propagation_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XForward_propagation_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XForward_propagation_Initialize(XForward_propagation *InstancePtr, u16 DeviceId) {
	XForward_propagation_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XForward_propagation_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XForward_propagation_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

