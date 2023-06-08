# This script segment is generated automatically by AutoPilot

set id 75
set name top_module_mux_16_4_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 0
set din14_width 32
set din14_signed 0
set din15_width 32
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name w_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w_strm \
    op interface \
    ports { w_strm_din { O 32 vector } w_strm_num_data_valid { I 6 vector } w_strm_fifo_cap { I 6 vector } w_strm_full_n { I 1 bit } w_strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name blk \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk \
    op interface \
    ports { blk { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name blk_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_1 \
    op interface \
    ports { blk_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name blk_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_2 \
    op interface \
    ports { blk_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name blk_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_3 \
    op interface \
    ports { blk_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name blk_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_4 \
    op interface \
    ports { blk_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name blk_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_5 \
    op interface \
    ports { blk_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name blk_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_6 \
    op interface \
    ports { blk_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name blk_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_7 \
    op interface \
    ports { blk_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name blk_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_8 \
    op interface \
    ports { blk_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name blk_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_9 \
    op interface \
    ports { blk_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name blk_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_13 \
    op interface \
    ports { blk_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name blk_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_10 \
    op interface \
    ports { blk_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name blk_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_11 \
    op interface \
    ports { blk_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name blk_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_12 \
    op interface \
    ports { blk_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name blk_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_15 \
    op interface \
    ports { blk_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name blk_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_14 \
    op interface \
    ports { blk_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name W_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_15_out \
    op interface \
    ports { W_15_out { O 32 vector } W_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name W_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_14_out \
    op interface \
    ports { W_14_out { O 32 vector } W_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name W_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_13_out \
    op interface \
    ports { W_13_out { O 32 vector } W_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name W_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_12_out \
    op interface \
    ports { W_12_out { O 32 vector } W_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name W_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_11_out \
    op interface \
    ports { W_11_out { O 32 vector } W_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name W_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_10_out \
    op interface \
    ports { W_10_out { O 32 vector } W_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name W_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_9_out \
    op interface \
    ports { W_9_out { O 32 vector } W_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name W_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_8_out \
    op interface \
    ports { W_8_out { O 32 vector } W_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name W_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_7_out \
    op interface \
    ports { W_7_out { O 32 vector } W_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name W_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_6_out \
    op interface \
    ports { W_6_out { O 32 vector } W_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name W_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_5_out \
    op interface \
    ports { W_5_out { O 32 vector } W_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name W_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_4_out \
    op interface \
    ports { W_4_out { O 32 vector } W_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name W_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_3_out \
    op interface \
    ports { W_3_out { O 32 vector } W_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name W_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_2_out \
    op interface \
    ports { W_2_out { O 32 vector } W_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name W_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_1_out \
    op interface \
    ports { W_1_out { O 32 vector } W_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name W_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_out \
    op interface \
    ports { W_out { O 32 vector } W_out_ap_vld { O 1 bit } } \
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


