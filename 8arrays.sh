#!/usr/bin/env bash

#This bash script demonstrates arrays

empty_array=()

fruits=("apple" "banana" "cherry" "mango")
echo ${fruits[0]}

echo ${fruits[@]}         #  '@' represents the whole array

echo ${fruits[@]: -1}     #  This grabs the last element of the array

echo ${fruits}            #  The name of the array points to its first element, just like in C

fruits[4]="coconut"
echo ${fruits[@]}

fruits+=("kiwi")
echo ${fruits[@]}

# Associative arrays can hold key-value pairs, like hash maps.
declare -A map
map["first name"]="Adam"
map["last name"]="Kurian"
map["location"]="Weed, California"
map["age"]="21"

# They are not stored in any particular order, like hash-maps
echo ${map[@]}
