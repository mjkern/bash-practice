#!/bin/bash

echo your random word of size $1 is:
grep -E "^.{$1}$" words.txt | cut -d$'\n' -f $RANDOM
