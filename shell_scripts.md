## search for .jar files and store them (seperated by folder)
[shell-scripts folder](/shellscripts/)
This script does the following:

Searches for .jar files in the specified directory and its subdirectories.
Groups the files by their directory.
Formats the output to include the directory name as an H3 header and each file name with a "-" and a space before it.
Writes the formatted output to kyryl_dependencies.md.
To run this script:

Open PowerShell.
Copy and paste the script into the PowerShell window.
Press Enter to execute the script. It will create kyryl_dependencies.md in your current directory.

``` 
#!/bin/bash

# Set the path to the directory to search
directoryPath="/mnt/c/DEV/Projects/kyndryl"

# Initialize an empty output file
outputFile="kyryl_dependencies.md"
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
```

