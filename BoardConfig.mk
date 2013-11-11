include device/lge/msm7x27a-common/BoardConfigCommon.mk
# inherit from the proprietary version
-include vendor/lge/p700/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := p700
TARGET_ARCH := arm

BOARD_KERNEL_CMDLINE := androidboot.hardware=u0 lge.signed_image=false

#kernel
TARGET_PREBUILT_KERNEL := device/lge/p700/kernel
TARGET_KERNEL_CONFIG := cyanogenmod_u0_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7
TARGET_USE_O3 := true

## We need this for the flipped screen
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p700/recovery/graphics.c

LGE_PROJECT := l

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p700/bluetooth


