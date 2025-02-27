#!/bin/bash

# Check if we have the correct number of arguments (should provide source path and stow target)
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_file> <dotfiles_directory>"
    exit 1
fi

source_file="$1"
dotfiles_directory="$2"

file_path=$(dirname "$source_file")

mkdir -p $HOME/dotfiles/"$dotfiles_directory"/"$file_path"
mv "$source_file" ~/dotfiles/"$dotfiles_directory"/"$input_path"

cd $HOME/dotfiles/
stow "$dotfiles_directory"
