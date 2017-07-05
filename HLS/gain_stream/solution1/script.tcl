############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project gain_stream
set_top doGain
add_files gain_stream/.apc/core_gain.cpp
add_files -tb gain_stream/test_core_gain.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./gain_stream/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
