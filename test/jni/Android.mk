##### pre-built lfds611 module #####

PROJ_LOCAL_PATH := $(call my-dir)

LOCAL_PATH := $(PROJ_LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE     := lfds611


ifeq ($(LIBLFDS_LIB_TYPE),shared)
# shared library
LOCAL_SRC_FILES  := ../../liblfds/obj/local/$(TARGET_ARCH_ABI)/liblfds611.so
include $(PREBUILT_SHARED_LIBRARY)
else
# static library
LOCAL_SRC_FILES  := ../../liblfds/obj/local/$(TARGET_ARCH_ABI)/liblfds611.a
include $(PREBUILT_STATIC_LIBRARY)
endif



##### lfds611_test module #####

LOCAL_PATH := $(PROJ_LOCAL_PATH)

include $(CLEAR_VARS)

SRCDIR  := $(LOCAL_PATH)/src
INCDIR  := $(LOCAL_PATH)/inc

LOCAL_MODULE    := lfds611_test
LOCAL_CFLAGS    := -Wall -Wno-unknown-pragmas -std=c99 $(GCCARCH) -pthread -I"$(SRCDIR)" -I"$(INCDIR)"
LOCAL_SHARED_LIBRARIES := -lpthread -lc -lm

ifeq ($(LIBLFDS_LIB_TYPE),shared)
LOCAL_SHARED_LIBRARIES += lfds611
else
LOCAL_STATIC_LIBRARIES += lfds611
endif

LOCAL_SRC_FILES := \
        src/abstraction_cpu_count.c \
        src/test_abstraction.c \
        src/abstraction_thread_start.c \
        src/abstraction_thread_wait.c \
        src/benchmark_freelist.c \
        src/benchmark_queue.c \
        src/benchmark_ringbuffer.c \
        src/benchmark_stack.c \
        src/test_freelist.c \
        src/main.c \
        src/misc.c \
        src/test_queue.c \
        src/test_ringbuffer.c \
        src/test_slist.c \
        src/test_stack.c

##### build #####
include $(BUILD_EXECUTABLE)
