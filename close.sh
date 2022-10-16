#!/bin/bash

# Lock the data folder using symmetric encryption and output the result as "data.gpg"
gpgtar --output ./data.gpg --symmetric ./data

# Remove everything inside the unlocked data folder.
rm -r ./data/*
