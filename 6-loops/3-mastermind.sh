#!/bin/bash

echo Welcome to mastermind! I already have thought of a secret code.
echo It may contain any of the letters A, B, C, or D, possibly more
echo than once. The code is four letters long. You may begin
echo guessing by entering four \(space-separated\) letters.

read -p "enter a guess: " GUESS
