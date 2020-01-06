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

  # get a valid move
  VALID=false
  until $VALID
  do
    read -p "On which space would you like to play? " MOVE
    for i in {1..9}
    do
      if [ $i -eq $MOVE ]
      then
        VALID=true
        break
      fi
    done

    if $VALID
    then
      break
    else
      echo Please make sure your move is an interger between 1 and 9.
    fi
  done

  # update the board
  ROW=$(( ($MOVE - 1) / 3 ))
  COL=$(( ($MOVE - 1) % 3 ))
  if [ ${BOARD[$ROW,$COL]} = $MOVE ]
  then
    BOARD[$ROW,$COL]=X
  else
    echo Please make sure to select an empty space. Try again:
    continue
  fi

done