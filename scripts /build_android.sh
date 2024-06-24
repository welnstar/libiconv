#!/bin/bash

export ANDROID_HOST=aarch64-linux-android
export ANDROID_BUILD=linux-x86_64
export ANDROID_ARCH=arm64
export ANDROID_VERSION=24
export ANDROID_TOOLCHAIN_VERSION=4.9
export ANDROID_SYSROOT=$ANDROID_NDK/platforms/android-$ANDROID_VERSION/arch-$ANDROID_ARCH
export CFLAGS=--sysroot=$ANDROID_SYSROOT
export CPPFLAGS=--sysroot=$ANDROID_SYSROOT
export AR=$ANDROID_HOST-ar
export RANLIB=$ANDROID_HOST-ranlib
export PATH=$ANDROID_NDK/toolchains/$ANDROID_HOST-$ANDROID_TOOLCHAIN_VERSION/prebuilt/$ANDROID_BUILD/bin:$PATH
./configure --host=$ANDROID_HOST --with-sysroot=$ANDROID_SYSROOT --prefix=/home/ftpuser1/libiconv --enable-static --disable-shared
make
