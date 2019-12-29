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
  path="$1$thing"
  if [ -d $path ]
  then
    echo $thing is a directory
  elif [ -e $path ]
  then
    echo $thing is a file
  else
    echo "I don't know what $thing is..."
  fi
done
