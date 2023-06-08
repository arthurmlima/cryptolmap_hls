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
    id 56 \
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
    id 57 \
    name len_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_len_strm \
    op interface \
    ports { len_strm_dout { I 64 vector } len_strm_num_data_valid { I 2 vector } len_strm_fifo_cap { I 2 vector } len_strm_empty_n { I 1 bit } len_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name end_len_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_end_len_strm \
    op interface \
    ports { end_len_strm_dout { I 1 vector } end_len_strm_num_data_valid { I 2 vector } end_len_strm_fifo_cap { I 2 vector } end_len_strm_empty_n { I 1 bit } end_len_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name blk_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_strm \
    op interface \
    ports { blk_strm_din { O 512 vector } blk_strm_num_data_valid { I 14 vector } blk_strm_fifo_cap { I 14 vector } blk_strm_full_n { I 1 bit } blk_strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name nblk_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_nblk_strm \
    op interface \
    ports { nblk_strm_din { O 64 vector } nblk_strm_num_data_valid { I 6 vector } nblk_strm_fifo_cap { I 6 vector } nblk_strm_full_n { I 1 bit } nblk_strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name end_nblk_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_end_nblk_strm \
    op interface \
    ports { end_nblk_strm_din { O 1 vector } end_nblk_strm_num_data_valid { I 6 vector } end_nblk_strm_fifo_cap { I 6 vector } end_nblk_strm_full_n { I 1 bit } end_nblk_strm_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


