#!/usr/bin/env bash

##
# @info         Interactively guess the number of files in the directory
##
play_game() {
    local num_files guess
    num_files=$(find -maxdepth 1 -type f | wc -l)

    while read -p "Guess number of files in directory: " guess; do
        if [[ -z "$guess" ]]; then
            echo "Must enter a guess"
        elif (( $guess < num_files )); then
            echo "Too low"
        elif (( $guess > $num_files )); then
            echo "Too high"
        else
            echo "That's correct!" && exit
        fi
    done
}

handle_int() {
    echo -e "\n\e[31mExiting game\e[0m" && exit 1
}

trap handle_int SIGINT
play_game
