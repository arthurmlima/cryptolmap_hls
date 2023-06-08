set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ u_perm int 32 regular  }
	{ u_perm_c int 32 regular {fifo 1}  }
	{ u_diff int 32 regular  }
	{ u_diff_c int 32 regular {fifo 1}  }
	{ u_dt int 32 regular  }
	{ u_dt_c int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "u_perm", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_perm_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_diff", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_diff_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_dt", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_dt_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ u_perm sc_in sc_lv 32 signal 0 } 
	{ u_perm_c_din sc_out sc_lv 32 signal 1 } 
	{ u_perm_c_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ u_perm_c_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ u_perm_c_full_n sc_in sc_logic 1 signal 1 } 
	{ u_perm_c_write sc_out sc_logic 1 signal 1 } 
	{ u_diff sc_in sc_lv 32 signal 2 } 
	{ u_diff_c_din sc_out sc_lv 32 signal 3 } 
	{ u_diff_c_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ u_diff_c_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ u_diff_c_full_n sc_in sc_logic 1 signal 3 } 
	{ u_diff_c_write sc_out sc_logic 1 signal 3 } 
	{ u_dt sc_in sc_lv 32 signal 4 } 
	{ u_dt_c_din sc_out sc_lv 32 signal 5 } 
	{ u_dt_c_num_data_valid sc_in sc_lv 4 signal 5 } 
	{ u_dt_c_fifo_cap sc_in sc_lv 4 signal 5 } 
	{ u_dt_c_full_n sc_in sc_logic 1 signal 5 } 
	{ u_dt_c_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "u_perm", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_perm", "role": "default" }} , 
 	{ "name": "u_perm_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_perm_c", "role": "din" }} , 
 	{ "name": "u_perm_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_perm_c", "role": "num_data_valid" }} , 
 	{ "name": "u_perm_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_perm_c", "role": "fifo_cap" }} , 
 	{ "name": "u_perm_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_perm_c", "role": "full_n" }} , 
 	{ "name": "u_perm_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_perm_c", "role": "write" }} , 
 	{ "name": "u_diff", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_diff", "role": "default" }} , 
 	{ "name": "u_diff_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_diff_c", "role": "din" }} , 
 	{ "name": "u_diff_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_diff_c", "role": "num_data_valid" }} , 
 	{ "name": "u_diff_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_diff_c", "role": "fifo_cap" }} , 
 	{ "name": "u_diff_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_diff_c", "role": "full_n" }} , 
 	{ "name": "u_diff_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_diff_c", "role": "write" }} , 
 	{ "name": "u_dt", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_dt", "role": "default" }} , 
 	{ "name": "u_dt_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_dt_c", "role": "din" }} , 
 	{ "name": "u_dt_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_dt_c", "role": "num_data_valid" }} , 
 	{ "name": "u_dt_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_dt_c", "role": "fifo_cap" }} , 
 	{ "name": "u_dt_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_dt_c", "role": "full_n" }} , 
 	{ "name": "u_dt_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_dt_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "u_perm", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_perm_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "u_perm_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "u_diff", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_diff_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "u_diff_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "u_dt", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_dt_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "u_dt_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		u_perm {Type I LastRead 0 FirstWrite -1}
		u_perm_c {Type O LastRead -1 FirstWrite 0}
		u_diff {Type I LastRead 0 FirstWrite -1}
		u_diff_c {Type O LastRead -1 FirstWrite 0}
		u_dt {Type I LastRead 0 FirstWrite -1}
		u_dt_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	u_perm { ap_none {  { u_perm in_data 0 32 } } }
	u_perm_c { ap_fifo {  { u_perm_c_din fifo_port_we 1 32 }  { u_perm_c_num_data_valid fifo_status_num_data_valid 0 4 }  { u_perm_c_fifo_cap fifo_update 0 4 }  { u_perm_c_full_n fifo_status 0 1 }  { u_perm_c_write fifo_data 1 1 } } }
	u_diff { ap_none {  { u_diff in_data 0 32 } } }
	u_diff_c { ap_fifo {  { u_diff_c_din fifo_port_we 1 32 }  { u_diff_c_num_data_valid fifo_status_num_data_valid 0 4 }  { u_diff_c_fifo_cap fifo_update 0 4 }  { u_diff_c_full_n fifo_status 0 1 }  { u_diff_c_write fifo_data 1 1 } } }
	u_dt { ap_none {  { u_dt in_data 0 32 } } }
	u_dt_c { ap_fifo {  { u_dt_c_din fifo_port_we 1 32 }  { u_dt_c_num_data_valid fifo_status_num_data_valid 0 4 }  { u_dt_c_fifo_cap fifo_update 0 4 }  { u_dt_c_full_n fifo_status 0 1 }  { u_dt_c_write fifo_data 1 1 } } }
}