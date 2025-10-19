#!/bin/bash

#step 1

mkdir -p Battlefield


# Step 2

touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt


# Step 3

mkdir -p Archive


# Step 4


if [ -f Battlefield/knight.txt ]; 

then 
	mv Battlefield/knight.txt Archive/

fi


# Step 5


echo "list of Battlefield"

ls Battlefield


# Step 6


echo "list of Archive"

ls Archive
