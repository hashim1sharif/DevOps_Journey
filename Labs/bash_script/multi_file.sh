#!/bin/bash

DIRECTORY="Arena"
SEARCH_TERM="Error"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

grep -l "$SEARCH_TERM" "$DIRECTORY"/*.log


#Explanation: 



#grep -l "$SEARCH_TERM" "$DIRECTORY"/*.log searches for the term in each .log file and lists the filenames that contain the term.
