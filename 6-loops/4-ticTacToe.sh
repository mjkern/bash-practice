#!/bin/bash

### SETUP ###

# welcome
echo Welcome to tic tac toe!

# init state
#BOARD='1|2|3\n-+-+-\n4|5|6\n-+-+-\n7|8|9\n'
#printf $BOARD

declare -A BOARD
for i in {1..9}
do
  echo $(( ($i - 1) / 3 )), $(( ($i - 1) % 3 )): $i
  BOARD[$(( ($i - 1) / 3)),$(( ($i - 1) % 3 ))]=$i
done

# print the board
for i in {0..2}
do
  for j in {0..2}
  do
    printf ${BOARD[$i,$j]}
  done
  echo
done

