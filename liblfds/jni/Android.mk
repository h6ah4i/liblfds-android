##### liblfds700 module #####

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

SRCDIR  := $(LOCAL_PATH)/src
INCDIR  := $(LOCAL_PATH)/inc

LOCAL_MODULE    := lfds700
LOCAL_CFLAGS    := -fno-strict-aliasing -Wall -Werror -Wno-unknown-pragmas -Wno-unused-but-set-variable -Wno-unused-variable -std=c99 $(GCCARCH) -pthread -I"$(SRCDIR)" -I"$(INCDIR)"
LOCAL_SRC_FILES := \
	src/lfds700_btree_addonly_unbalanced/lfds700_btree_addonly_unbalanced_cleanup.c \
	src/lfds700_btree_addonly_unbalanced/lfds700_btree_addonly_unbalanced_get.c \
	src/lfds700_btree_addonly_unbalanced/lfds700_btree_addonly_unbalanced_init.c \
	src/lfds700_btree_addonly_unbalanced/lfds700_btree_addonly_unbalanced_insert.c \
	src/lfds700_btree_addonly_unbalanced/lfds700_btree_addonly_unbalanced_query.c \
	src/lfds700_freelist/lfds700_freelist_cleanup.c \
	src/lfds700_freelist/lfds700_freelist_init.c \
	src/lfds700_freelist/lfds700_freelist_pop.c \
	src/lfds700_freelist/lfds700_freelist_push.c \
	src/lfds700_freelist/lfds700_freelist_query.c \
	src/lfds700_hash_addonly/lfds700_hash_addonly_cleanup.c \
	src/lfds700_hash_addonly/lfds700_hash_addonly_get.c \
	src/lfds700_hash_addonly/lfds700_hash_addonly_init.c \
	src/lfds700_hash_addonly/lfds700_hash_addonly_insert.c \
	src/lfds700_hash_addonly/lfds700_hash_addonly_iterate.c \
	src/lfds700_hash_addonly/lfds700_hash_addonly_query.c \
	src/lfds700_list_addonly_ordered_singlylinked/lfds700_list_addonly_ordered_singlylinked_cleanup.c \
	src/lfds700_list_addonly_ordered_singlylinked/lfds700_list_addonly_ordered_singlylinked_get.c \
	src/lfds700_list_addonly_ordered_singlylinked/lfds700_list_addonly_ordered_singlylinked_init.c \
	src/lfds700_list_addonly_ordered_singlylinked/lfds700_list_addonly_ordered_singlylinked_insert.c \
	src/lfds700_list_addonly_ordered_singlylinked/lfds700_list_addonly_ordered_singlylinked_query.c \
	src/lfds700_list_addonly_singlylinked_unordered/lfds700_list_addonly_singlylinked_unordered_cleanup.c \
	src/lfds700_list_addonly_singlylinked_unordered/lfds700_list_addonly_singlylinked_unordered_get.c \
	src/lfds700_list_addonly_singlylinked_unordered/lfds700_list_addonly_singlylinked_unordered_init.c \
	src/lfds700_list_addonly_singlylinked_unordered/lfds700_list_addonly_singlylinked_unordered_insert.c \
	src/lfds700_list_addonly_singlylinked_unordered/lfds700_list_addonly_singlylinked_unordered_query.c \
	src/lfds700_misc/lfds700_misc_cleanup.c \
	src/lfds700_misc/lfds700_misc_globals.c \
	src/lfds700_misc/lfds700_misc_init.c \
	src/lfds700_misc/lfds700_misc_prng.c \
	src/lfds700_misc/lfds700_misc_query.c \
	src/lfds700_queue/lfds700_queue_cleanup.c \
	src/lfds700_queue/lfds700_queue_dequeue.c \
	src/lfds700_queue/lfds700_queue_enqueue.c \
	src/lfds700_queue/lfds700_queue_init.c \
	src/lfds700_queue/lfds700_queue_query.c \
	src/lfds700_queue_bounded_singleconsumer_singleproducer/lfds700_queue_bounded_singleconsumer_singleproducer_cleanup.c \
	src/lfds700_queue_bounded_singleconsumer_singleproducer/lfds700_queue_bounded_singleconsumer_singleproducer_dequeue.c \
	src/lfds700_queue_bounded_singleconsumer_singleproducer/lfds700_queue_bounded_singleconsumer_singleproducer_enqueue.c \
	src/lfds700_queue_bounded_singleconsumer_singleproducer/lfds700_queue_bounded_singleconsumer_singleproducer_init.c \
	src/lfds700_queue_bounded_singleconsumer_singleproducer/lfds700_queue_bounded_singleconsumer_singleproducer_query.c \
	src/lfds700_ringbuffer/lfds700_ringbuffer_cleanup.c \
	src/lfds700_ringbuffer/lfds700_ringbuffer_init.c \
	src/lfds700_ringbuffer/lfds700_ringbuffer_query.c \
	src/lfds700_ringbuffer/lfds700_ringbuffer_read.c \
	src/lfds700_ringbuffer/lfds700_ringbuffer_write.c \
	src/lfds700_stack/lfds700_stack_cleanup.c \
	src/lfds700_stack/lfds700_stack_init.c \
	src/lfds700_stack/lfds700_stack_pop.c \
	src/lfds700_stack/lfds700_stack_push.c \
	src/lfds700_stack/lfds700_stack_query.c

##### build #####
ifeq ($(LIBLFDS_LIB_TYPE),shared)
include $(BUILD_SHARED_LIBRARY)
else
include $(BUILD_STATIC_LIBRARY)
endif
