# pase libarry type
if [ "$1" = "shared" ]; then
	LIBLFDS_LIB_TYPE=shared
elif [ "$1" = "static" ]; then
	LIBLFDS_LIB_TYPE=static
else
	# default: static
	LIBLFDS_LIB_TYPE=static
fi

# cleanup
rm -f ./jni/src
rm -f ./jni/inc
rm -rf ./obj
rm -rf ./libs

# make symbolic links
ln -fs ../../liblfds7.0.0/test/src ./jni/src
ln -fs ../../liblfds7.0.0/liblfds700/inc ./jni/inc

apply patch
cd ./jni
patch -N -p2 < ../mods_for_android.patch
cd ../

# build
NDK_PROJECT_PATH=./ ndk-build LIBLFDS_LIB_TYPE=$LIBLFDS_LIB_TYPE

