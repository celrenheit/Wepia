################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Peripherals/SPI/LPC17xx_SPI.c 

OBJS += \
./src/Peripherals/SPI/LPC17xx_SPI.o 

C_DEPS += \
./src/Peripherals/SPI/LPC17xx_SPI.d 


# Each subdirectory must supply rules for building sources it contributes
src/Peripherals/SPI/%.o: ../src/Peripherals/SPI/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -DCORE_M3 -D__LPC17XX__ -I"C:\Users\TEMP.HEPIANET\Desktop\LPC1769\malib" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


