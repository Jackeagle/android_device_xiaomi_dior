USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/xiaomi/dior/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := dior
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Architecture
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/dior/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 earlyprintk androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --dt device/xiaomi/dior/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_CUSTOM_BOOTIMG_MK := device/xiaomi/dior/mkbootimg_pre.mk

# Partition Info 
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 #16M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 #16M 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800 #800M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6241112064 #6G
BOARD_FLASH_BLOCK_SIZE := 131072

# QCOM
BOARD_USES_QCOM_HARDWARE 	:= true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE 
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Recovery
TARGET_RECOVERY_FSTAB := device/xiaomi/dior/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_SWIPE := true
RECOVERY_FSTAB_VERSION = 2
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
