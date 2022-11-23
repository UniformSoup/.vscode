#!/bin/bash

out=$(cmake --build $1)

if [[ $out =~ ^ninja: ]]; then
    echo "Nothing to build."
else
    echo "$out"
fi