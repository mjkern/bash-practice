#!/bin/bash

if [ ! $# -eq 1 ]
then
  echo please specify a directory
  exit 1
elif [ ! -d $1 ]
then
  echo $1 is not a directory
  exit 2
fi

for thing in $(ls $1)
do
  echo $thing
done
