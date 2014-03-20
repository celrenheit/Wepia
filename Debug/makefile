################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/Peripherals/SysTick/subdir.mk
-include src/Peripherals/SPI/subdir.mk
-include src/Peripherals/PCLKPWR/subdir.mk
-include src/OLED_MONO/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Wepia2.axf

# Tool invocations
Wepia2.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"C:\Users\TEMP.HEPIANET\Desktop\LPC1769\malib\Debug" -Xlinker -Map="Wepia2.map" -Xlinker --gc-sections -mcpu=cortex-m3 -mthumb -T "Wepia2_Debug.ld" -o "Wepia2.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) Wepia2.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "Wepia2.axf"; # arm-none-eabi-objcopy -O binary "Wepia2.axf" "Wepia2.bin" ; checksum -p LPC1769 -d "Wepia2.bin";
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
