#!/bin/bash

echo hopefully you piped some \'ls -l\' stuff into here...
echo your filtered list:

cat /dev/stdin | awk '{print $9 " (" $3 ")"}'
