# Device path
LOCAL_PATH := device/coolpad/CP8298_I00

# Device board elements
include $(LOCAL_PATH)/board/*.mk

# Device vendor board
-include vendor/coolpad/CP8298_I00/BoardConfigVendor.mk

#######################################################################


# Kernel
TARGET_KMODULES := true
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Flags
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# System.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

#BLOCK_BASED_OTA := false