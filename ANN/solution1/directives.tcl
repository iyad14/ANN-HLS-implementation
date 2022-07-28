############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name Forward_propagation "Forward_propagation"
set_directive_pipeline "Forward_propagation"
set_directive_unroll "Forward_propagation/X_Normalization"
set_directive_unroll "Forward_propagation/first_layer"
set_directive_unroll "Forward_propagation/second_layer"
set_directive_unroll "Forward_propagation/third_layer"
set_directive_unroll "Forward_propagation/output_layer"
