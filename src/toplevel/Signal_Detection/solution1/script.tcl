############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Signal_Detection
set_top detect_calls
add_files abs.cpp
add_files abs.h
add_files definitions.h
add_files detect.cpp
add_files detect.h
add_files duplicate.cpp
add_files duplicate.h
add_files filter_noise.cpp
add_files filter_noise.h
add_files findpeaks.cpp
add_files findpeaks.h
add_files parse.cpp
add_files parse.h
add_files threshold.cpp
add_files threshold.h
add_files toplevel.cpp
add_files toplevel.h
add_files -tb audio.dat
add_files -tb sample.dat
add_files -tb toplevel_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 5 -name default
#source "./Signal_Detection/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
