#!/bin/bash

excluded_directories=('Debug' 'Release' '.vscode' 'Doxygen')
excluded_directories=$(printf "|%s" "${excluded_directories[@]}")
excluded_directories=${excluded_directories:1}

format_files=$(find -regex '.*\.\(cpp\|hpp\|\c\|h\|cc\|hh\|cxx\|hxx\)$' | \
    grep -E -i -v "^./($excluded_directories)")

for file in $format_files
do
  clang-format -i "$file"
done