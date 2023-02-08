#!/bin/bash

ghReplaceString() {
  # Prompt the user for the directory with a default of the current directory
  echo "Enter the directory path [default: $(pwd)]: "
  read directory
  directory=${directory:-$(pwd)}

  # Check if the directory exists
  if [ ! -d "$directory" ]; then
    echo "Error: directory not found"
    return 1
  fi

  # Prompt the user for the search string
  echo "Enter the search string: "
  read search_string

  # Prompt the user for the replace string
  echo "Enter the replace string: "
  read replace_string

  # Replace the string in all files in the directory using ripgrep
  for file in $(rg -l "$search_string" "$directory"); do
    echo "Changing file: $file"
    sed -i '' "s/$search_string/$replace_string/g" "$file"
  done

  # Echo a completion notice
  echo "Replace operation complete!"
}
