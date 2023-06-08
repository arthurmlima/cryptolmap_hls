################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../sub_modules.cpp \
../top_module.cpp 

OBJS += \
./source/sub_modules.o \
./source/top_module.o 

CPP_DEPS += \
./source/sub_modules.d \
./source/top_module.d 


# Each subdirectory must supply rules for building sources it contributes
source/sub_modules.o: /home/arthur/MapaLogistico/chls/chls/sub_modules.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/tools/Xilinx/Vitis_HLS/2023.1/include/etc -I/home/arthur/MapaLogistico/chls -I/tools/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -I/tools/Xilinx/Vitis_HLS/2023.1/include -I/tools/Xilinx/Vitis_HLS/2023.1/lnx64/tools/auto_cc/include -I/tools/Xilinx/Vitis_HLS/2023.1/lnx64/tools/systemc/include -I/home/arthur/Vitis_Libraries/security/L1/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/sub_modules.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/top_module.o: /home/arthur/MapaLogistico/chls/chls/top_module.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/tools/Xilinx/Vitis_HLS/2023.1/include/etc -I/home/arthur/MapaLogistico/chls -I/tools/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -I/tools/Xilinx/Vitis_HLS/2023.1/include -I/tools/Xilinx/Vitis_HLS/2023.1/lnx64/tools/auto_cc/include -I/tools/Xilinx/Vitis_HLS/2023.1/lnx64/tools/systemc/include -I/home/arthur/Vitis_Libraries/security/L1/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/top_module.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


