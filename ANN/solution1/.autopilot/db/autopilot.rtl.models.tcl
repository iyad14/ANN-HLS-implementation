set SynModuleInfo {
  {SRCNAME Forward_propagation MODELNAME Forward_propagation RTLNAME Forward_propagation IS_TOP 1
    SUBMODULES {
      {MODELNAME Forward_propagation_mul_8s_6s_14_1_1 RTLNAME Forward_propagation_mul_8s_6s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_8s_7s_15_1_1 RTLNAME Forward_propagation_mul_8s_7s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_8s_7ns_15_1_1 RTLNAME Forward_propagation_mul_8s_7ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_8s_6ns_14_1_1 RTLNAME Forward_propagation_mul_8s_6ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_8s_5ns_13_1_1 RTLNAME Forward_propagation_mul_8s_5ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_8s_5s_13_1_1 RTLNAME Forward_propagation_mul_8s_5s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_9ns_6ns_14_1_1 RTLNAME Forward_propagation_mul_9ns_6ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_9ns_7ns_15_1_1 RTLNAME Forward_propagation_mul_9ns_7ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_9ns_5ns_13_1_1 RTLNAME Forward_propagation_mul_9ns_5ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_9ns_6s_15_1_1 RTLNAME Forward_propagation_mul_9ns_6s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_9ns_5s_14_1_1 RTLNAME Forward_propagation_mul_9ns_5s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_9ns_7s_16_1_1 RTLNAME Forward_propagation_mul_9ns_7s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mul_9ns_8s_17_1_1 RTLNAME Forward_propagation_mul_9ns_8s_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_8s_5ns_11s_14_4_1 RTLNAME Forward_propagation_mac_muladd_8s_5ns_11s_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_8s_7s_11s_14_4_1 RTLNAME Forward_propagation_mac_muladd_8s_7s_11s_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_8s_7s_12ns_14_4_1 RTLNAME Forward_propagation_mac_muladd_8s_7s_12ns_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_8s_6s_11ns_14_4_1 RTLNAME Forward_propagation_mac_muladd_8s_6s_11ns_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_8s_6s_12ns_14_4_1 RTLNAME Forward_propagation_mac_muladd_8s_6s_12ns_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_8s_7s_8ns_14_4_1 RTLNAME Forward_propagation_mac_muladd_8s_7s_8ns_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_6s_11s_15_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_6s_11s_15_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_7s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_5ns_11ns_14_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_5ns_11ns_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_7s_14ns_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_7s_14ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_7s_15ns_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_7s_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_8s_16ns_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_8s_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_5s_12ns_13_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_5s_12ns_13_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_6s_12ns_15_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_6s_12ns_15_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_6s_11ns_15_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_6s_11ns_15_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_7s_16ns_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_7s_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_7ns_16ns_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_7ns_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_8s_15s_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_8s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_7s_11ns_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_7s_11ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_6s_12s_15_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_6s_12s_15_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_5s_11ns_13_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_5s_11ns_13_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_8s_13s_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_8s_13s_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_7ns_14s_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_7ns_14s_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_mac_muladd_9ns_8ns_15s_16_4_1 RTLNAME Forward_propagation_mac_muladd_9ns_8ns_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Forward_propagation_gmem_m_axi RTLNAME Forward_propagation_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME Forward_propagation_control_s_axi RTLNAME Forward_propagation_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
