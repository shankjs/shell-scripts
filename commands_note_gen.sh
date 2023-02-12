#!/bin/bash

read -p "Enter a filename (add.txt): " filename

# function to add a command and description to the file
add_to_file() {
  echo "### $2 ###" >> $filename
  echo "$1" >> $filename
  echo "" >> $filename
}

# prompt the user to enter a command and description
while true; do
  read -p "Enter a command : " command
  if [ -z "$command" ]; then
    break
  fi
  read -p "Enter a description: " description
  add_to_file "$command" "$description"
done

# display the contents of the file
cat $filename

