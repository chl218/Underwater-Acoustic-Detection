############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project signal_hits
set_top signal_hits
add_files signal_hits.h
add_files signal_hits.cpp
add_files -tb signal_hits_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 5 -name default
#source "./signal_hits/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
