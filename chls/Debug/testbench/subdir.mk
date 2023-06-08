################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../test_bench.cpp 

OBJS += \
./testbench/test_bench.o 

CPP_DEPS += \
./testbench/test_bench.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/test_bench.o: /home/arthur/MapaLogistico/chls/chls/test_bench.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/tools/Xilinx/Vitis_HLS/2023.1/include/etc -I/home/arthur/MapaLogistico/chls -I/tools/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -I/tools/Xilinx/Vitis_HLS/2023.1/include -I/tools/Xilinx/Vitis_HLS/2023.1/lnx64/tools/auto_cc/include -I/tools/Xilinx/Vitis_HLS/2023.1/lnx64/tools/systemc/include -I/home/arthur/Vitis_Libraries/security/L1/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/test_bench.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


