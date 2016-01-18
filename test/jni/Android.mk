##### pre-built lfds700 module #####

PROJ_LOCAL_PATH := $(call my-dir)

LOCAL_PATH := $(PROJ_LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE     := lfds700


ifeq ($(LIBLFDS_LIB_TYPE),shared)
# shared library
LOCAL_SRC_FILES  := ../../liblfds/obj/local/$(TARGET_ARCH_ABI)/liblfds700.so
include $(PREBUILT_SHARED_LIBRARY)
else
# static library
LOCAL_SRC_FILES  := ../../liblfds/obj/local/$(TARGET_ARCH_ABI)/liblfds700.a
include $(PREBUILT_STATIC_LIBRARY)
endif



##### lfds700_test module #####

LOCAL_PATH := $(PROJ_LOCAL_PATH)

include $(CLEAR_VARS)

SRCDIR  := $(LOCAL_PATH)/src
INCDIR  := $(LOCAL_PATH)/inc

LOCAL_MODULE    := lfds700_test
LOCAL_CFLAGS    := -Wall -Wno-strict-aliasing -Wno-unused-but-set-variable -Wno-unknown-pragmas -std=c99 $(GCCARCH) -pthread -I"$(SRCDIR)" -I"$(INCDIR)"
LOCAL_SHARED_LIBRARIES := -lpthread -lc -lm

ifeq ($(LIBLFDS_LIB_TYPE),shared)
LOCAL_SHARED_LIBRARIES += lfds700
else
LOCAL_STATIC_LIBRARIES += lfds700
endif

LOCAL_SRC_FILES := \
	src/main.c \
	src/misc.c \
	src/test_lfds700_btree_addonly_unbalanced.c \
	src/test_lfds700_btree_addonly_unbalanced_alignment.c \
	src/test_lfds700_btree_addonly_unbalanced_random_adds_fail.c \
	src/test_lfds700_btree_addonly_unbalanced_random_adds_fail_and_overwrite.c \
	src/test_lfds700_btree_addonly_unbalanced_random_adds_overwrite.c \
	src/test_lfds700_freelist.c \
	src/test_lfds700_freelist_alignment.c \
	src/test_lfds700_freelist_popping.c \
	src/test_lfds700_freelist_popping_and_pushing.c \
	src/test_lfds700_freelist_pushing.c \
	src/test_lfds700_freelist_rapid_popping_and_pushing.c \
	src/test_lfds700_hash_addonly.c \
	src/test_lfds700_hash_addonly_alignment.c \
	src/test_lfds700_hash_addonly_iterate.c \
	src/test_lfds700_hash_addonly_random_adds_fail.c \
	src/test_lfds700_hash_addonly_random_adds_fail_and_overwrite.c \
	src/test_lfds700_hash_addonly_random_adds_overwrite.c \
	src/test_lfds700_list_addonly_ordered_singlylinked.c \
	src/test_lfds700_list_addonly_ordered_singlylinked_alignment.c \
	src/test_lfds700_list_addonly_ordered_singlylinked_new_ordered.c \
	src/test_lfds700_list_addonly_ordered_singlylinked_new_ordered_with_cursor.c \
	src/test_lfds700_list_addonly_singlylinked_unordered.c \
	src/test_lfds700_list_addonly_singlylinked_unordered_alignment.c \
	src/test_lfds700_list_addonly_singlylinked_unordered_new_after.c \
	src/test_lfds700_list_addonly_singlylinked_unordered_new_end.c \
	src/test_lfds700_list_addonly_singlylinked_unordered_new_start.c \
	src/test_lfds700_porting_abstraction_layer_atomic.c \
	src/test_lfds700_porting_abstraction_layer_atomic_cas.c \
	src/test_lfds700_porting_abstraction_layer_atomic_dcas.c \
	src/test_lfds700_porting_abstraction_layer_atomic_exchange.c \
	src/test_lfds700_queue.c \
	src/test_lfds700_queue_alignment.c \
	src/test_lfds700_queue_bounded_singleconsumer_singleproducer.c \
	src/test_lfds700_queue_bounded_singleconsumer_singleproducer_dequeuing.c \
	src/test_lfds700_queue_bounded_singleconsumer_singleproducer_enqueuing.c \
	src/test_lfds700_queue_bounded_singleconsumer_singleproducer_enqueuing_and_dequeuing.c \
	src/test_lfds700_queue_dequeuing.c \
	src/test_lfds700_queue_enqueuing.c \
	src/test_lfds700_queue_enqueuing_and_dequeuing.c \
	src/test_lfds700_queue_enqueuing_and_dequeuing_with_free.c \
	src/test_lfds700_queue_enqueuing_with_malloc_and_dequeuing_with_free.c \
	src/test_lfds700_queue_rapid_enqueuing_and_dequeuing.c \
	src/test_lfds700_ringbuffer.c \
	src/test_lfds700_ringbuffer_reading.c \
	src/test_lfds700_ringbuffer_reading_and_writing.c \
	src/test_lfds700_ringbuffer_writing.c \
	src/test_lfds700_stack.c \
	src/test_lfds700_stack_alignment.c \
	src/test_lfds700_stack_popping.c \
	src/test_lfds700_stack_popping_and_pushing.c \
	src/test_lfds700_stack_pushing.c \
	src/test_lfds700_stack_rapid_popping_and_pushing.c \
	src/test_porting_abstraction_layer_get_logical_core_ids.c \
	src/test_porting_abstraction_layer_thread_start.c \
	src/test_porting_abstraction_layer_thread_wait.c \
	src/util_cmdline.c \
	src/util_memory_helpers.c \
	src/util_thread_starter.c

##### build #####
include $(BUILD_EXECUTABLE)
