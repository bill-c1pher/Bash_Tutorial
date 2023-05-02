#!/usr/bin/env bash

#This bash script demonstrates files

echo "Some text" > file.txt         # Writes "some text" into a file, creating it if it doesn't already exist

echo "Some more text" >> file.txt   # Appends text to the file

cat file.txt

> file                              # zeros out (empties) a file

# writing multiline text to a file
cat <<- EOF > file.txt
        Hello darkness my old friend
        I've come to talk with you again
        Because a vision softly creeping
        Left its seeds while I was sleeping
EOF

# Reading the first line from a file using 'read'
read line < file.txt
echo $line

# Reading the whole a file line by line
while read line; do
  echo $line
done < file.txt
