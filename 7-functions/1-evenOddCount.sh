#!/bin/bash

isEven () {
  if [ $(( $1 % 2 )) -eq 0 ]; then
    return 0
  fi
  return 1
}

for i in {1..10}; do
  if isEven $i; then
    echo $i is even
  else
    echo $i is odd
  fi
done

