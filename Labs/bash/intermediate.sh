#!/bin/bash

# Step 1: Create Arena_Boss directory
mkdir -p Arena_Boss

# Step 2 & 3: Create 5 files with random lines (10-20) inside Arena_Boss
for i in {1..5}; do
    file="Arena_Boss/file${i}.txt"
    # Generate random number between 10 and 20
    lines=$(( RANDOM % 11 + 10 ))
    
    # Create file with random content
    # For demonstration, add random lines; some files may contain the word "Victory" randomly
    > "$file"  # empty file first
    
    for ((j=1; j<=lines; j++)); do
        # 20% chance to add "Victory" on a line
        if (( RANDOM % 5 == 0 )); then
            echo "This line contains Victory!" >> "$file"
        else
            echo "Random line $j in $file" >> "$file"
        fi
    done
done

# Step 4: Sort files by size and display
echo "Files sorted by size (smallest to largest):"
ls -lS Arena_Boss/*.txt | sort -k5n

# Step 5: Check for files containing "Victory" and move them to Winners directory
mkdir -p Winners

for file in Arena_Boss/*.txt; do
    if grep -q "Victory" "$file"; then
        echo "Moving $file to Winners directory"
        mv "$file" Winners/
    fi
done

