#
# Copyright (C) 2023 The Android Open Source Project
#

ifneq ($(filter c2q, $(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
