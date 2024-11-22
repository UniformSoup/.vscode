#!/bin/bash

rm -rf Build
mkdir Build/Debug Build/Release

cmake -S . -B Build/Release -G Ninja -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_TOOLCHAIN_FILE=$1
cmake -S . -B Build/Debug -G Ninja -D CMAKE_BUILD_TYPE=DEBUG -D CMAKE_TOOLCHAIN_FILE=$1