set moduleName parse
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {parse}
set C_modelType { void 0 }
set C_modelArgList {
	{ sig_i_V float 32 regular {fifo 0 volatile }  }
	{ hits int 32 regular {fifo 0}  }
	{ loc_V int 32 regular {fifo 0 volatile }  }
	{ sig_o_V float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sig_i_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hits", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "loc_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sig_o_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sig_i_V_dout sc_in sc_lv 32 signal 0 } 
	{ sig_i_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ sig_i_V_read sc_out sc_logic 1 signal 0 } 
	{ hits_dout sc_in sc_lv 32 signal 1 } 
	{ hits_empty_n sc_in sc_logic 1 signal 1 } 
	{ hits_read sc_out sc_logic 1 signal 1 } 
	{ loc_V_dout sc_in sc_lv 32 signal 2 } 
	{ loc_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ loc_V_read sc_out sc_logic 1 signal 2 } 
	{ sig_o_V_din sc_out sc_lv 32 signal 3 } 
	{ sig_o_V_full_n sc_in sc_logic 1 signal 3 } 
	{ sig_o_V_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sig_i_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sig_i_V", "role": "dout" }} , 
 	{ "name": "sig_i_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_i_V", "role": "empty_n" }} , 
 	{ "name": "sig_i_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_i_V", "role": "read" }} , 
 	{ "name": "hits_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hits", "role": "dout" }} , 
 	{ "name": "hits_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits", "role": "empty_n" }} , 
 	{ "name": "hits_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits", "role": "read" }} , 
 	{ "name": "loc_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "loc_V", "role": "dout" }} , 
 	{ "name": "loc_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "loc_V", "role": "empty_n" }} , 
 	{ "name": "loc_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "loc_V", "role": "read" }} , 
 	{ "name": "sig_o_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sig_o_V", "role": "din" }} , 
 	{ "name": "sig_o_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_o_V", "role": "full_n" }} , 
 	{ "name": "sig_o_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_o_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "parse",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "sig_i_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "sig_i_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "hits", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "hits_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "loc_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "loc_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "sig_o_V", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "sig_o_V_blk_n", "Type" : "RtlSignal"}]}]}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4294967295", "Max" : "4294967295"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sig_i_V { ap_fifo {  { sig_i_V_dout fifo_data 0 32 }  { sig_i_V_empty_n fifo_status 0 1 }  { sig_i_V_read fifo_update 1 1 } } }
	hits { ap_fifo {  { hits_dout fifo_data 0 32 }  { hits_empty_n fifo_status 0 1 }  { hits_read fifo_update 1 1 } } }
	loc_V { ap_fifo {  { loc_V_dout fifo_data 0 32 }  { loc_V_empty_n fifo_status 0 1 }  { loc_V_read fifo_update 1 1 } } }
	sig_o_V { ap_fifo {  { sig_o_V_din fifo_data 1 32 }  { sig_o_V_full_n fifo_status 0 1 }  { sig_o_V_write fifo_update 1 1 } } }
}
