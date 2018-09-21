LOCAL_PATH := $(call my-dir)

# MTD library
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	lib/libmtd.c \
	lib/libfec.c \
	lib/common.c \
	lib/libcrc32.c \
	lib/libmtd_legacy.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/lib

LOCAL_MODULE := libmtd-utils
LOCAL_STATIC_LIBRARIES := libcutils libc
include $(BUILD_STATIC_LIBRARY)

# mkfs.jffs2
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	jffsX-utils/mkfs.jffs2.c \
	jffsX-utils/rbtree.h \
	jffsX-utils/compr_zlib.c \
	jffsX-utils/compr.h \
	jffsX-utils/rbtree.c \
	jffsX-utils/compr_lzo.c \
	jffsX-utils/compr.c \
	jffsX-utils/compr_rtime.c

LOCAL_CFLAGS += \
	-DWITHOUT_LZO \
	-DWITHOUT_ACL

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	external/zlib

LOCAL_MODULE := utility_mkfs_jffs2
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_STEM := mkfs.jffs2
LOCAL_STATIC_LIBRARIES := libmtd-utils libcutils libc libz
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false
include $(BUILD_EXECUTABLE)

# UBI library
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	lib/libubi.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/lib

LOCAL_MODULE := libubi
LOCAL_STATIC_LIBRARIES := libcutils libc
include $(BUILD_STATIC_LIBRARY)

# libubigen
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	lib/libubigen.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/lib

LOCAL_MODULE := libubigen
LOCAL_STATIC_LIBRARIES := libcutils libc
include $(BUILD_STATIC_LIBRARY)

# liscan
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	lib/libscan.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/lib

LOCAL_MODULE := libscan
LOCAL_STATIC_LIBRARIES := libcutils libc
include $(BUILD_STATIC_LIBRARY)

# ubimkvol
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	ubi-utils/ubimkvol.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include

LOCAL_MODULE := utility_ubimkvol
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_STEM := ubimkvol
LOCAL_STATIC_LIBRARIES := libmtd-utils libubi libcutils libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false
include $(BUILD_EXECUTABLE)

# ubiattach
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	ubi-utils/ubiattach.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include

LOCAL_MODULE := utility_ubiattach
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_STEM := ubiattach
LOCAL_STATIC_LIBRARIES := libmtd-utils libubi libcutils libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false
include $(BUILD_EXECUTABLE)

# ubidetach
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	ubi-utils/ubidetach.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include

LOCAL_MODULE := utility_ubidetach
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_STEM := ubidetach
LOCAL_STATIC_LIBRARIES := libmtd-utils libubi libcutils libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false
include $(BUILD_EXECUTABLE)


# ubiblock
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	ubi-utils/ubiblock.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include

LOCAL_MODULE := utility_ubiblock
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_STEM := ubiblock
LOCAL_STATIC_LIBRARIES := libmtd-utils libubi libcutils libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false
include $(BUILD_EXECUTABLE)

# ubiformat
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	ubi-utils/ubiformat.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include

LOCAL_MODULE := utility_ubiformat
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_STEM := ubiformat
LOCAL_STATIC_LIBRARIES := libmtd-utils libubi libubigen libscan libcutils libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false
include $(BUILD_EXECUTABLE)

# ubiupdatevol
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	ubi-utils/ubiupdatevol.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include

LOCAL_MODULE := utility_ubiupdatevol
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_STEM := ubiupdatevol
LOCAL_STATIC_LIBRARIES := libmtd-utils libubi libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false
include $(BUILD_EXECUTABLE)

# ubiupdatevol
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	ubi-utils/ubiupdatevol.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include

LOCAL_MODULE := recovery_ubiupdatevol
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)
LOCAL_MODULE_STEM := ubiupdatevol
LOCAL_STATIC_LIBRARIES := libmtd-utils libubi libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false
include $(BUILD_EXECUTABLE)
