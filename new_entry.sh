#!/bin/bash

NOW=$(date +"%Y-%m-%d")
FILE=./data/$NOW.md
if test -f "$FILE"; then
    echo "$FILE already exists."
    exit
fi
echo "Generating $FILE"
touch $FILE
echo "# $NOW" > $FILE
echo "Waiting for editor to close"
/bin/vim $FILE
echo "Done"

