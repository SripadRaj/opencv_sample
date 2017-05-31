LOCAL_PATH := $(call my-dir)

	include $(CLEAR_VARS)

	#opencv
	OPENCVROOT:= E:\opencv-3.2.0-android-sdk\OpenCV-android-sdk
	OPENCV_CAMERA_MODULES:=on
	OPENCV_INSTALL_MODULES:=on
	OPENCV_LIB_TYPE:=SHARED
	include ${OPENCVROOT}/sdk/native/jni/OpenCV.mk

	LOCAL_SRC_FILES := com_myapp_testjni_NativeClass.cpp

	LOCAL_LDLIBS += -llog
	LOCAL_MODULE := MyLibs

	include $(BUILD_SHARED_LIBRARY)