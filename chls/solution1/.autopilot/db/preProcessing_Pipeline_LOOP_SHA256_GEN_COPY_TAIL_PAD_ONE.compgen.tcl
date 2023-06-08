# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name select_ln375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln375 \
    op interface \
    ports { select_ln375 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name msg_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_msg_strm \
    op interface \
    ports { msg_strm_dout { I 64 vector } msg_strm_num_data_valid { I 16 vector } msg_strm_fifo_cap { I 16 vector } msg_strm_empty_n { I 1 bit } msg_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name zext_ln375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln375 \
    op interface \
    ports { zext_ln375 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name trunc_ln299_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln299_1 \
    op interface \
    ports { trunc_ln299_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name cmp203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp203 \
    op interface \
    ports { cmp203 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name b_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_18_out \
    op interface \
    ports { b_18_out { O 32 vector } b_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name b_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_17_out \
    op interface \
    ports { b_17_out { O 32 vector } b_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name b_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_16_out \
    op interface \
    ports { b_16_out { O 32 vector } b_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name b_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_15_out \
    op interface \
    ports { b_15_out { O 32 vector } b_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name b_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_14_out \
    op interface \
    ports { b_14_out { O 32 vector } b_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name b_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_13_out \
    op interface \
    ports { b_13_out { O 32 vector } b_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name b_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_12_out \
    op interface \
    ports { b_12_out { O 32 vector } b_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name b_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_11_out \
    op interface \
    ports { b_11_out { O 32 vector } b_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name b_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_10_out \
    op interface \
    ports { b_10_out { O 32 vector } b_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name b_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_9_out \
    op interface \
    ports { b_9_out { O 32 vector } b_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name b_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_8_out \
    op interface \
    ports { b_8_out { O 32 vector } b_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name b_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_7_out \
    op interface \
    ports { b_7_out { O 32 vector } b_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name b_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_6_out \
    op interface \
    ports { b_6_out { O 32 vector } b_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name b_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_5_out \
    op interface \
    ports { b_5_out { O 32 vector } b_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name b_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_4_out \
    op interface \
    ports { b_4_out { O 32 vector } b_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name b_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_out \
    op interface \
    ports { b_out { O 32 vector } b_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName top_module_flow_control_loop_pipe_sequential_init_U
set CompName top_module_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix top_module_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


