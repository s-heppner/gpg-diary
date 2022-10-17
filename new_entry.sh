#!/bin/bash

# Create a timestamp in ISO 8601 format (YYYY-MM-DD) (the best one)
NOW=$(date +"%Y-%m-%d")

# Create a file with the name "YYYY-MM-DD.md" inside the data directory
# For that, check if a file like that already exists, if so, do nothing and exit 
FILE=./data/$NOW.md
if test -f "$FILE"; then
    echo "$FILE already exists."
    exit
fi

# If we arrive here, the file does not exist, so we can actually create it
echo "Generating $FILE"
touch $FILE

# Here you can echo whatever you want into the file, creating sections or whatever you want
# I for example want something that looks like this:
# ############# 
# # 2022-10-16
#
# ## Work
#
# 
# ## Private
# 
# ############# 
# Just adapt everything between the `cat` and the `EOF` line
cat << EOF > $FILE
# $NOW

## Work

## Private

EOF
# Open the file in an editor (you can adapt this line to an editor of your choice)
echo "Waiting for editor to close"
vim $FILE

# We're done
echo "Done"

