#!/bin/bash

echo a random number between $1 and $2:
echo "$(( $RANDOM % ($2 - $1) + $1 ))"
