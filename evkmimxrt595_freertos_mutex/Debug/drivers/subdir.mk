################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_cache.c \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_common_arm.c \
../drivers/fsl_flexcomm.c \
../drivers/fsl_flexspi.c \
../drivers/fsl_gpio.c \
../drivers/fsl_iap.c \
../drivers/fsl_power.c \
../drivers/fsl_reset.c \
../drivers/fsl_usart.c 

C_DEPS += \
./drivers/fsl_cache.d \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_common_arm.d \
./drivers/fsl_flexcomm.d \
./drivers/fsl_flexspi.d \
./drivers/fsl_gpio.d \
./drivers/fsl_iap.d \
./drivers/fsl_power.d \
./drivers/fsl_reset.d \
./drivers/fsl_usart.d 

OBJS += \
./drivers/fsl_cache.o \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_common_arm.o \
./drivers/fsl_flexcomm.o \
./drivers/fsl_flexspi.o \
./drivers/fsl_gpio.o \
./drivers/fsl_iap.o \
./drivers/fsl_power.o \
./drivers/fsl_reset.o \
./drivers/fsl_usart.o 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT595SFFOC -DCPU_MIMXRT595SFFOC_cm33 -DBOOT_HEADER_ENABLE=1 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/source" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/freertos/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/drivers" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/device" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/utilities" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/component/uart" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/component/serial_manager" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/component/lists" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/flash_config" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/freertos/freertos_kernel/include" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/CMSIS" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/board" -I"/Users/148865/Documents/MCUXpressoIDE_11.6.1_8255/workspace/evkmimxrt595_freertos_mutex/evkmimxrt595/rtos_examples/freertos_mutex" -O0 -fno-common -g3 -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-drivers

clean-drivers:
	-$(RM) ./drivers/fsl_cache.d ./drivers/fsl_cache.o ./drivers/fsl_clock.d ./drivers/fsl_clock.o ./drivers/fsl_common.d ./drivers/fsl_common.o ./drivers/fsl_common_arm.d ./drivers/fsl_common_arm.o ./drivers/fsl_flexcomm.d ./drivers/fsl_flexcomm.o ./drivers/fsl_flexspi.d ./drivers/fsl_flexspi.o ./drivers/fsl_gpio.d ./drivers/fsl_gpio.o ./drivers/fsl_iap.d ./drivers/fsl_iap.o ./drivers/fsl_power.d ./drivers/fsl_power.o ./drivers/fsl_reset.d ./drivers/fsl_reset.o ./drivers/fsl_usart.d ./drivers/fsl_usart.o

.PHONY: clean-drivers

