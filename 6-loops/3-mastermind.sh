#!/bin/bash

### SETUP ###
# generate code
CODE=''
for I in {1..4}
do
  CODE="$CODE$(( $RANDOM % 4 + 1 )) "
done
echo the secret code is $CODE
echo

# notify user
echo Welcome to mastermind! I already have thought of a secret code.
echo It may contain any of the numbers 1, 2, 3, and 4, possibly more
echo than once. The code is four numbers long. You may begin
echo guessing by entering four \(space-separated\) numbers.
echo

### PLAY GAME ###
CORRECT=false
until $CORRECT
do
  # get the guess
  read -p "enter a guess: " GUESS

  # count the correct characters
  for I in {1..4}
  do
    GUESS_INT=$( echo $GUESS | cut -d ' ' -f$I )
    CORRECT_INT=$( echo $CODE | cut -d ' ' -f$I )
    if [ $GUESS_INT -eq $CORRECT_INT ]
    then
      echo your guess was correct at position $I
    fi
  done
done
