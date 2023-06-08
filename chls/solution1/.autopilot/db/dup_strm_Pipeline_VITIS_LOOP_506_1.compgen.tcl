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
    id 62 \
    name e \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_e \
    op interface \
    ports { e { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name nblk_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nblk_strm \
    op interface \
    ports { nblk_strm_dout { I 64 vector } nblk_strm_num_data_valid { I 6 vector } nblk_strm_fifo_cap { I 6 vector } nblk_strm_empty_n { I 1 bit } nblk_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name nblk_strm1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_nblk_strm1 \
    op interface \
    ports { nblk_strm1_din { O 64 vector } nblk_strm1_num_data_valid { I 6 vector } nblk_strm1_fifo_cap { I 6 vector } nblk_strm1_full_n { I 1 bit } nblk_strm1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name end_nblk_strm1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_end_nblk_strm1 \
    op interface \
    ports { end_nblk_strm1_din { O 1 vector } end_nblk_strm1_num_data_valid { I 6 vector } end_nblk_strm1_fifo_cap { I 6 vector } end_nblk_strm1_full_n { I 1 bit } end_nblk_strm1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name nblk_strm2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_nblk_strm2 \
    op interface \
    ports { nblk_strm2_din { O 64 vector } nblk_strm2_num_data_valid { I 6 vector } nblk_strm2_fifo_cap { I 6 vector } nblk_strm2_full_n { I 1 bit } nblk_strm2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name end_nblk_strm2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_end_nblk_strm2 \
    op interface \
    ports { end_nblk_strm2_din { O 1 vector } end_nblk_strm2_num_data_valid { I 6 vector } end_nblk_strm2_fifo_cap { I 6 vector } end_nblk_strm2_full_n { I 1 bit } end_nblk_strm2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name end_nblk_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_end_nblk_strm \
    op interface \
    ports { end_nblk_strm_dout { I 1 vector } end_nblk_strm_num_data_valid { I 6 vector } end_nblk_strm_fifo_cap { I 6 vector } end_nblk_strm_empty_n { I 1 bit } end_nblk_strm_read { O 1 bit } } \
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


