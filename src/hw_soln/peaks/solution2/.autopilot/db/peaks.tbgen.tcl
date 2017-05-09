set C_TypeInfoList {{ 
"peaks" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"samples": [[], {"reference": "0"}] }, {"amplitude": [[], {"reference": "0"}] }, {"locations": [[], {"reference": "1"}] }],[],""], 
"0": [ "DSTREAM_FLO", {"typedef": [[[],"2"],""]}], 
"2": [ "stream<float>", {"hls_type": {"stream": [[[[], {"scalar": "float"}]],"3"]}}], 
"1": [ "DSTREAM_INT", {"typedef": [[[],"4"],""]}], 
"4": [ "stream<int>", {"hls_type": {"stream": [[[[], {"scalar": "int"}]],"3"]}}],
"3": ["hls", ""]
}}
set moduleName peaks
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {peaks}
set C_modelType { void 0 }
set C_modelArgList { 
	{ samples_V float 32 regular {fifo 0 volatile }  }
	{ amplitude_V float 32 regular {fifo 1 volatile }  }
	{ locations_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "samples_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "samples.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "amplitude_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "amplitude.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "locations_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "locations.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ samples_V_dout sc_in sc_lv 32 signal 0 } 
	{ samples_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ samples_V_read sc_out sc_logic 1 signal 0 } 
	{ amplitude_V_din sc_out sc_lv 32 signal 1 } 
	{ amplitude_V_full_n sc_in sc_logic 1 signal 1 } 
	{ amplitude_V_write sc_out sc_logic 1 signal 1 } 
	{ locations_V_din sc_out sc_lv 32 signal 2 } 
	{ locations_V_full_n sc_in sc_logic 1 signal 2 } 
	{ locations_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "samples_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "samples_V", "role": "dout" }} , 
 	{ "name": "samples_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "samples_V", "role": "empty_n" }} , 
 	{ "name": "samples_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "samples_V", "role": "read" }} , 
 	{ "name": "amplitude_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "amplitude_V", "role": "din" }} , 
 	{ "name": "amplitude_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "amplitude_V", "role": "full_n" }} , 
 	{ "name": "amplitude_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "amplitude_V", "role": "write" }} , 
 	{ "name": "locations_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "locations_V", "role": "din" }} , 
 	{ "name": "locations_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locations_V", "role": "full_n" }} , 
 	{ "name": "locations_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locations_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	samples_V { ap_fifo {  { samples_V_dout fifo_data 0 32 }  { samples_V_empty_n fifo_status 0 1 }  { samples_V_read fifo_update 1 1 } } }
	amplitude_V { ap_fifo {  { amplitude_V_din fifo_data 1 32 }  { amplitude_V_full_n fifo_status 0 1 }  { amplitude_V_write fifo_update 1 1 } } }
	locations_V { ap_fifo {  { locations_V_din fifo_data 1 32 }  { locations_V_full_n fifo_status 0 1 }  { locations_V_write fifo_update 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	samples_V { fifo_read 120000 has_conditional }
	amplitude_V { fifo_write 120000 has_conditional }
	locations_V { fifo_write 120000 has_conditional }
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
