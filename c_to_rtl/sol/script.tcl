############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project c_to_rtl
set_top eq
add_files C_code/eq.c
add_files C_code/eq.h
add_files -tb C_code/test.c
open_solution "sol"
set_part {xc7vx485t-ffg1157-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./c_to_rtl/sol/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -flow syn -rtl verilog -format ip_catalog
