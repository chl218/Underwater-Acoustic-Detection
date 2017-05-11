#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("threshold", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("signals_V_dout", 32, hls_in, 1, "ap_fifo", "fifo_data", 120000),
	Port_Property("signals_V_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 120000),
	Port_Property("signals_V_read", 1, hls_out, 1, "ap_fifo", "fifo_update", 120000),
	Port_Property("hits_V_din", 32, hls_out, 2, "ap_fifo", "fifo_data", 120000),
	Port_Property("hits_V_full_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 120000),
	Port_Property("hits_V_write", 1, hls_out, 2, "ap_fifo", "fifo_update", 120000),
	Port_Property("locs_V_din", 32, hls_out, 3, "ap_fifo", "fifo_data", 120000),
	Port_Property("locs_V_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 120000),
	Port_Property("locs_V_write", 1, hls_out, 3, "ap_fifo", "fifo_update", 120000),
};
const char* HLS_Design_Meta::dut_name = "signal_hits";
