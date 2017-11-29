LOCAL_PATH:= $(call my-dir)/../

# libusbdemon

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  $(LOCAL_PATH)/src/libusb/core.c \
  $(LOCAL_PATH)/src/libusb/descriptor.c \
  $(LOCAL_PATH)/src/libusb/hotplug.c \
  $(LOCAL_PATH)/src/libusb/io.c \
  $(LOCAL_PATH)/src/libusb/sync.c \
  $(LOCAL_PATH)/src/libusb/strerror.c \
  $(LOCAL_PATH)/src/libusb/linux_usbfs.c \
  $(LOCAL_PATH)/src/libusb/poll_posix.c \
  $(LOCAL_PATH)/src/libusb/threads_posix.c \
  $(LOCAL_PATH)/src/libusb/linux_netlink.c

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/include/libusb \


#for plist 
LOCAL_SRC_FILES += \
                   $(LOCAL_PATH)/src/libplist/Array.cpp \
                   $(LOCAL_PATH)/src/libplist/base64.c \
                   $(LOCAL_PATH)/src/libplist/Boolean.cpp \
                   $(LOCAL_PATH)/src/libplist/bplist.c \
                   $(LOCAL_PATH)/src/libplist/bytearray.c \
                   $(LOCAL_PATH)/src/libplist/Data.cpp \
                   $(LOCAL_PATH)/src/libplist/Date.cpp \
                   $(LOCAL_PATH)/src/libplist/Dictionary.cpp \
                   $(LOCAL_PATH)/src/libplist/hashtable.c \
                   $(LOCAL_PATH)/src/libplist/Integer.cpp \
                   $(LOCAL_PATH)/src/libplist/Key.cpp \
                   $(LOCAL_PATH)/src/libplist/Node.cpp \
                   $(LOCAL_PATH)/src/libplist/plist.c \
                   $(LOCAL_PATH)/src/libplist/ptrarray.c \
                   $(LOCAL_PATH)/src/libplist/Real.cpp \
                   $(LOCAL_PATH)/src/libplist/String.cpp \
                   $(LOCAL_PATH)/src/libplist/Structure.cpp \
                   $(LOCAL_PATH)/src/libplist/time64.c \
                   $(LOCAL_PATH)/src/libplist/Uid.cpp \
                   $(LOCAL_PATH)/src/libplist/xplist.c \
                   $(LOCAL_PATH)/src/libplist/cnary.c \
                   $(LOCAL_PATH)/src/libplist/iterator.c \
                   $(LOCAL_PATH)/src/libplist/list.c \
                   $(LOCAL_PATH)/src/libplist/node.c \
                   $(LOCAL_PATH)/src/libplist/node_iterator.c \
                   $(LOCAL_PATH)/src/libplist/node_list.c 

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/include \
  $(LOCAL_PATH)/include/plist \
  $(LOCAL_PATH)/src/libplist \



LOCAL_SRC_FILES += \
	               $(LOCAL_PATH)/src/usbmuxd/client.c \
                   $(LOCAL_PATH)/src/usbmuxd/conf.c \
                   $(LOCAL_PATH)/src/usbmuxd/device.c \
                   $(LOCAL_PATH)/src/usbmuxd/log.c \
                   $(LOCAL_PATH)/src/usbmuxd/main.c \
                   $(LOCAL_PATH)/src/usbmuxd/preflight.c \
                   $(LOCAL_PATH)/src/usbmuxd/usb.c \
                   $(LOCAL_PATH)/src/usbmuxd/utils.c 


LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/src/usbmuxd \



LOCAL_LDLIBS := -llog

LOCAL_CFLAGS += -pie -fPIE

LOCAL_MODULE := libusbdemon

include $(BUILD_SHARED_LIBRARY)