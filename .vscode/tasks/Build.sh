#!/bin/bash

if [ -d $1 ];
then
    while read -r line 
    do
        line=${line//$'\r'/}
        if [ "$line" == "ninja: no work to do." ];
        then
            echo "Nothing to do."
        else
            echo "$line"
        fi
    done < <(cmake --build $1)
else
    echo "$1 directory does not exist, you may need to configure CMake."
fi