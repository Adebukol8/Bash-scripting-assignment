#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <absolute_path_to_directory>"
  exit 1
  fi 

  if [ -d "$1" ]; then
     count=0
     for item in "$1"/*; do 
       if [ -f "$item" ]; then
       count=$((count + 1))
       fi
       done
       echo "There are $count file(s) in '$1'."
       else
       echo "'$1' is not a valid directory."
       fi 