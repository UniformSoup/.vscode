#!/bin/bash

echo -n "Lines of C and C++: "

find -regex '.*\.\(cpp\|hpp\|\c\|h\|cc\|hh\|cxx\|hxx\)$' | \
    grep -E -i -v '^./(Debug|Release)' | \
        xargs awk 'END{print NR}'