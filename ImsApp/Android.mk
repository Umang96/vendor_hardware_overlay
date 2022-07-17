LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ImsApp
LOCAL_SRC_FILES := Ims.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_CERTIFICATE := presigned
ifeq ($(shell test $(PLATFORM_SDK_VERSION) -ge 31 && echo OK),OK)
LOCAL_ENFORCE_USES_LIBRARIES := false
endif

include $(BUILD_PREBUILT)
