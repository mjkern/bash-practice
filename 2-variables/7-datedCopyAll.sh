#!/bin/bash

echo "making a dated copies..."
ls sample* | xargs -n1 -i ./6-datedCopy.sh {}
# need to modify the line above this...
echo "done making dated copies"
