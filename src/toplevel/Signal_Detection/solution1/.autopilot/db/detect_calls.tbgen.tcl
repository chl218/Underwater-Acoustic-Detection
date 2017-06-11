set C_TypeInfoList {{ 
"detect_calls" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"dat_i": [[], {"reference": "0"}] }, {"res_o": [[], {"reference": "0"}] }],[],""], 
"0": [ "DSTREAM_FLO", {"typedef": [[[],"1"],""]}], 
"1": [ "stream<float>", {"hls_type": {"stream": [[[[], {"scalar": "float"}]],"2"]}}],
"2": ["hls", ""]
}}
set moduleName detect_calls
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {detect_calls}
set C_modelType { void 0 }
set C_modelArgList {
	{ dat_i_V float 32 regular {fifo 0 volatile }  }
	{ res_o_V float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dat_i_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dat_i.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "res_o_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "res_o.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ dat_i_V_dout sc_in sc_lv 32 signal 0 } 
	{ dat_i_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ dat_i_V_read sc_out sc_logic 1 signal 0 } 
	{ res_o_V_din sc_out sc_lv 32 signal 1 } 
	{ res_o_V_full_n sc_in sc_logic 1 signal 1 } 
	{ res_o_V_write sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "dat_i_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dat_i_V", "role": "dout" }} , 
 	{ "name": "dat_i_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_i_V", "role": "empty_n" }} , 
 	{ "name": "dat_i_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dat_i_V", "role": "read" }} , 
 	{ "name": "res_o_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_o_V", "role": "din" }} , 
 	{ "name": "res_o_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_o_V", "role": "full_n" }} , 
 	{ "name": "res_o_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_o_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "9", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "detect_calls",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "1",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "dat_i_V", "Type" : "Fifo", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "duplicate_U0", "Port" : "dat_i_V"}]},
		{"Name" : "res_o_V", "Type" : "Fifo", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "11", "SubInstance" : "parse_U0", "Port" : "sig_o_V"}]}],
		"InputProcess" : [
			{"ID" : "1", "Name" : "duplicate_U0"}],
		"OutputProcess" : [
			{"ID" : "11", "Name" : "parse_U0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicate_U0", "Parent" : "0",
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
		{"Name" : "dat_1_o_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "12",
			"BlockSignal" : [
			{"Name" : "dat_1_o_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "dat_2_o_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "13",
			"BlockSignal" : [
			{"Name" : "dat_2_o_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "dat_3_o_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "14",
			"BlockSignal" : [
			{"Name" : "dat_3_o_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "dat_4_o_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "15",
			"BlockSignal" : [
			{"Name" : "dat_4_o_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.findpeaks_U0", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "findpeaks",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "samples_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "12",
			"BlockSignal" : [
			{"Name" : "samples_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "amplitude_V", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "locations_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.findpeaks_U0.detect_calls_fcmpbkb_U5", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.findpeaks_U0.detect_calls_fcmpbkb_U6", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.threshold_U0", "Parent" : "0", "Child" : ["6", "7", "8"],
		"CDFG" : "threshold",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "amplitude_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "13",
			"BlockSignal" : [
			{"Name" : "amplitude_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.threshold_U0.detect_calls_faddcud_U10", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.threshold_U0.detect_calls_fmuldEe_U11", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.threshold_U0.detect_calls_fdiveOg_U12", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "detect",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "signals_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "14",
			"BlockSignal" : [
			{"Name" : "signals_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "threshold", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "16"},
		{"Name" : "loc_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "17",
			"BlockSignal" : [
			{"Name" : "loc_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "hits_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "18",
			"BlockSignal" : [
			{"Name" : "hits_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.detect_U0.detect_calls_fcmpbkb_x_U14", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parse_U0", "Parent" : "0",
		"CDFG" : "parse",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "sig_i_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "15",
			"BlockSignal" : [
			{"Name" : "sig_i_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "hits", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "18",
			"BlockSignal" : [
			{"Name" : "hits_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "loc_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "17",
			"BlockSignal" : [
			{"Name" : "loc_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "sig_o_V", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "sig_o_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dup1_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dup2_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dup3_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dup4_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.thres_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_locs_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hits_channel_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_findpeafYi_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_threshog8j_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_parse_U0_U", "Parent" : "0"}]}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4294967295", "Max" : "4294967295"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dat_i_V { ap_fifo {  { dat_i_V_dout fifo_data 0 32 }  { dat_i_V_empty_n fifo_status 0 1 }  { dat_i_V_read fifo_update 1 1 } } }
	res_o_V { ap_fifo {  { res_o_V_din fifo_data 1 32 }  { res_o_V_full_n fifo_status 0 1 }  { res_o_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	dat_i_V { fifo_read 1 no_conditional }
	res_o_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
