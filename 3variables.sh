#!/usr/bin/env bash

# This bash script demonstrates the use of variables


# Variables are named with a sequence of alphanumeric characters
# variable names must start with a letter

string1=hello
string2="hello world"
mynum=69

# Use variable substitution
echo "My first string is $string1, my second string is $string2, and my number is $mynum."

# Adding attributes to a variable:
printf "\n"

declare -i d=123        # d is an integer
declare -r e=456        # e is read-only
declare -l f="LOLcats"  # f is lower-case (lolcats)
declare -u g="LOLcats"  # g is upper-case (LOLCATS)

echo "d = $d, e = $e, f = $f, g = $g"

# Built-in variables:
printf "\n"

echo "HOME = $HOME"                  # returns user's home directory
echo "PWD = $PWD"                    # returns current directory PWD = Present Working directory
echo "MACHTYPE = $MACHTYPE"          # returns machine type
echo "HOSTNAME = $HOSTNAME"          # returns host name
echo "BASH_VERSION = $BASH_VERSION"  # returns  version of bash installed
echo "SECONDS = $SECONDS"            # returns number of seconds the script has been running for
echo "0 = $0"                        # returns the name of the script

# Command substitution
printf "\n"

command_response=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
echo $command_response

echo $(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
