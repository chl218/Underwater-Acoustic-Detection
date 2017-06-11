################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/toplevel_tb.cpp 

OBJS += \
./testbench/toplevel_tb.o 

CPP_DEPS += \
./testbench/toplevel_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/toplevel_tb.o: C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/toplevel_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/etc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/auto_cc/include -IC:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/ap_sysc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


