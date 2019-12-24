#!/bin/bash

echo "making a dated copy of $1"
DATE_STRING=$(date -I)
SUFFIX=${1#*.}
NAME=$(basename $1 .$SUFFIX)
cp $1 "$(echo $NAME)_$(echo $DATE_STRING).$SUFFIX"
