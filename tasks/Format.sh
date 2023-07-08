#!/bin/bash

excluded_directories=('Debug' 'Release' '.vscode' 'Doxygen' 'glfw' 'glm')
excluded_directories=$(printf "|%s" "${excluded_directories[@]}")
excluded_directories=${excluded_directories:1}

format_files=$(find . | grep ".*\.\(cpp\|hpp\|\c\|h\|cc\|hh\|cxx\|hxx\)$" | grep -Eiv "^./($excluded_directories)")

for file in $format_files
do
  echo "Formatting $file"
  clang-format -i "$file" -style=file: ./.vscode/.clang-format

done