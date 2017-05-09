set C_TypeInfoList {{ 
"peaks" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"signals": [[], {"array": ["0", [100]]}] }, {"amplitude": [[], {"array": ["0", [50]]}] }, {"locations": [[], {"array": ["0", [50]]}] }],[],""], 
"0": [ "DTYPE", {"typedef": [[[], {"scalar": "int"}],""]}]
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
	{ signals_0 int 32 regular {array 34 { 1 1 } 1 1 }  }
	{ signals_1 int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ signals_2 int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ amplitude int 32 regular {array 50 { 0 3 } 0 1 }  }
	{ locations int 32 regular {array 50 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "signals_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "signals","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 3}]}]}]} , 
 	{ "Name" : "signals_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "signals","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 99,"step" : 3}]}]}]} , 
 	{ "Name" : "signals_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "signals","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 99,"step" : 3}]}]}]} , 
 	{ "Name" : "amplitude", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "amplitude","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "locations", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "locations","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ signals_0_address0 sc_out sc_lv 6 signal 0 } 
	{ signals_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ signals_0_q0 sc_in sc_lv 32 signal 0 } 
	{ signals_0_address1 sc_out sc_lv 6 signal 0 } 
	{ signals_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ signals_0_q1 sc_in sc_lv 32 signal 0 } 
	{ signals_1_address0 sc_out sc_lv 6 signal 1 } 
	{ signals_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ signals_1_q0 sc_in sc_lv 32 signal 1 } 
	{ signals_1_address1 sc_out sc_lv 6 signal 1 } 
	{ signals_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ signals_1_q1 sc_in sc_lv 32 signal 1 } 
	{ signals_2_address0 sc_out sc_lv 6 signal 2 } 
	{ signals_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ signals_2_q0 sc_in sc_lv 32 signal 2 } 
	{ signals_2_address1 sc_out sc_lv 6 signal 2 } 
	{ signals_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ signals_2_q1 sc_in sc_lv 32 signal 2 } 
	{ amplitude_address0 sc_out sc_lv 6 signal 3 } 
	{ amplitude_ce0 sc_out sc_logic 1 signal 3 } 
	{ amplitude_we0 sc_out sc_logic 1 signal 3 } 
	{ amplitude_d0 sc_out sc_lv 32 signal 3 } 
	{ locations_address0 sc_out sc_lv 6 signal 4 } 
	{ locations_ce0 sc_out sc_logic 1 signal 4 } 
	{ locations_we0 sc_out sc_logic 1 signal 4 } 
	{ locations_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "signals_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "signals_0", "role": "address0" }} , 
 	{ "name": "signals_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_0", "role": "ce0" }} , 
 	{ "name": "signals_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signals_0", "role": "q0" }} , 
 	{ "name": "signals_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "signals_0", "role": "address1" }} , 
 	{ "name": "signals_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_0", "role": "ce1" }} , 
 	{ "name": "signals_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signals_0", "role": "q1" }} , 
 	{ "name": "signals_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "signals_1", "role": "address0" }} , 
 	{ "name": "signals_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_1", "role": "ce0" }} , 
 	{ "name": "signals_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signals_1", "role": "q0" }} , 
 	{ "name": "signals_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "signals_1", "role": "address1" }} , 
 	{ "name": "signals_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_1", "role": "ce1" }} , 
 	{ "name": "signals_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signals_1", "role": "q1" }} , 
 	{ "name": "signals_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "signals_2", "role": "address0" }} , 
 	{ "name": "signals_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_2", "role": "ce0" }} , 
 	{ "name": "signals_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signals_2", "role": "q0" }} , 
 	{ "name": "signals_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "signals_2", "role": "address1" }} , 
 	{ "name": "signals_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signals_2", "role": "ce1" }} , 
 	{ "name": "signals_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signals_2", "role": "q1" }} , 
 	{ "name": "amplitude_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "amplitude", "role": "address0" }} , 
 	{ "name": "amplitude_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "amplitude", "role": "ce0" }} , 
 	{ "name": "amplitude_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "amplitude", "role": "we0" }} , 
 	{ "name": "amplitude_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "amplitude", "role": "d0" }} , 
 	{ "name": "locations_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "locations", "role": "address0" }} , 
 	{ "name": "locations_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locations", "role": "ce0" }} , 
 	{ "name": "locations_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locations", "role": "we0" }} , 
 	{ "name": "locations_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "locations", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	signals_0 { ap_memory {  { signals_0_address0 mem_address 1 6 }  { signals_0_ce0 mem_ce 1 1 }  { signals_0_q0 mem_dout 0 32 }  { signals_0_address1 mem_address 1 6 }  { signals_0_ce1 mem_ce 1 1 }  { signals_0_q1 mem_dout 0 32 } } }
	signals_1 { ap_memory {  { signals_1_address0 mem_address 1 6 }  { signals_1_ce0 mem_ce 1 1 }  { signals_1_q0 mem_dout 0 32 }  { signals_1_address1 mem_address 1 6 }  { signals_1_ce1 mem_ce 1 1 }  { signals_1_q1 mem_dout 0 32 } } }
	signals_2 { ap_memory {  { signals_2_address0 mem_address 1 6 }  { signals_2_ce0 mem_ce 1 1 }  { signals_2_q0 mem_dout 0 32 }  { signals_2_address1 mem_address 1 6 }  { signals_2_ce1 mem_ce 1 1 }  { signals_2_q1 mem_dout 0 32 } } }
	amplitude { ap_memory {  { amplitude_address0 mem_address 1 6 }  { amplitude_ce0 mem_ce 1 1 }  { amplitude_we0 mem_we 1 1 }  { amplitude_d0 mem_din 1 32 } } }
	locations { ap_memory {  { locations_address0 mem_address 1 6 }  { locations_ce0 mem_ce 1 1 }  { locations_we0 mem_we 1 1 }  { locations_d0 mem_din 1 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
