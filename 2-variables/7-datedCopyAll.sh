#!/bin/bash

echo "making a dated copies..."
echo $@ | xargs -n1 -d ' ' -i ./6-datedCopy.sh {}
echo "done making dated copies"
