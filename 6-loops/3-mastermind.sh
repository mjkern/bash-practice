#!/bin/bash

### SETUP ###
# generate code
CODE=''
for I in {1..4}
do
  CODE="$CODE$(( $RANDOM % 4 + 1 )) "
done

# notify user
echo Welcome to mastermind! I already have thought of a secret code.
echo It may contain any of the numbers 1, 2, 3, and 4, possibly more
echo than once. The code is four numbers long. You may begin
echo guessing by entering four \(space-separated\) numbers.
echo

# misc
NUM_GUESSES=0
NUM_CORRECT=0

### PLAY GAME ###
until [ $NUM_CORRECT -eq 4 ]
do
  # get the guess
  read -p "enter a guess: " GUESS
  (( NUM_GUESSES++ ))

  # count the correct characters
  NUM_CORRECT=0
  for I in {1..4}
  do
    GUESS_INT=$( echo $GUESS | cut -d ' ' -f$I )
    CORRECT_INT=$( echo $CODE | cut -d ' ' -f$I )
    if [ $GUESS_INT -eq $CORRECT_INT ]
    then
      (( NUM_CORRECT++ ))
    fi
  done
  echo $NUM_CORRECT correct number and position

  # count the number of correct characters in the wrong position
  NUM_HALF_CORRECT=0
  GUESS_INDEX=1
  CODE_INDEX=1
  while [ $GUESS_INDEX -le 4 ] && [ $CODE_INDEX -le 4 ]
  do
    GUESS_INT=$( echo $GUESS | cut -d ' ' -f 1-4 --output-delimiter=$'\n' | sort | cut -d $'\n' -f $GUESS_INDEX )
    CODE_INT=$( echo $CODE | cut -d ' ' -f 1-4 --output-delimiter=$'\n' | sort | cut -d $'\n' -f $CODE_INDEX )
    if [ $CODE_INT -eq $GUESS_INT ]
    then
      (( NUM_HALF_CORRECT++ ))
      (( CODE_INDEX++ ))
      (( GUESS_INDEX++ ))
    elif [ $CODE_INT -lt $GUESS_INT ]
    then
      (( CODE_INDEX++ ))
    else # [ $GUESS_INT -lt $CODE_INT ] --> must be true
      (( GUESS_INDEX++ ))
    fi
  done
  NUM_HALF_CORRECT=$(( NUM_HALF_CORRECT - NUM_CORRECT )) # don't double count
  echo $NUM_HALF_CORRECT correct but in the wrong position
done

### GAME OVER ###
echo you did it!
echo "it took you $NUM_GUESSES guess(es)"
