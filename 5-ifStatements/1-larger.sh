#!/bin/bash

if [ $# != 2 ]
then
  echo please input exactly two integers
  exit 1
fi

if [ $1 -gt $2 ]
then
  echo $1
else
  echo $2
fi
