set C_TypeInfoList {{ 
"running_threshold" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"amplitude": [[], {"reference": "0"}] }, {"threshold": [[], {"reference": "0"}] }],[],""], 
"0": [ "DSTREAM_FLO", {"typedef": [[[],"1"],""]}], 
"1": [ "stream<float>", {"hls_type": {"stream": [[[[], {"scalar": "float"}]],"2"]}}],
"2": ["hls", ""]
}}
set moduleName running_threshold
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {running_threshold}
set C_modelType { void 0 }
set C_modelArgList { 
	{ amplitude_V float 32 regular {fifo 0 volatile }  }
	{ threshold_V float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "amplitude_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "amplitude.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "threshold_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "threshold.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ amplitude_V_dout sc_in sc_lv 32 signal 0 } 
	{ amplitude_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ amplitude_V_read sc_out sc_logic 1 signal 0 } 
	{ threshold_V_din sc_out sc_lv 32 signal 1 } 
	{ threshold_V_full_n sc_in sc_logic 1 signal 1 } 
	{ threshold_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "amplitude_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "amplitude_V", "role": "dout" }} , 
 	{ "name": "amplitude_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "amplitude_V", "role": "empty_n" }} , 
 	{ "name": "amplitude_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "amplitude_V", "role": "read" }} , 
 	{ "name": "threshold_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "threshold_V", "role": "din" }} , 
 	{ "name": "threshold_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_V", "role": "full_n" }} , 
 	{ "name": "threshold_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	amplitude_V { ap_fifo {  { amplitude_V_dout fifo_data 0 32 }  { amplitude_V_empty_n fifo_status 0 1 }  { amplitude_V_read fifo_update 1 1 } } }
	threshold_V { ap_fifo {  { threshold_V_din fifo_data 1 32 }  { threshold_V_full_n fifo_status 0 1 }  { threshold_V_write fifo_update 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	amplitude_V { fifo_read 120000 no_conditional }
	threshold_V { fifo_write 1 no_conditional }
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
