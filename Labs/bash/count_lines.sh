#!/bin/bash

if [ -z "$1" ]; then
  echo "No file provided"
else
  if [ -f "$1" ]; then
    line_count=$(wc -l < "$1")
    echo "$line_count"
  else
    echo "File '$1' not found."
  fi
fi
