set moduleName duplicate
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {duplicate}
set C_modelType { void 0 }
set C_modelArgList {
	{ dat_i_V float 32 regular {fifo 0 volatile }  }
	{ dat_1_o_V float 32 regular {fifo 1 volatile }  }
	{ dat_2_o_V float 32 regular {fifo 1 volatile }  }
	{ dat_3_o_V float 32 regular {fifo 1 volatile }  }
	{ dat_4_o_V float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dat_i_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dat_1_o_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dat_2_o_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dat_3_o_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dat_4_o_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ dat_i_V_dout sc_in sc_lv 32 signal 0 } 
	{ dat_i_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ dat_i_V_read sc_out sc_logic 1 signal 0 } 
	{ dat_1_o_V_din sc_out sc_lv 32 signal 1 } 
	{ dat_1_o_V_full_n sc_in sc_logic 1 signal 1 } 
	{ dat_1_o_V_write sc_out sc_logic 1 signal 1 } 
	{ dat_2_o_V_din sc_out sc_lv 32 signal 2 } 
	{ dat_2_o_V_full_n sc_in sc_logic 1 signal 2 } 
	{ dat_2_o_V_write sc_out sc_logic 1 signal 2 } 
	{ dat_3_o_V_din sc_out sc_lv 32 signal 3 } 
	{ dat_3_o_V_full_n sc_in sc_logic 1 signal 3 } 
	{ dat_3_o_V_write sc_out sc_logic 1 signal 3 } 
	{ dat_4_o_V_din sc_out sc_lv 32 signal 4 } 
	{ dat_4_o_V_full_n sc_in sc_logic 1 signal 4 } 
	{ dat_4_o_V_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "dat_i_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dat_i_V", "role": "dout" }} , 
 	{ "name": "dat_i_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_i_V", "role": "empty_n" }} , 
 	{ "name": "dat_i_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_i_V", "role": "read" }} , 
 	{ "name": "dat_1_o_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dat_1_o_V", "role": "din" }} , 
 	{ "name": "dat_1_o_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_1_o_V", "role": "full_n" }} , 
 	{ "name": "dat_1_o_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_1_o_V", "role": "write" }} , 
 	{ "name": "dat_2_o_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dat_2_o_V", "role": "din" }} , 
 	{ "name": "dat_2_o_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_2_o_V", "role": "full_n" }} , 
 	{ "name": "dat_2_o_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_2_o_V", "role": "write" }} , 
 	{ "name": "dat_3_o_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dat_3_o_V", "role": "din" }} , 
 	{ "name": "dat_3_o_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_3_o_V", "role": "full_n" }} , 
 	{ "name": "dat_3_o_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_3_o_V", "role": "write" }} , 
 	{ "name": "dat_4_o_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dat_4_o_V", "role": "din" }} , 
 	{ "name": "dat_4_o_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_4_o_V", "role": "full_n" }} , 
 	{ "name": "dat_4_o_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_4_o_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "duplicate",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "dat_i_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "dat_i_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "dat_1_o_V", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "dat_1_o_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "dat_2_o_V", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "dat_2_o_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "dat_3_o_V", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "dat_3_o_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "dat_4_o_V", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "dat_4_o_V_blk_n", "Type" : "RtlSignal"}]}]}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "600002", "Max" : "600002"}
	, {"Name" : "Interval", "Min" : "600002", "Max" : "600002"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dat_i_V { ap_fifo {  { dat_i_V_dout fifo_data 0 32 }  { dat_i_V_empty_n fifo_status 0 1 }  { dat_i_V_read fifo_update 1 1 } } }
	dat_1_o_V { ap_fifo {  { dat_1_o_V_din fifo_data 1 32 }  { dat_1_o_V_full_n fifo_status 0 1 }  { dat_1_o_V_write fifo_update 1 1 } } }
	dat_2_o_V { ap_fifo {  { dat_2_o_V_din fifo_data 1 32 }  { dat_2_o_V_full_n fifo_status 0 1 }  { dat_2_o_V_write fifo_update 1 1 } } }
	dat_3_o_V { ap_fifo {  { dat_3_o_V_din fifo_data 1 32 }  { dat_3_o_V_full_n fifo_status 0 1 }  { dat_3_o_V_write fifo_update 1 1 } } }
	dat_4_o_V { ap_fifo {  { dat_4_o_V_din fifo_data 1 32 }  { dat_4_o_V_full_n fifo_status 0 1 }  { dat_4_o_V_write fifo_update 1 1 } } }
}
