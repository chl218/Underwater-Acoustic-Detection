################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/detect.cpp \
C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/duplicate.cpp \
C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/findpeaks.cpp \
C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/parse.cpp \
C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/threshold.cpp \
C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/toplevel.cpp 

OBJS += \
./source/detect.o \
./source/duplicate.o \
./source/findpeaks.o \
./source/parse.o \
./source/threshold.o \
./source/toplevel.o 

CPP_DEPS += \
./source/detect.d \
./source/duplicate.d \
./source/findpeaks.d \
./source/parse.d \
./source/threshold.d \
./source/toplevel.d 


# Each subdirectory must supply rules for building sources it contributes
source/detect.o: C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/detect.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/etc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/auto_cc/include -IC:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/ap_sysc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/duplicate.o: C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/duplicate.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/etc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/auto_cc/include -IC:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/ap_sysc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/findpeaks.o: C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/findpeaks.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/etc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/auto_cc/include -IC:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/ap_sysc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/parse.o: C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/parse.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/etc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/auto_cc/include -IC:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/ap_sysc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/threshold.o: C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/threshold.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/etc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/auto_cc/include -IC:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/ap_sysc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/toplevel.o: C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/toplevel.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/etc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/auto_cc/include -IC:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include -IC:/Xilinx/SDx/2016.4/Vivado_HLS/include/ap_sysc -IC:/Xilinx/SDx/2016.4/Vivado_HLS/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


