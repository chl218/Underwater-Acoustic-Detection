set C_TypeInfoList {{ 
"signal_hits" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"threshold": [[],"0"] }, {"signals": [[], {"reference": "1"}] }, {"hits": [[], {"reference": "1"}] }, {"locs": [[], {"reference": "2"}] }],[],""], 
"2": [ "DSTREAM_INT", {"typedef": [[[],"3"],""]}], 
"3": [ "stream<int>", {"hls_type": {"stream": [[[[], {"scalar": "int"}]],"4"]}}], 
"1": [ "DSTREAM_FLO", {"typedef": [[[],"5"],""]}], 
"5": [ "stream<float>", {"hls_type": {"stream": [[[[], {"scalar": "float"}]],"4"]}}], 
"0": [ "DTYPE_FLO", {"typedef": [[[], {"scalar": "float"}],""]}],
"4": ["hls", ""]
}}
set moduleName signal_hits
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {signal_hits}
set C_modelType { void 0 }
set C_modelArgList { 
	{ threshold float 32 regular  }
	{ signals_V float 32 regular {fifo 0 volatile }  }
	{ hits_V float 32 regular {fifo 1 volatile }  }
	{ locs_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "threshold", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "threshold","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "signals_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "signals.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hits_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hits.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "locs_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "locs.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ threshold sc_in sc_lv 32 signal 0 } 
	{ signals_V_dout sc_in sc_lv 32 signal 1 } 
	{ signals_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ signals_V_read sc_out sc_logic 1 signal 1 } 
	{ hits_V_din sc_out sc_lv 32 signal 2 } 
	{ hits_V_full_n sc_in sc_logic 1 signal 2 } 
	{ hits_V_write sc_out sc_logic 1 signal 2 } 
	{ locs_V_din sc_out sc_lv 32 signal 3 } 
	{ locs_V_full_n sc_in sc_logic 1 signal 3 } 
	{ locs_V_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "threshold", "role": "default" }} , 
 	{ "name": "signals_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signals_V", "role": "dout" }} , 
 	{ "name": "signals_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_V", "role": "empty_n" }} , 
 	{ "name": "signals_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_V", "role": "read" }} , 
 	{ "name": "hits_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hits_V", "role": "din" }} , 
 	{ "name": "hits_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits_V", "role": "full_n" }} , 
 	{ "name": "hits_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits_V", "role": "write" }} , 
 	{ "name": "locs_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "locs_V", "role": "din" }} , 
 	{ "name": "locs_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locs_V", "role": "full_n" }} , 
 	{ "name": "locs_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locs_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	threshold { ap_none {  { threshold in_data 0 32 } } }
	signals_V { ap_fifo {  { signals_V_dout fifo_data 0 32 }  { signals_V_empty_n fifo_status 0 1 }  { signals_V_read fifo_update 1 1 } } }
	hits_V { ap_fifo {  { hits_V_din fifo_data 1 32 }  { hits_V_full_n fifo_status 0 1 }  { hits_V_write fifo_update 1 1 } } }
	locs_V { ap_fifo {  { locs_V_din fifo_data 1 32 }  { locs_V_full_n fifo_status 0 1 }  { locs_V_write fifo_update 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	signals_V { fifo_read 120000 no_conditional }
	hits_V { fifo_write 120000 has_conditional }
	locs_V { fifo_write 120000 has_conditional }
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
