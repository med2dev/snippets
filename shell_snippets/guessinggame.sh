#!/usr/bin/env bash
# File: guessinggame.sh

count_files () {
  # FULFILLS PROJECT OBJECTIVE: USE A FUNCTION
  declare n_files path
  # FULFILLS PROJECT OBJECTIVE: USE A LOOP
  for path in *; do
    # FULFILLS PROJECT OBJECTIVE: USE AN IF STATEMENT
    if [[ -f $path ]]; then
      ((n_files++))
    fi
  done
  echo "$n_files"
}

check_guess () {
  # exit codes: 0 = succes, 105 = too low, 106 = too high, 107 = invalid input
  # Validate input. It should exist and be a nonnegative integer.
  declare answer
  if [[ ($1 =~ [^0-9]) || ( -z $1) ]]; then
    echo "Your answer must be a nonnegative integer only. Please try again."
    return 107
  fi
  answer=$(count_files)
  if [[ $1 = $answer ]]; then
    echo "You are correct!"
    return 0
  elif [[ $1 -lt $answer ]]; then
    echo "Your answer was too low. Please try again."
    return 105
  else
    echo "Your answer was too high. Please try again"
    return 106
  fi
}

play () {
  declare how_many
  echo -e "How many files are in the current directory? \c"
  # FULFILLS PROJECT OBJECTIVE: CONTAINS A READ STATEMENT
  read how_many
  check_guess $how_many || play
}

clear
play
