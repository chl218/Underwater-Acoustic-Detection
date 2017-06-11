############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
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
