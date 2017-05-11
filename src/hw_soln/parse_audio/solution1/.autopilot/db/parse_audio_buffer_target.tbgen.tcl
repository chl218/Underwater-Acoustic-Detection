set moduleName parse_audio_buffer_target
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {parse_audio_buffer_target}
set C_modelType { void 0 }
set C_modelArgList { 
	{ hits_V float 32 regular {fifo 0 volatile }  }
	{ locs_V int 32 regular {fifo 0 volatile }  }
	{ loc_buf int 32 regular {array 12 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hits_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "locs_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "loc_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hits_V_dout sc_in sc_lv 32 signal 0 } 
	{ hits_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ hits_V_read sc_out sc_logic 1 signal 0 } 
	{ locs_V_dout sc_in sc_lv 32 signal 1 } 
	{ locs_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ locs_V_read sc_out sc_logic 1 signal 1 } 
	{ loc_buf_address0 sc_out sc_lv 4 signal 2 } 
	{ loc_buf_ce0 sc_out sc_logic 1 signal 2 } 
	{ loc_buf_we0 sc_out sc_logic 1 signal 2 } 
	{ loc_buf_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hits_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hits_V", "role": "dout" }} , 
 	{ "name": "hits_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits_V", "role": "empty_n" }} , 
 	{ "name": "hits_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hits_V", "role": "read" }} , 
 	{ "name": "locs_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "locs_V", "role": "dout" }} , 
 	{ "name": "locs_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locs_V", "role": "empty_n" }} , 
 	{ "name": "locs_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locs_V", "role": "read" }} , 
 	{ "name": "loc_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "loc_buf", "role": "address0" }} , 
 	{ "name": "loc_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "loc_buf", "role": "ce0" }} , 
 	{ "name": "loc_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "loc_buf", "role": "we0" }} , 
 	{ "name": "loc_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "loc_buf", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	hits_V { ap_fifo {  { hits_V_dout fifo_data 0 32 }  { hits_V_empty_n fifo_status 0 1 }  { hits_V_read fifo_update 1 1 } } }
	locs_V { ap_fifo {  { locs_V_dout fifo_data 0 32 }  { locs_V_empty_n fifo_status 0 1 }  { locs_V_read fifo_update 1 1 } } }
	loc_buf { ap_memory {  { loc_buf_address0 mem_address 1 4 }  { loc_buf_ce0 mem_ce 1 1 }  { loc_buf_we0 mem_we 1 1 }  { loc_buf_d0 mem_din 1 32 } } }
}
