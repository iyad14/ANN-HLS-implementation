// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1__HH__
#define __Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1__HH__
#include "Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7 Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U;

    SC_CTOR(Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1):  Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U ("Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U") {
        Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U.clk(clk);
        Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U.rst(reset);
        Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U.ce(ce);
        Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U.in0(din0);
        Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U.in1(din1);
        Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U.in2(din2);
        Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1_DSP48_7_U.dout(dout);

    }

};

#endif //
