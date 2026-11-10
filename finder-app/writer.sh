#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Error: Missing arguments. Please provide writefile and writestr."
    exit 1
fi

WRITEFILE="$1"
WRITESTR="$2"

DIRNAME=$(dirname "$WRITEFILE")


mkdir -p "$DIRNAME"
if [ $? -ne 0 ]; then
    echo "Error: Could not create directory path $DIRNAME"
    exit 1
fi


echo "$WRITESTR" > "$WRITEFILE"
if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to file $WRITEFILE"
    exit 1
fi

exit 0
