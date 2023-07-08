#!/bin/bash

rm -rf Debug Release
mkdir Debug Release

cmake -S . -B Release -G Ninja -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_TOOLCHAIN_FILE=$1
cmake -S . -B Debug -G Ninja -D CMAKE_BUILD_TYPE=DEBUG -D CMAKE_TOOLCHAIN_FILE=$1