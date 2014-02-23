##### liblfds611 module #####

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

SRCDIR  := $(LOCAL_PATH)/src
INCDIR  := $(LOCAL_PATH)/inc

LOCAL_MODULE    := lfds611
LOCAL_CFLAGS    := -Wall -Wno-unknown-pragmas -std=c99 $(GCCARCH) -pthread -I"$(SRCDIR)" -I"$(INCDIR)"
LOCAL_SRC_FILES := \
    src/lfds611_abstraction/lfds611_abstraction_free.c \
    src/lfds611_abstraction/lfds611_abstraction_malloc.c \
    src/lfds611_freelist/lfds611_freelist_delete.c \
    src/lfds611_freelist/lfds611_freelist_get_and_set.c \
    src/lfds611_freelist/lfds611_freelist_new.c \
    src/lfds611_freelist/lfds611_freelist_pop_push.c \
    src/lfds611_freelist/lfds611_freelist_query.c \
    src/lfds611_liblfds/lfds611_liblfds_abstraction_test_helpers.c \
    src/lfds611_liblfds/lfds611_liblfds_aligned_free.c \
    src/lfds611_liblfds/lfds611_liblfds_aligned_malloc.c \
    src/lfds611_queue/lfds611_queue_delete.c \
    src/lfds611_queue/lfds611_queue_new.c \
    src/lfds611_queue/lfds611_queue_query.c \
    src/lfds611_queue/lfds611_queue_queue.c \
    src/lfds611_ringbuffer/lfds611_ringbuffer_delete.c \
    src/lfds611_ringbuffer/lfds611_ringbuffer_get_and_put.c \
    src/lfds611_ringbuffer/lfds611_ringbuffer_new.c \
    src/lfds611_ringbuffer/lfds611_ringbuffer_query.c \
    src/lfds611_slist/lfds611_slist_delete.c \
    src/lfds611_slist/lfds611_slist_get_and_set.c \
    src/lfds611_slist/lfds611_slist_link.c \
    src/lfds611_slist/lfds611_slist_new.c \
    src/lfds611_stack/lfds611_stack_delete.c \
    src/lfds611_stack/lfds611_stack_new.c \
    src/lfds611_stack/lfds611_stack_push_pop.c \
    src/lfds611_stack/lfds611_stack_query.c

##### build #####
ifeq ($(LIBLFDS_LIB_TYPE),shared)
include $(BUILD_SHARED_LIBRARY)
else
include $(BUILD_STATIC_LIBRARY)
endif
