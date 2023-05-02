#!/usr/bin/env bash

# This bash script does math!

d=2
e=$((d+2))
echo $e
((e++))
echo $e
((e*=2))
echo $e
((e/=3))
echo $e
((e--))
echo $e

e+=hello      # without (( )) + or += concatanates strings
echo $e

g=$(echo 1/3 | bc -l)  #for floating point numbers in bc
echo $g
