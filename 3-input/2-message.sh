#!/bin/bash

read -p "please enter your first and last name: " FNAME LNAME
read -p "and your height: " HEIGHT

echo "hi $LNAME, $FNAME! glad to hear that your are $HEIGHT tall. also, you added $@ to the command - why?"
