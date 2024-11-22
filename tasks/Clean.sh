#!/bin/bash

cmake --build Build/Debug --target clean > /dev/null
cmake --build Build/Release --target clean > /dev/null

if [ $? -eq 0 ];
then
    echo "Cleaned."
fi