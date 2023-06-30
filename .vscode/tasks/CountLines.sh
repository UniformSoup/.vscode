#!/bin/bash

excluded_directories=('Debug' 'Release' '.vscode')

echo -n "Lines of C and C++: "

excluded_directories=$(printf "|%s" "${excluded_directories[@]}")
excluded_directories=${excluded_directories:1}

find . | grep ".*\.\(cpp\|hpp\|\c\|h\|cc\|hh\|cxx\|hxx\)$" | grep -Eiv "^./($excluded_directories)" | xargs awk 'END{print NR}'

        