#!/bin/bash

echo "making a dated copy of $1"
DATE_STRING=$(date -I)
cp $1 "$(echo $DATE_STRING)_$1"
