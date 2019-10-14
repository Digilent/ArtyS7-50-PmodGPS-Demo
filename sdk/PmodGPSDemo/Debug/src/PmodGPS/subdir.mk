################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/PmodGPS/PmodGPS.c \
../src/PmodGPS/PmodGPS_selftest.c \
../src/PmodGPS/xuartns550.c \
../src/PmodGPS/xuartns550_format.c \
../src/PmodGPS/xuartns550_intr.c \
../src/PmodGPS/xuartns550_l.c \
../src/PmodGPS/xuartns550_options.c \
../src/PmodGPS/xuartns550_selftest.c \
../src/PmodGPS/xuartns550_stats.c 

OBJS += \
./src/PmodGPS/PmodGPS.o \
./src/PmodGPS/PmodGPS_selftest.o \
./src/PmodGPS/xuartns550.o \
./src/PmodGPS/xuartns550_format.o \
./src/PmodGPS/xuartns550_intr.o \
./src/PmodGPS/xuartns550_l.o \
./src/PmodGPS/xuartns550_options.o \
./src/PmodGPS/xuartns550_selftest.o \
./src/PmodGPS/xuartns550_stats.o 

C_DEPS += \
./src/PmodGPS/PmodGPS.d \
./src/PmodGPS/PmodGPS_selftest.d \
./src/PmodGPS/xuartns550.d \
./src/PmodGPS/xuartns550_format.d \
./src/PmodGPS/xuartns550_intr.d \
./src/PmodGPS/xuartns550_l.d \
./src/PmodGPS/xuartns550_options.d \
./src/PmodGPS/xuartns550_selftest.d \
./src/PmodGPS/xuartns550_stats.d 


# Each subdirectory must supply rules for building sources it contributes
src/PmodGPS/%.o: ../src/PmodGPS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../PmodGPSDemo_bsp/microblaze_0/include -mlittle-endian -mcpu=v11.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


