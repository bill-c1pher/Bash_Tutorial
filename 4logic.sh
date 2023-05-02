#!/usr/bin/env bash

#This bash script demonstrates the use of logical operators

# NOTE: TRUE is 0 and FALSE is 1 in bash

# ==, >, <, >=, <=, and != are STRING comparison operators, they cannot compare integers

[[ "cat" == "cat" ]]    #Should return 0 because it's true
echo $?

[[ "cat" == "dog" ]]    #Should return 1 becuase it's false
echo $?

[[ 20 > 100 ]]          #These are comapred as strings, and will return 0 (TRUE) becuase '2' is higher than '1'
result=$?
echo $result

[[ "cat" != "dog" ]]
echo $?

# To compare INTEGERS, use -lt, -gt, -le, -ge, -eq, -ne
printf "\n"

[[ 2 -gt 1 ]]
echo $?

[[ 5 -eq 5 ]]
echo $?

# &&, ||, ! for AND, OR, NOT respectively
printf "\n"

[[ 5 -eq 5 && 6 -lt 5 ]]
echo $?

[[ 5 -eq 5 || 6 -lt 5 ]]
echo $?

# -z and -n to check for null and non-null strings respectively
printf "\n"

[[ -n "" ]]
echo $?

[[ -n "cat" ]]
echo $?
