#!/bin/bash

# Return Code Trick: https://stackoverflow.com/a/43901140/13357306
if [ -d $1 ];
then
    while read -r line || { ec=$line && break; }
    do
        line=${line//$'\r'/}
        if [ "$line" == "ninja: no work to do." ];
        then
            echo "Nothing to do."
        else
            echo "$line"
        fi
    done < <(cmake --build $1; printf $?)
    exit $ec
else
    echo "$1 directory does not exist, you may need to configure CMake."
    exit 1
fi