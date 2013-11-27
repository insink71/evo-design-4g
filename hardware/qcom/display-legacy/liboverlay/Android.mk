LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

LOCAL_MODULE                  := liboverlay
LOCAL_MODULE_PATH             := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS             := optional
LOCAL_C_INCLUDES              := $(common_includes) $(kernel_includes)
LOCAL_SHARED_LIBRARIES        := $(common_libs) libqdutils libmemalloc
LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"qdoverlay\"
LOCAL_CFLAGS                  += -DNO_WIFI_DISPLAY_SUPPORT
LOCAL_ADDITIONAL_DEPENDENCIES := $(common_deps)
LOCAL_SRC_FILES := \
      overlay.cpp \
      overlayCtrl.cpp \
      overlayUtils.cpp \
      overlayMdp.cpp \
      overlayRotator.cpp \
      overlayMdpRot.cpp \
      pipes/overlayGenPipe.cpp

ifeq ($(BOARD_OVERLAY_MDSS), true)
LOCAL_SRC_FILES += overlayMdssRot.cpp
endif

include $(BUILD_SHARED_LIBRARY)
