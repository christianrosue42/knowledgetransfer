!#/bin/bash

#sort a list alphabetically in an existing file while specifying the encoding:

# Read the content of the file with UTF-8 encoding
$list = Get-Content -Path "C:\Users\christian.rosue\Documents\Notes\Customer\kyndryl_rreef\build_files.md" -Encoding UTF8

# Sort the list
$sortedList = $list | Sort-Object

# Write the sorted list back to the file with UTF-8 encoding
Set-Content -Path "C:\Users\christian.rosue\Documents\Notes\Customer\kyndryl_rreef\build_files.md" -Value $sortedList -Encoding UTF8