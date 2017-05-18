############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project parse_audio
set_top parse_audio
add_files parse_audio.h
add_files parse_audio.cpp
add_files -tb parse_audio_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 5 -name default
#source "./parse_audio/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
