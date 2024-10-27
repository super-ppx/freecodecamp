#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

TARGET_NUMBER=$RANDOM
while [[ $TARGET_NUMBER -gt 1000 ]]; do
  TARGET_NUMBER=$RANDOM
done
STEP=1

echo "Enter your username:"
read USERNAME

RESULT_FIND_USER=$($PSQL "select step from game where username='$USERNAME' order by step limit 1")

if [[ -z $RESULT_FIND_USER ]]; then
  # doesn't find the user
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  RESULT_PLAY_COUNT=$($PSQL "select count(1) from game where username='$USERNAME'")
  echo $RESULT_FIND_USER | while read BEST; do
    echo "Welcome back, $USERNAME! You have played $RESULT_PLAY_COUNT games, and your best game took $BEST guesses."
  done
fi

echo "Guess the secret number between 1 and 1000:"
read INPUT

while [[ ! $TARGET_NUMBER = $INPUT ]]; do
  ((STEP++))
  if [[ ! $INPUT =~ [1-9][0-9]* ]]; then
    echo "That is not an integer, guess again:"
  elif [[ $INPUT -gt $TARGET_NUMBER  ]]; then
    echo "It's lower than that, guess again:"
  elif [[ $INPUT -lt $TARGET_NUMBER ]]; then
    echo "It's higher than that, guess again:"
  fi
  read INPUT
done

$PSQL "insert into game(username, step) values('$USERNAME', $STEP)" > /dev/null

echo "You guessed it in $STEP tries. The secret number was $TARGET_NUMBER. Nice job!"
