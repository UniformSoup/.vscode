#!/bin/bash

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