#!/bin/bash

excluded_directories=('Debug' 'Release' '.vscode')

excluded_directories=$(printf "|%s" "${excluded_directories[@]}")
excluded_directories=${excluded_directories:1}

echo -n "Lines of C and C++: "
find -regex '.*\.\(cpp\|hpp\|\c\|h\|cc\|hh\|cxx\|hxx\)$' | \
    grep -E -i -v "^./($excluded_directories)" | \
        xargs awk 'END{print NR}'