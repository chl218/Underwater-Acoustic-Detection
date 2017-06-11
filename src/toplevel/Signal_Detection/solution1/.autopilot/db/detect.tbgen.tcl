set moduleName detect
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {detect}
set C_modelType { void 0 }
set C_modelArgList {
	{ signals_V float 32 regular {fifo 0 volatile }  }
	{ threshold float 32 regular  }
	{ loc_V int 32 regular {fifo 1 volatile }  }
	{ hits_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "signals_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "threshold", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "loc_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hits_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ signals_V_dout sc_in sc_lv 32 signal 0 } 
	{ signals_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ signals_V_read sc_out sc_logic 1 signal 0 } 
	{ threshold_x sc_in sc_lv 32 signal 1 } 
	{ loc_V_din sc_out sc_lv 32 signal 2 } 
	{ loc_V_full_n sc_in sc_logic 1 signal 2 } 
	{ loc_V_write sc_out sc_logic 1 signal 2 } 
	{ hits_out_din sc_out sc_lv 32 signal 3 } 
	{ hits_out_full_n sc_in sc_logic 1 signal 3 } 
	{ hits_out_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "signals_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signals_V", "role": "dout" }} , 
 	{ "name": "signals_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_V", "role": "empty_n" }} , 
 	{ "name": "signals_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_V", "role": "read" }} , 
 	{ "name": "threshold_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "threshold", "role": "default" }} , 
 	{ "name": "loc_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "loc_V", "role": "din" }} , 
 	{ "name": "loc_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "loc_V", "role": "full_n" }} , 
 	{ "name": "loc_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "loc_V", "role": "write" }} , 
 	{ "name": "hits_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hits_out", "role": "din" }} , 
 	{ "name": "hits_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits_out", "role": "full_n" }} , 
 	{ "name": "hits_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "detect",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "signals_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "signals_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
		{"Name" : "loc_V", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "loc_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "hits_out", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "hits_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_calls_fcmpbkb_x_U14", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "600006", "Max" : "600006"}
	, {"Name" : "Interval", "Min" : "600006", "Max" : "600006"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	signals_V { ap_fifo {  { signals_V_dout fifo_data 0 32 }  { signals_V_empty_n fifo_status 0 1 }  { signals_V_read fifo_update 1 1 } } }
	threshold { ap_none {  { threshold_x in_data 0 32 } } }
	loc_V { ap_fifo {  { loc_V_din fifo_data 1 32 }  { loc_V_full_n fifo_status 0 1 }  { loc_V_write fifo_update 1 1 } } }
	hits_out { ap_fifo {  { hits_out_din fifo_data 1 32 }  { hits_out_full_n fifo_status 0 1 }  { hits_out_write fifo_update 1 1 } } }
}
