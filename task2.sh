#!/bin/bash

# Outer loop for creating and renaming files
for i in {1..20}
do
    touch "file_$i.txt"
    
    # Inner loop for renaming the first 5 files
    if [ $i -le 5 ]
    then
        mv "file_$i.txt" "file_$i.yml"
    fi
done

# Print the latest created top 5 files
ls -t | head -n 5
