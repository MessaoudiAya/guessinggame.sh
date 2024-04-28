#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    # Use ls to list files, wc -l to count lines, and strip whitespace
    local count=$(ls -1 | wc -l)
    echo "$count"
}

# Main function for the guessing game
main() {
    local target=$(count_files)  # Get the number of files in the directory
    local guess=-1  # Initialize guess to a value that won't match the target

    echo "Welcome to the Guessing Game!"
    echo "Guess the number of files in the current directory."

    while [ "$guess" -ne "$target" ]; do
        read -p "Enter your guess: " guess  # Prompt user for guess

        if [ "$guess" -lt "$target" ]; then
            echo "Too low! Try again."
        elif [ "$guess" -gt "$target" ]; then
            echo "Too high! Try again."
        fi
    done

    echo "Congratulations! You guessed the correct number: $target"
}

# Call the main function to start the game
main
