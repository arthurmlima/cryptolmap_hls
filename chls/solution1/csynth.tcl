############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project chls
set_top top_module
add_files chls/sub_modules.cpp -cflags "-I/home/arthur/Vitis_Libraries/security/L1/include"
add_files chls/sub_modules.hpp -cflags "-I/home/arthur/Vitis_Libraries/security/L1/include"
add_files chls/top_module.cpp -cflags "-I/home/arthur/Vitis_Libraries/security/L1/include"
add_files chls/top_module.hpp -cflags "-I/home/arthur/Vitis_Libraries/security/L1/include"
add_files -tb chls/header.h -cflags "-I/home/arthur/Vitis_Libraries/security/L1/include -Wno-unknown-pragmas"
add_files -tb chls/image.h -cflags "-I/home/arthur/Vitis_Libraries/security/L1/include -Wno-unknown-pragmas"
add_files -tb chls/test_bench.cpp -cflags "-I/home/arthur/Vitis_Libraries/security/L1/include -Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 11 -name default
config_export -format ip_catalog -output /home/arthur/mapalogistico/hls_ip_repo -rtl verilog -vivado_clock 10
config_cosim -tool xsim
source "./chls/solution1/directives.tcl"
csynth_design
