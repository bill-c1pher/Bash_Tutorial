#!/usr/bin/env bash


#echo
echo {one, two}           #prints one and two consequtively
echo {1..10}              #prints numbers from 1 to 10
echo {1..10..2}           #prints numbers from 1 to 10 with a common difference of 2
echo {10..1}              #prints numbers from 10 to 1
echo {10..1..2}           #prints numbers from 10 to 1 with a common difference of 2
echo {a..z}               #prints alphabets from a to z
echo {z..a}               #prints alphabets from z to a
echo {a..z..5}            #prints alphabets from a to z with a common difference of 5
echo {z..a..5}            #prints alphabets from z to a with a common difference of 5
echo hello{1..10}         #prints hello1, hello2, hello3,..., hello10
echo hello{1..10}{a..d}   #prints hello1a, hello1b,..., hello2a, hello2b,..., hello10a, hello10b,...
echo hello{1..10}{a..d}{one, two}

#touch
printf "\n"

touch file{1..10}.txt      #creates 10 files - file1.txt, file2.txt,...

#brace expansion can be used with any command
