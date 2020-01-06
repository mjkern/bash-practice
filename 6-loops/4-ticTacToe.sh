#!/bin/bash

### SETUP ###

# welcome
echo Welcome to tic tac toe!

# init state
declare -A BOARD
for i in {1..9}
do
  BOARD[$(( ($i - 1) / 3)),$(( ($i - 1) % 3 ))]=$i
done

# print the board
for i in {0..2}
do
  for j in {0..2}
  do
    printf "${BOARD[$i,$j]}"
    if [ ! $j -eq 2 ]
    then
      printf "|"
    fi
  done
  echo
  if [ ! $i -eq 2 ]
  then
    printf -- '-+-+-\n'
  fi
done

