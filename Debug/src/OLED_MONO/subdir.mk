################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/OLED_MONO/OLED_Driver.c \
../src/OLED_MONO/OLED_HWIF.c 

OBJS += \
./src/OLED_MONO/OLED_Driver.o \
./src/OLED_MONO/OLED_HWIF.o 

C_DEPS += \
./src/OLED_MONO/OLED_Driver.d \
./src/OLED_MONO/OLED_HWIF.d 


# Each subdirectory must supply rules for building sources it contributes
src/OLED_MONO/%.o: ../src/OLED_MONO/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -DCORE_M3 -D__LPC17XX__ -I"C:\Users\TEMP.HEPIANET\Desktop\LPC1769\malib" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


