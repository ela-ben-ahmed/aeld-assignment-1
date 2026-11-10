#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Error: Missing arguments. Please provide filesdir and searchstr."
    exit 1
fi

FILESDIR="$1"
SEARCHSTR="$2"

if [ ! -d "$FILESDIR" ]; then
    echo "Error: Path $FILESDIR is not a directory."
    exit 1
fi


X=$(find "$FILESDIR" -type f | wc -l)


Y=$(grep -r "$SEARCHSTR" "$FILESDIR" 2>/dev/null | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"

exit 0
