#!/bin/bash

echo a random number between 0 and $1:
echo "$(( $RANDOM % $1 ))"
