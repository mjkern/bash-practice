#!/bin/bash

echo your random word is:
cat words.txt | cut -d$'\n' -f 1
