dict set slaves control {ports {ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1} ap_return {type ap_return width 10} X {type i_ap_none width 64}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode COR
