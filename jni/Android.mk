#
# Copyright � 2012 Shiva Kumar H R
# 
# Permission is hereby granted, free of charge, to any person obtaining a 
# copy of this software and associated documentation files (the "Software"), 
# to deal in the Software without restriction, including without limitation 
# the rights to use, copy, modify, merge, publish, distribute, sublicense, 
# and/or sell copies of the Software, and to permit persons to whom the 
# Software is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included 
# in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

LOCAL_PATH := $(call my-dir)

MY_LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE := complex-script-rendering

LOCAL_C_INCLUDES := $(LOCAL_PATH)/freetype/include $(LOCAL_PATH)/harfbuzz-ng/src

LOCAL_SRC_FILES := complex-script-rendering.c

LOCAL_STATIC_LIBRARIES := ft2 harfbuzz_ng

#LOCAL_SHARED_LIBRARIES := harfbuzz

LOCAL_LDLIBS := -llog

#LOCAL_CFLAGS := -g

include $(BUILD_SHARED_LIBRARY)
#$(call import-module,freetype)


include $(MY_LOCAL_PATH)/freetype/Android.mk

include $(MY_LOCAL_PATH)/harfbuzz-ng/Android.mk
