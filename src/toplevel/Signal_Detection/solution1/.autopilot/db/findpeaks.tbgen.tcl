set moduleName findpeaks
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {findpeaks}
set C_modelType { void 0 }
set C_modelArgList {
	{ samples_V float 32 regular {fifo 0 volatile }  }
	{ amplitude_V float 32 regular {pointer 1 volatile }  }
	{ locations_V int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "samples_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "amplitude_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "locations_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ samples_V_dout sc_in sc_lv 32 signal 0 } 
	{ samples_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ samples_V_read sc_out sc_logic 1 signal 0 } 
	{ amplitude_V sc_out sc_lv 32 signal 1 } 
	{ amplitude_V_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ locations_V sc_out sc_lv 32 signal 2 } 
	{ locations_V_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "samples_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "samples_V", "role": "dout" }} , 
 	{ "name": "samples_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "samples_V", "role": "empty_n" }} , 
 	{ "name": "samples_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "samples_V", "role": "read" }} , 
 	{ "name": "amplitude_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "amplitude_V", "role": "default" }} , 
 	{ "name": "amplitude_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "amplitude_V", "role": "ap_vld" }} , 
 	{ "name": "locations_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "locations_V", "role": "default" }} , 
 	{ "name": "locations_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "locations_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "findpeaks",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "samples_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "samples_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "amplitude_V", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "locations_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_calls_fcmpbkb_U5", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_calls_fcmpbkb_U6", "Parent" : "0"}]}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "600009", "Max" : "600009"}
	, {"Name" : "Interval", "Min" : "600009", "Max" : "600009"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	samples_V { ap_fifo {  { samples_V_dout fifo_data 0 32 }  { samples_V_empty_n fifo_status 0 1 }  { samples_V_read fifo_update 1 1 } } }
	amplitude_V { ap_vld {  { amplitude_V out_data 1 32 }  { amplitude_V_ap_vld out_vld 1 1 } } }
	locations_V { ap_vld {  { locations_V out_data 1 32 }  { locations_V_ap_vld out_vld 1 1 } } }
}
