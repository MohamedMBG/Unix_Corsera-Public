#!/bin/bash

# Function to ask the user to guess the number of files in the current directory
guess_number_of_files() {
  local correct_guess=$(ls -1 | wc -l)  # Count the number of files in the current directory
  local guess

  # Loop to ask for guesses until the correct one is given
  while true; do
    echo "How many files are in the current directory?"
    read guess

    # Check if the guess is correct
    if [[ $guess -lt $correct_guess ]]; then
      echo "Too low. Try again."
    elif [[ $guess -gt $correct_guess ]]; then
      echo "Too high. Try again."
    else
      echo "Congratulations! You guessed correctly."
      break
    fi
  done
}

# Call the function to start the game
guess_number_of_files
