# Copyright (C) 2019-2022, Xilinx, Inc.
# Copyright (C) 2022-2023, Advanced Micro Devices, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# vitis hls makefile-generator v2.0.0

set PROJ "cryptolmap"

open_project -reset $PROJ

add_files "src/sub_modules.cpp" -cflags "-I../../Vitis_Libraries/security/L1/include"
add_files "src/top_module.cpp" -cflags  "-I../../Vitis_Libraries/security/L1/include"
add_files "src/sub_modules.hpp" -cflags "-I../../Vitis_Libraries/security/L1/include"
add_files "src/top_module.hpp" -cflags "-I../../Vitis_Libraries/security/L1/include"
add_files -tb "src/header.h" -cflags "-I../../Vitis_Libraries/security/L1/include"
add_files -tb "src/test_bench.cpp" -cflags "-I../../Vitis_Libraries/security/L1/include"
add_files -tb "src/image.h" -cflags "-I../../Vitis_Libraries/security/L1/include"

set_top top_module

open_solution -reset "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 11 -name default

csim_design -argv {10}
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output ../../ip_repo/

exit
