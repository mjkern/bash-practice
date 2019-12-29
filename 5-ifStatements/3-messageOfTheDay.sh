#!/bin/bash

if [ ! $# -eq 1 ]
then
  echo "please input exactly one lowercase weekday"
  exit 1
fi

case $1 in
  sunday)
    echo gearing up
    ;;
  monday)
    echo first is the worst
    ;;
  tuesday)
    echo second it the best
    ;;
  wednesday)
    echo wacky wednesday
    ;;
  thursday)
    echo thrifty thursday
    ;;
  friday)
    echo "thank God it's friday"
    ;;
  saturday)
    echo "finally"
    ;;
  *)
    echo "sorry, don't know that day..."
    ;;
esac
