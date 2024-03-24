#!/bin/bash

function guessing_game {
    files_count=$(ls -1 | wc -l)
    correct_guess=false

    while [ $correct_guess == false ]
    do
        echo "How many files are in the current directory?"
        read guess

        if [[ $guess -lt $files_count ]]; then
            echo "Too low. Try again."
        elif [[ $guess -gt $files_count ]]; then
            echo "Too high. Try again."
        else
            echo "Congratulations! You guessed correctly!"
            correct_guess=true
        fi
    done
}

guessing_game
