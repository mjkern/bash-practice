#!/bin/bash

if [ ! $# -eq 1 ]
then
  echo please input exactly one string
  exit 1
fi

if [ -e $1 ]
then
  echo $1 exists
  if [ -x $1 ]
  then
    echo and is executable
  else
    echo but is not executable
  fi
else
  echo $1 does not exist
fi
