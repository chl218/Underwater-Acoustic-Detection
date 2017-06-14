################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/main.cpp \
../src/signal_detection.cpp 

OBJS += \
./src/main.o \
./src/signal_detection.o 

CPP_DEPS += \
./src/main.d \
./src/signal_detection.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Compiler'
	sds++ -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<" -sds-sys-config linux -sds-proc a9_0 -sds-pf "zed"
	@echo 'Finished building: $<'
	@echo ' '


