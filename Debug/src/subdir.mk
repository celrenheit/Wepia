################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/config_LPC1769.c \
../src/core_cm3.c \
../src/cr_startup_lpc175x_6x.c \
../src/crp.c \
../src/labo4_GPIO.c \
../src/system_LPC17xx.c \
../src/uart.c 

S_SRCS += \
../src/assembleur.s 

OBJS += \
./src/assembleur.o \
./src/config_LPC1769.o \
./src/core_cm3.o \
./src/cr_startup_lpc175x_6x.o \
./src/crp.o \
./src/labo4_GPIO.o \
./src/system_LPC17xx.o \
./src/uart.o 

C_DEPS += \
./src/config_LPC1769.d \
./src/core_cm3.d \
./src/cr_startup_lpc175x_6x.d \
./src/crp.d \
./src/labo4_GPIO.d \
./src/system_LPC17xx.d \
./src/uart.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -DDEBUG -D__CODE_RED -g3 -mcpu=cortex-m3 -mthumb -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -DCORE_M3 -D__LPC17XX__ -I"C:\Users\TEMP.HEPIANET\Desktop\LPC1769\malib" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cr_startup_lpc175x_6x.o: ../src/cr_startup_lpc175x_6x.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -DCORE_M3 -D__LPC17XX__ -I"C:\Users\TEMP.HEPIANET\Desktop\LPC1769\malib" -Os -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/cr_startup_lpc175x_6x.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


