#!/bin/bash

if [[ $1 =~ \.(cpp|hpp|c|h|cc|hh|cxx|hxx)$ ]];
then
    temp=$(mktemp /tmp/XXX --suffix .$(basename $1).s)
    gcc -fno-asynchronous-unwind-tables -fno-exceptions -ffunction-sections -fdata-sections \
        -funroll-loops -fno-rtti -Os -masm=intel -march=haswell -fverbose-asm \
        -S "$1" -o "$temp"
    if [ $? -eq 0 ]
    then
        code "$temp"
        echo "Viewing Assembly For: $1"
    else
        echo "Could Not Compile: $1"
    fi
else
    echo "$1 is not a C or C++ file."
fi
