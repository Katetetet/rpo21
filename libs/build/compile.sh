#!/bin/bash

#ABI=armaebi-v7a
ABI=x86
#ABI=arm64-v8a
#ABI=x86_64

ANDROID_NDK-C:/Users/Public/ndk/23.0.7123448
TOOL_CHAIN=C:/Users/Public/ndk/23.0.7123448/build/cmake/android.toolchain.cmake
CMAKE=$HOME/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake

mkdir -p ${ABI}
cd ${ABI}

${CMAKE} ../..MBEDTLS -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 \
-DANDROID_ABI=${ABI} -DCMAKE_TOOLCHAIN_FILE=${TOOL_CHAIN} \
-DUSE_SHARED_MBEDTILS_LIBRARY=On -DENABLE_TESTING=Off

${CMAKE} --build .