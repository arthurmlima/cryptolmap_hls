set moduleName dup_strm_Pipeline_VITIS_LOOP_506_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dup_strm_Pipeline_VITIS_LOOP_506_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ e int 1 regular  }
	{ nblk_strm int 64 regular {fifo 0 volatile }  }
	{ nblk_strm1 int 64 regular {fifo 1 volatile }  }
	{ end_nblk_strm1 int 1 regular {fifo 1 volatile }  }
	{ nblk_strm2 int 64 regular {fifo 1 volatile }  }
	{ end_nblk_strm2 int 1 regular {fifo 1 volatile }  }
	{ end_nblk_strm int 1 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "e", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "nblk_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "nblk_strm1", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "end_nblk_strm1", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblk_strm2", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "end_nblk_strm2", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "end_nblk_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ end_nblk_strm_dout sc_in sc_lv 1 signal 6 } 
	{ end_nblk_strm_num_data_valid sc_in sc_lv 6 signal 6 } 
	{ end_nblk_strm_fifo_cap sc_in sc_lv 6 signal 6 } 
	{ end_nblk_strm_empty_n sc_in sc_logic 1 signal 6 } 
	{ end_nblk_strm_read sc_out sc_logic 1 signal 6 } 
	{ nblk_strm_dout sc_in sc_lv 64 signal 1 } 
	{ nblk_strm_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ nblk_strm_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ nblk_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ nblk_strm_read sc_out sc_logic 1 signal 1 } 
	{ nblk_strm1_din sc_out sc_lv 64 signal 2 } 
	{ nblk_strm1_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ nblk_strm1_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ nblk_strm1_full_n sc_in sc_logic 1 signal 2 } 
	{ nblk_strm1_write sc_out sc_logic 1 signal 2 } 
	{ end_nblk_strm1_din sc_out sc_lv 1 signal 3 } 
	{ end_nblk_strm1_num_data_valid sc_in sc_lv 6 signal 3 } 
	{ end_nblk_strm1_fifo_cap sc_in sc_lv 6 signal 3 } 
	{ end_nblk_strm1_full_n sc_in sc_logic 1 signal 3 } 
	{ end_nblk_strm1_write sc_out sc_logic 1 signal 3 } 
	{ nblk_strm2_din sc_out sc_lv 64 signal 4 } 
	{ nblk_strm2_num_data_valid sc_in sc_lv 6 signal 4 } 
	{ nblk_strm2_fifo_cap sc_in sc_lv 6 signal 4 } 
	{ nblk_strm2_full_n sc_in sc_logic 1 signal 4 } 
	{ nblk_strm2_write sc_out sc_logic 1 signal 4 } 
	{ end_nblk_strm2_din sc_out sc_lv 1 signal 5 } 
	{ end_nblk_strm2_num_data_valid sc_in sc_lv 6 signal 5 } 
	{ end_nblk_strm2_fifo_cap sc_in sc_lv 6 signal 5 } 
	{ end_nblk_strm2_full_n sc_in sc_logic 1 signal 5 } 
	{ end_nblk_strm2_write sc_out sc_logic 1 signal 5 } 
	{ e sc_in sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "end_nblk_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "dout" }} , 
 	{ "name": "end_nblk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "empty_n" }} , 
 	{ "name": "end_nblk_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "read" }} , 
 	{ "name": "nblk_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "nblk_strm", "role": "dout" }} , 
 	{ "name": "nblk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm", "role": "fifo_cap" }} , 
 	{ "name": "nblk_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm", "role": "empty_n" }} , 
 	{ "name": "nblk_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm", "role": "read" }} , 
 	{ "name": "nblk_strm1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "din" }} , 
 	{ "name": "nblk_strm1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "fifo_cap" }} , 
 	{ "name": "nblk_strm1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "full_n" }} , 
 	{ "name": "nblk_strm1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm1", "role": "write" }} , 
 	{ "name": "end_nblk_strm1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "din" }} , 
 	{ "name": "end_nblk_strm1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "full_n" }} , 
 	{ "name": "end_nblk_strm1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm1", "role": "write" }} , 
 	{ "name": "nblk_strm2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "din" }} , 
 	{ "name": "nblk_strm2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "fifo_cap" }} , 
 	{ "name": "nblk_strm2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "full_n" }} , 
 	{ "name": "nblk_strm2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "write" }} , 
 	{ "name": "end_nblk_strm2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "din" }} , 
 	{ "name": "end_nblk_strm2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "full_n" }} , 
 	{ "name": "end_nblk_strm2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "write" }} , 
 	{ "name": "e", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dup_strm_Pipeline_VITIS_LOOP_506_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_506_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dup_strm_Pipeline_VITIS_LOOP_506_1 {
		e {Type I LastRead 0 FirstWrite -1}
		nblk_strm {Type I LastRead 1 FirstWrite -1}
		nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		nblk_strm2 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm2 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	e { ap_none {  { e in_data 0 1 } } }
	nblk_strm { ap_fifo {  { nblk_strm_dout fifo_port_we 0 64 }  { nblk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { nblk_strm_fifo_cap fifo_update 0 6 }  { nblk_strm_empty_n fifo_status 0 1 }  { nblk_strm_read fifo_data 1 1 } } }
	nblk_strm1 { ap_fifo {  { nblk_strm1_din fifo_port_we 1 64 }  { nblk_strm1_num_data_valid fifo_status_num_data_valid 0 6 }  { nblk_strm1_fifo_cap fifo_update 0 6 }  { nblk_strm1_full_n fifo_status 0 1 }  { nblk_strm1_write fifo_data 1 1 } } }
	end_nblk_strm1 { ap_fifo {  { end_nblk_strm1_din fifo_port_we 1 1 }  { end_nblk_strm1_num_data_valid fifo_status_num_data_valid 0 6 }  { end_nblk_strm1_fifo_cap fifo_update 0 6 }  { end_nblk_strm1_full_n fifo_status 0 1 }  { end_nblk_strm1_write fifo_data 1 1 } } }
	nblk_strm2 { ap_fifo {  { nblk_strm2_din fifo_port_we 1 64 }  { nblk_strm2_num_data_valid fifo_status_num_data_valid 0 6 }  { nblk_strm2_fifo_cap fifo_update 0 6 }  { nblk_strm2_full_n fifo_status 0 1 }  { nblk_strm2_write fifo_data 1 1 } } }
	end_nblk_strm2 { ap_fifo {  { end_nblk_strm2_din fifo_port_we 1 1 }  { end_nblk_strm2_num_data_valid fifo_status_num_data_valid 0 6 }  { end_nblk_strm2_fifo_cap fifo_update 0 6 }  { end_nblk_strm2_full_n fifo_status 0 1 }  { end_nblk_strm2_write fifo_data 1 1 } } }
	end_nblk_strm { ap_fifo {  { end_nblk_strm_dout fifo_port_we 0 1 }  { end_nblk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { end_nblk_strm_fifo_cap fifo_update 0 6 }  { end_nblk_strm_empty_n fifo_status 0 1 }  { end_nblk_strm_read fifo_data 1 1 } } }
}
