#!/bin/bash

gpgtar --output ./data.gpg --symmetric ./data
rm -r ./data/*
