################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../flash_config/flash_config.c 

C_DEPS += \
./flash_config/flash_config.d 

OBJS += \
./flash_config/flash_config.o 


# Each subdirectory must supply rules for building sources it contributes
flash_config/%.o: ../flash_config/%.c flash_config/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT595SFFOC -DCPU_MIMXRT595SFFOC_cm33 -DBOOT_HEADER_ENABLE=1 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/source" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/freertos/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/drivers" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/device" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/utilities" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/component/uart" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/component/serial_manager" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/component/lists" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/flash_config" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/freertos/freertos_kernel/include" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/CMSIS" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/board" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/evkmimxrt595/rtos_examples/freertos_mutex" -O0 -fno-common -g3 -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-flash_config

clean-flash_config:
	-$(RM) ./flash_config/flash_config.d ./flash_config/flash_config.o

.PHONY: clean-flash_config

