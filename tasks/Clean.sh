#!/bin/bash

cmake --build Debug --target clean > /dev/null
cmake --build Release --target clean > /dev/null

if [ $? -eq 0 ];
then
    echo "Cleaned."
fi