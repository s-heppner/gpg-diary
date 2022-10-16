#!/bin/bash

# Make sure the data directory is empty when calling this!

# Make the data directory, if it does not yet exist
mkdir -p ./data

# Decrypt the `data.gpg` archive
gpgtar --decrypt --directory . data.gpg

