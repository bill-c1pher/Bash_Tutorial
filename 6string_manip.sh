#!/usr/bin/env bash

# bash script demonstrates the use of string manipulation operations

# STRING CONCATANATION
a="hello"
b="world"

c=$a$b
echo $c

c=$a" "$b
echo $c # c = "hello world"

# LENGTH OF STRINGS
printf "\n"

echo ${#c} #braces may be used around a variable to specify additional options like #

# or:

length=${#c}
echo $length

# SUBSTRING EXTRACTION
printf "\n"

echo ${c:3}     # extracts substring starting AFTER the 3rd character
echo ${c:3:5}   # extracts substring of 5 characters starting AFTER the 3rd character
echo ${c: -3}   # extracts substring starting AT the 3rd character (counting from the end) NOTE: put a space before the '-'
echo ${c: -4:3} # extracts substring of 3 characters starting AT the 4th character (counting from the end)

#example:
printf "\n"

string="This string was written on 01/05/2023"
date=${string: -10}
echo $date

# SUBSTRING REPLACEMENT
printf "\n"

fruit="apple banana banana cherry"
echo ${fruit/banana/mango}      # replaces the first instance of "banana" with "mango"
echo ${fruit//banana/mango}     # replaces all instances of "banana" with "mango"
echo ${fruit/#apple/coconut}    # replaces "apple" ONLY if it's at the beginning of the string
echo ${fruit/%cherry/coconut}   # replaces "coconut" ONLY if it's at the end of the string
echo ${fruit/c*/mango}        # replaces any word beginning with c (regex macthing)
