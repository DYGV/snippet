#!/bin/bash

# Before run this script, you should install cuda and cudnn
# and clone opencv and opencv_contrib repository from GitHub

mkdir build

cd build

cmake \
-DOPENCV_\
EXTRA_MODULES_PATH=../opencv_contrib/modules \
-DBUILD_SHARED_LIBS=OFF \
-DBUILD_TESTS=OFF \
-DBUILD_PERF_TESTS=OFF \
-DBUILD_EXAMPLES=OFF \
-DWITH_OPENEXR=OFF \
-DWITH_CUDA=ON \
-DWITH_CUBLAS=ON \
-DWITH_CUDNN=ON \
-DOPENCV_DNN_CUDA=ON \
-DWITH_TBB=ON \
-DWITH_V4L=ON \
-DWITH_GSTREAMER=ON \
-DWITH_FFMPEG=ON \
-DWITH_FFMPEG=ON \
-DWITH_GTK=ON \
-DWITH_GTK3=ON \
../opencv

make -j$(nproc)
