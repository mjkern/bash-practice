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

### GAME LOOP ###
OVER=false
until $OVER
do

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

  # get the move
  read -p "On which space would you like to play?" MOVE

  # TODO: check that it is a legal move

  # update the board
  echo $MOVE
  ROW=$(( ($MOVE - 1) / 3 ))
  COL=$(( ($MOVE - 1) % 3 ))
  BOARD[$ROW,$COL]=X

done
