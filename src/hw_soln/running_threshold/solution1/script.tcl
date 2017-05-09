############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project running_threshold
set_top running_threshold
add_files running_threshold.cpp
add_files running_threshold.h
add_files -tb running_threshold_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 5 -name default
#source "./running_threshold/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
