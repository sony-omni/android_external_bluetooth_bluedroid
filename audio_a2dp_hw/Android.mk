LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(TARGET_QCOM_AUDIO_VARIANT),caf-bfam)
	LOCAL_CFLAGS += -DSAMPLE_RATE_48K
endif

LOCAL_SRC_FILES:= \
	audio_a2dp_hw.c

LOCAL_C_INCLUDES += \
	. \
	$(LOCAL_PATH)/../utils/include
LOCAL_CFLAGS += $(bdroid_CFLAGS)

LOCAL_SHARED_LIBRARIES := \
	libcutils liblog

LOCAL_CFLAGS += -std=c99

LOCAL_MODULE := audio.a2dp.default
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_SHARED_LIBRARIES := libcutils liblog

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
