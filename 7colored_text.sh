#!/usr/bin/env bash

# COLORED AND STYLIZED TEXT

echo -e "\033[34;42mColored Text\033[0m" # -e to use escape sequences with echo, but printf is better with escape sequences
printf "\n"

echo -e "\033[5;1;34;41mBlinking Colored Text\033[0m\n\n"

echo -e "\033[5;1;33;41mERROR: \033[0m\033[37;41mSomething went wrong\033[0m\n\n"

# USING VARIABLE SUBSTITUTION MAKES IT EASIER
error_prompt_format="\033[5;1;33;41m"
error_message_format="\033[37;41m"
reset_style="\033[0m"

echo -e "${error_prompt_format}ERROR: ${reset_style}${error_message_format}Something went wrong$reset_style\n"

# Use the tput utility (man terminfo) for more styling options
