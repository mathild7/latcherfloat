############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project latcherfloat
set_top latcherfloat
add_files latcherfloat.h
add_files latcherfloat.cpp
open_solution "solution1"
set_part {xc7z100ffv900-1}
create_clock -period 10 -name default
config_rtl -encoding onehot -prefix latcherfloat -reset control -reset_level high
#source "./latcherfloat/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
