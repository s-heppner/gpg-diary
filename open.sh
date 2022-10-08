#!/bin/bash

# Make sure the data directory is empty when calling this!

mkdir -p ./data
gpgtar --decrypt --directory . data.gpg

