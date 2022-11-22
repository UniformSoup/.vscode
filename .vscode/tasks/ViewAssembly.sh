#!/bin/bash

if [[ $1 =~ .(cpp|hpp|c|h|cc|hh|cxx|hxx)$ ]];
then
    gcc -fno-asynchronous-unwind-tables -fno-exceptions \
        -funroll-loops -fno-rtti -O -masm=intel -march=haswell -fverbose-asm \
        -S "$1" -o "/tmp/$1.s"
    code "/tmp/$1.s"
else
    echo "The current file is not a C or C++ file extension."
fi