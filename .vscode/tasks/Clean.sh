#!/bin/bash

cmake --build Debug --target clean > /dev/null
cmake --build Release --target clean > /dev/null
echo "Cleaned."