set moduleName parse_audio_parse_signal
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {parse_audio_parse_signal}
set C_modelType { void 0 }
set C_modelArgList { 
	{ signal_r float 32 regular {array 10000 { 1 3 } 1 1 }  }
	{ locs int 32 regular {array 12 { 1 1 } 1 1 }  }
	{ pairs_amplitude_V float 32 regular {fifo 1 volatile }  }
	{ pairs_duration_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "signal_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "locs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pairs_amplitude_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pairs_duration_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ signal_r_address0 sc_out sc_lv 14 signal 0 } 
	{ signal_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ signal_r_q0 sc_in sc_lv 32 signal 0 } 
	{ locs_address0 sc_out sc_lv 4 signal 1 } 
	{ locs_ce0 sc_out sc_logic 1 signal 1 } 
	{ locs_q0 sc_in sc_lv 32 signal 1 } 
	{ locs_address1 sc_out sc_lv 4 signal 1 } 
	{ locs_ce1 sc_out sc_logic 1 signal 1 } 
	{ locs_q1 sc_in sc_lv 32 signal 1 } 
	{ pairs_amplitude_V_din sc_out sc_lv 32 signal 2 } 
	{ pairs_amplitude_V_full_n sc_in sc_logic 1 signal 2 } 
	{ pairs_amplitude_V_write sc_out sc_logic 1 signal 2 } 
	{ pairs_duration_V_din sc_out sc_lv 32 signal 3 } 
	{ pairs_duration_V_full_n sc_in sc_logic 1 signal 3 } 
	{ pairs_duration_V_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "signal_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "signal_r", "role": "address0" }} , 
 	{ "name": "signal_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signal_r", "role": "ce0" }} , 
 	{ "name": "signal_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "signal_r", "role": "q0" }} , 
 	{ "name": "locs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "locs", "role": "address0" }} , 
 	{ "name": "locs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locs", "role": "ce0" }} , 
 	{ "name": "locs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "locs", "role": "q0" }} , 
 	{ "name": "locs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "locs", "role": "address1" }} , 
 	{ "name": "locs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locs", "role": "ce1" }} , 
 	{ "name": "locs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "locs", "role": "q1" }} , 
 	{ "name": "pairs_amplitude_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pairs_amplitude_V", "role": "din" }} , 
 	{ "name": "pairs_amplitude_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pairs_amplitude_V", "role": "full_n" }} , 
 	{ "name": "pairs_amplitude_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pairs_amplitude_V", "role": "write" }} , 
 	{ "name": "pairs_duration_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pairs_duration_V", "role": "din" }} , 
 	{ "name": "pairs_duration_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pairs_duration_V", "role": "full_n" }} , 
 	{ "name": "pairs_duration_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pairs_duration_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	signal_r { ap_memory {  { signal_r_address0 mem_address 1 14 }  { signal_r_ce0 mem_ce 1 1 }  { signal_r_q0 mem_dout 0 32 } } }
	locs { ap_memory {  { locs_address0 mem_address 1 4 }  { locs_ce0 mem_ce 1 1 }  { locs_q0 mem_dout 0 32 }  { locs_address1 mem_address 1 4 }  { locs_ce1 mem_ce 1 1 }  { locs_q1 mem_dout 0 32 } } }
	pairs_amplitude_V { ap_fifo {  { pairs_amplitude_V_din fifo_data 1 32 }  { pairs_amplitude_V_full_n fifo_status 0 1 }  { pairs_amplitude_V_write fifo_update 1 1 } } }
	pairs_duration_V { ap_fifo {  { pairs_duration_V_din fifo_data 1 32 }  { pairs_duration_V_full_n fifo_status 0 1 }  { pairs_duration_V_write fifo_update 1 1 } } }
}
