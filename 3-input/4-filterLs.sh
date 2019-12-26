#!/bin/bash

echo hopefully you piped some \'ls -l\' stuff into here...
echo your filtered list:

# cut skips the first line, which is always "total [#]"
cat /dev/stdin | cut -d $'\n' -f 2- | awk '{print $9 " (" $3 ")"}'
