LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE :=boxworld
LOCAL_MODULE_TAGS := optional
LOCAL_BUILD_MODULE_STEM := package.apk
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_PATH   := $(PRODUCT_OUT)/system/app


LOCAL_CERTIFICATE:=PRESIGNED
#LOCAL_CERTIFICATE:=platform

#LOCAL_PREBUILT_JNI_LIBS := \
#@lib/armeabi-v7a/libsvrapi.so \
#@lib/armeabi-v7a/libsvrplugin.so

#if our target arch is only arm else comment this line
LOCAL_MULTILIB :=32

#TARGET_ARCH is ARM64
#TARGET_2ND_ARCH is arm
LOCAL_PREBUILT_JNI_LIBS_$(TARGET_ARCH) := lib/armeabi-v7a/libsvrapi.so
LOCAL_PREBUILT_JNI_LIBS_$(TARGET_2ND_ARCH) := lib/armeabi-v7a/libsvrapi.so





include $(BUILD_PREBUILT)
