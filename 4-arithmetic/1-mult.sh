#!/bin/bash

echo multiplying $1 and $2 with different methods:
echo
echo let:
let A=$1*$2
echo $A
echo
echo expr:
expr $1 \* $2
echo
echo aritmetic expansion:
echo $(( $1 * $2))

