#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit 0;
fi

if [[ $1 =~ [0-9] ]]; then
  SEARCH_RESULT=$($PSQL "select atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius from elements inner join properties using(atomic_number) inner join types using(type_id) where atomic_number=$1")
else
  SEARCH_RESULT=$($PSQL "select atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius from elements inner join properties using(atomic_number) inner join types using(type_id) where symbol='$1' or name='$1'")
fi

if [[ -z $SEARCH_RESULT ]]; then
  echo "I could not find that element in the database."
else
  echo $SEARCH_RESULT | while IFS='|' read ATOMIC_NUMBER SYMBOL NAME TYPE ATOMIC_MASS MELTING BOILING; do
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
  done
fi


