#!/usr/bin/env bash

# This bash script demonstrates the use of the "printf" command
# printf allows for better formatting
# printf does not print a newline character at the end unlike echo

date=$(date +"%D")
time=$(date +"%T")
weather="Cloudy"

printf "Hello, $USER\nDate: $date\nTime: $time\nWeather: $weather\n"

# OR
printf "\n"

printf "Hello, %s\nDate: %s\nTime: %s\nWeather: %s\n" $USER $date $time $weather

# BRACE EXPANSION WITH printf
printf "\n"

printf "%s\n" {1..10}
printf "\n"
printf "%s\t" {1..10}
printf "\n"

# Use printf when escape sequences are required, else use echo
# Use printf for printing a new line: printf "\n"
