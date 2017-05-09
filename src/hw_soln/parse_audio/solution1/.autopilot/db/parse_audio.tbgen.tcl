set C_TypeInfoList {{ 
"parse_audio" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"signals": [[], {"reference": "0"}] }, {"hits": [[], {"reference": "0"}] }, {"locs": [[], {"reference": "1"}] }, {"pairs": [[], {"reference": "2"}] }],[],""], 
"0": [ "DSTREAM_FLO", {"typedef": [[[],"3"],""]}], 
"1": [ "DSTREAM_INT", {"typedef": [[[],"4"],""]}], 
"4": [ "stream<int>", {"hls_type": {"stream": [[[[], {"scalar": "int"}]],"5"]}}], 
"3": [ "stream<float>", {"hls_type": {"stream": [[[[], {"scalar": "float"}]],"5"]}}], 
"2": [ "DSTREAM_STRUCT_PAIR", {"typedef": [[[],"6"],""]}], 
"6": [ "", {"struct": [[],[],[{ "amplitude": [[32], "0"]},{ "duration": [[32], "1"]}],""]}],
"5": ["hls", ""]
}}
set moduleName parse_audio
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {parse_audio}
set C_modelType { void 0 }
set C_modelArgList { 
	{ signals_V float 32 regular {fifo 0 volatile }  }
	{ hits_V float 32 regular {fifo 0 volatile }  }
	{ locs_V int 32 regular {fifo 0 volatile }  }
	{ pairs_amplitude_V float 32 regular {fifo 1 volatile }  }
	{ pairs_duration_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "signals_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "signals.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hits_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hits.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "locs_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "locs.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pairs_amplitude_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pairs.amplitude.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pairs_duration_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pairs.duration.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ signals_V_dout sc_in sc_lv 32 signal 0 } 
	{ signals_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ signals_V_read sc_out sc_logic 1 signal 0 } 
	{ hits_V_dout sc_in sc_lv 32 signal 1 } 
	{ hits_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ hits_V_read sc_out sc_logic 1 signal 1 } 
	{ locs_V_dout sc_in sc_lv 32 signal 2 } 
	{ locs_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ locs_V_read sc_out sc_logic 1 signal 2 } 
	{ pairs_amplitude_V_din sc_out sc_lv 32 signal 3 } 
	{ pairs_amplitude_V_full_n sc_in sc_logic 1 signal 3 } 
	{ pairs_amplitude_V_write sc_out sc_logic 1 signal 3 } 
	{ pairs_duration_V_din sc_out sc_lv 32 signal 4 } 
	{ pairs_duration_V_full_n sc_in sc_logic 1 signal 4 } 
	{ pairs_duration_V_write sc_out sc_logic 1 signal 4 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "signals_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signals_V", "role": "dout" }} , 
 	{ "name": "signals_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_V", "role": "empty_n" }} , 
 	{ "name": "signals_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_V", "role": "read" }} , 
 	{ "name": "hits_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hits_V", "role": "dout" }} , 
 	{ "name": "hits_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits_V", "role": "empty_n" }} , 
 	{ "name": "hits_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits_V", "role": "read" }} , 
 	{ "name": "locs_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "locs_V", "role": "dout" }} , 
 	{ "name": "locs_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locs_V", "role": "empty_n" }} , 
 	{ "name": "locs_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locs_V", "role": "read" }} , 
 	{ "name": "pairs_amplitude_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pairs_amplitude_V", "role": "din" }} , 
 	{ "name": "pairs_amplitude_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pairs_amplitude_V", "role": "full_n" }} , 
 	{ "name": "pairs_amplitude_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pairs_amplitude_V", "role": "write" }} , 
 	{ "name": "pairs_duration_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pairs_duration_V", "role": "din" }} , 
 	{ "name": "pairs_duration_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pairs_duration_V", "role": "full_n" }} , 
 	{ "name": "pairs_duration_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pairs_duration_V", "role": "write" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}
set Spec2ImplPortList { 
	signals_V { ap_fifo {  { signals_V_dout fifo_data 0 32 }  { signals_V_empty_n fifo_status 0 1 }  { signals_V_read fifo_update 1 1 } } }
	hits_V { ap_fifo {  { hits_V_dout fifo_data 0 32 }  { hits_V_empty_n fifo_status 0 1 }  { hits_V_read fifo_update 1 1 } } }
	locs_V { ap_fifo {  { locs_V_dout fifo_data 0 32 }  { locs_V_empty_n fifo_status 0 1 }  { locs_V_read fifo_update 1 1 } } }
	pairs_amplitude_V { ap_fifo {  { pairs_amplitude_V_din fifo_data 1 32 }  { pairs_amplitude_V_full_n fifo_status 0 1 }  { pairs_amplitude_V_write fifo_update 1 1 } } }
	pairs_duration_V { ap_fifo {  { pairs_duration_V_din fifo_data 1 32 }  { pairs_duration_V_full_n fifo_status 0 1 }  { pairs_duration_V_write fifo_update 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	signals_V { fifo_read 1 no_conditional }
	hits_V { fifo_read 1 no_conditional }
	locs_V { fifo_read 1 no_conditional }
	pairs_amplitude_V { fifo_write 1 no_conditional }
	pairs_duration_V { fifo_write 1 no_conditional }
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
