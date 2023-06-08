set moduleName get_image_stream
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {get_image_stream}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_stream_V_data_V int 64 regular {axi_s 0 volatile  { input_stream Data } }  }
	{ input_stream_V_keep_V int 8 regular {axi_s 0 volatile  { input_stream Keep } }  }
	{ input_stream_V_strb_V int 8 regular {axi_s 0 volatile  { input_stream Strb } }  }
	{ input_stream_V_user_V int 1 regular {axi_s 0 volatile  { input_stream User } }  }
	{ input_stream_V_last_V int 1 regular {axi_s 0 volatile  { input_stream Last } }  }
	{ input_stream_V_id_V int 1 regular {axi_s 0 volatile  { input_stream ID } }  }
	{ input_stream_V_dest_V int 1 regular {axi_s 0 volatile  { input_stream Dest } }  }
	{ msg_strm int 64 regular {fifo 1 volatile }  }
	{ len_strm int 64 regular {fifo 1 volatile }  }
	{ end_len_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "input_stream_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "msg_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "len_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "end_len_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ input_stream_TDATA sc_in sc_lv 64 signal 0 } 
	{ input_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ input_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ input_stream_TKEEP sc_in sc_lv 8 signal 1 } 
	{ input_stream_TSTRB sc_in sc_lv 8 signal 2 } 
	{ input_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ input_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ input_stream_TID sc_in sc_lv 1 signal 5 } 
	{ input_stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ msg_strm_din sc_out sc_lv 64 signal 7 } 
	{ msg_strm_num_data_valid sc_in sc_lv 16 signal 7 } 
	{ msg_strm_fifo_cap sc_in sc_lv 16 signal 7 } 
	{ msg_strm_full_n sc_in sc_logic 1 signal 7 } 
	{ msg_strm_write sc_out sc_logic 1 signal 7 } 
	{ len_strm_din sc_out sc_lv 64 signal 8 } 
	{ len_strm_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ len_strm_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ len_strm_full_n sc_in sc_logic 1 signal 8 } 
	{ len_strm_write sc_out sc_logic 1 signal 8 } 
	{ end_len_strm_din sc_out sc_lv 1 signal 9 } 
	{ end_len_strm_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ end_len_strm_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ end_len_strm_full_n sc_in sc_logic 1 signal 9 } 
	{ end_len_strm_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "input_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_stream_V_data_V", "role": "default" }} , 
 	{ "name": "input_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "input_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "input_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "input_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "input_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream_V_user_V", "role": "default" }} , 
 	{ "name": "input_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream_V_last_V", "role": "default" }} , 
 	{ "name": "input_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream_V_id_V", "role": "default" }} , 
 	{ "name": "input_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "msg_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msg_strm", "role": "din" }} , 
 	{ "name": "msg_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "msg_strm", "role": "num_data_valid" }} , 
 	{ "name": "msg_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "msg_strm", "role": "fifo_cap" }} , 
 	{ "name": "msg_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msg_strm", "role": "full_n" }} , 
 	{ "name": "msg_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msg_strm", "role": "write" }} , 
 	{ "name": "len_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "len_strm", "role": "din" }} , 
 	{ "name": "len_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "len_strm", "role": "num_data_valid" }} , 
 	{ "name": "len_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "len_strm", "role": "fifo_cap" }} , 
 	{ "name": "len_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "len_strm", "role": "full_n" }} , 
 	{ "name": "len_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "len_strm", "role": "write" }} , 
 	{ "name": "end_len_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_len_strm", "role": "din" }} , 
 	{ "name": "end_len_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "end_len_strm", "role": "num_data_valid" }} , 
 	{ "name": "end_len_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "end_len_strm", "role": "fifo_cap" }} , 
 	{ "name": "end_len_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_len_strm", "role": "full_n" }} , 
 	{ "name": "end_len_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_len_strm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "get_image_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71", "Port" : "input_stream_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71", "Port" : "input_stream_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71", "Port" : "input_stream_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71", "Port" : "input_stream_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71", "Port" : "input_stream_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71", "Port" : "input_stream_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71", "Port" : "input_stream_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "msg_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32768", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71", "Port" : "msg_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "len_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "len_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_len_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_len_strm_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "get_image_stream_Pipeline_VITIS_LOOP_16_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"BlockSignal" : [
					{"Name" : "input_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream"},
			{"Name" : "input_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream"},
			{"Name" : "input_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream"},
			{"Name" : "input_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream"},
			{"Name" : "input_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream"},
			{"Name" : "input_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream"},
			{"Name" : "msg_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "msg_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_image_stream_Pipeline_VITIS_LOOP_16_1_fu_71.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	get_image_stream {
		input_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		msg_strm {Type O LastRead -1 FirstWrite 1}
		len_strm {Type O LastRead -1 FirstWrite 3}
		end_len_strm {Type O LastRead -1 FirstWrite 3}}
	get_image_stream_Pipeline_VITIS_LOOP_16_1 {
		input_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		msg_strm {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_stream_V_data_V { axis {  { input_stream_TDATA in_data 0 64 } } }
	input_stream_V_keep_V { axis {  { input_stream_TKEEP in_data 0 8 } } }
	input_stream_V_strb_V { axis {  { input_stream_TSTRB in_data 0 8 } } }
	input_stream_V_user_V { axis {  { input_stream_TUSER in_data 0 1 } } }
	input_stream_V_last_V { axis {  { input_stream_TLAST in_data 0 1 } } }
	input_stream_V_id_V { axis {  { input_stream_TID in_data 0 1 } } }
	input_stream_V_dest_V { axis {  { input_stream_TVALID in_vld 0 1 }  { input_stream_TREADY in_acc 1 1 }  { input_stream_TDEST in_data 0 1 } } }
	msg_strm { ap_fifo {  { msg_strm_din fifo_port_we 1 64 }  { msg_strm_num_data_valid fifo_status_num_data_valid 0 16 }  { msg_strm_fifo_cap fifo_update 0 16 }  { msg_strm_full_n fifo_status 0 1 }  { msg_strm_write fifo_data 1 1 } } }
	len_strm { ap_fifo {  { len_strm_din fifo_port_we 1 64 }  { len_strm_num_data_valid fifo_status_num_data_valid 0 2 }  { len_strm_fifo_cap fifo_update 0 2 }  { len_strm_full_n fifo_status 0 1 }  { len_strm_write fifo_data 1 1 } } }
	end_len_strm { ap_fifo {  { end_len_strm_din fifo_port_we 1 1 }  { end_len_strm_num_data_valid fifo_status_num_data_valid 0 2 }  { end_len_strm_fifo_cap fifo_update 0 2 }  { end_len_strm_full_n fifo_status 0 1 }  { end_len_strm_write fifo_data 1 1 } } }
}
