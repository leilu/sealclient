LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dlua_shared

LOCAL_MODULE_FILENAME := libcocos2dlua

LOCAL_CFLAGS := \
 -DSQLITE_HAS_CODEC \
 -DCODEC_TYPE=CODEC_TYPE_AES128

LOCAL_PLUGINS_SRC_FILE_CLASSES := $(shell find $(LOCAL_PATH)/../../plugins -name *.c* | grep -v "wxsqlite3") \
                                   $(shell find $(LOCAL_PATH)/../../plugins/wxsqlite3 -name sqlite3secure.c) 

LOCAL_SRC_FILE_CLASSES := $(shell find $(LOCAL_PATH)/../../Classes -name *.cpp) \


LOCAL_SRC_FILES := \
					hellolua/main.cpp \
					../../lua-auto-binding/lua_custlua_auto.cpp \
					$(LOCAL_PLUGINS_SRC_FILE_CLASSES:$(LOCAL_PATH)/%=%) \
					$(LOCAL_SRC_FILE_CLASSES:$(LOCAL_PATH)/%=%) \
					../../Classes/ide-support/lua_debugger.c

LOCAL_C_INCLUDES := \
					$(LOCAL_PATH)/../../Classes \
					$(LOCAL_PATH)/../../../cocos2d-x/external \
					$(LOCAL_PATH)/../../../cocos2d-x/tools/simulator/libsimulator/lib \
					$(LOCAL_PATH)/../../../cocos2d-x/tools/simulator/libsimulator/lib/protobuf-lite

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes \
					$(LOCAL_PATH)/../../../cocos2d-x/external \
					$(LOCAL_PATH)/../../Classes/lua_bridge \
					$(LOCAL_PATH)/../../lua-auto-binding \
                    $(shell find $(LOCAL_PATH)/../../plugins -type d)

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END

LOCAL_STATIC_LIBRARIES := cocos2d_lua_static
LOCAL_STATIC_LIBRARIES += cocos2d_simulator_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,scripting/lua-bindings/proj.android)
$(call import-module,tools/simulator/libsimulator/proj.android)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END