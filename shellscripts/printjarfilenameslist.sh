#!/bin/bash

# Set the path to the directory to search
directoryPath="/mnt/c/DEV/Projects/kyndryl"

# Initialize an empty output file
outputFile="kyndryl_dependencies.md"
echo "" > $outputFile

# Find all .jar files and group by directory
find "$directoryPath" -type f -name "*.jar" | while read -r file; do
    dir=$(dirname "$file")
    if [[ "$current_dir" != "$dir" ]]; then
        current_dir="$dir"
        echo "### $(basename "$dir")" >> $outputFile
    fi
    echo "- $(basename "$file")" >> $outputFile
done