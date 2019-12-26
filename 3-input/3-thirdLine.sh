#!/bin/bash

echo hopefully you piped a few lines into this...
echo and the third one is:

cat /dev/stdin | cut -d$'\n' -f 3
