# Define the search string and the replacement string
$searchString = '<setHeader headerName='
$replacementString = '<setHeader name='

# Read the XML file contents
$xmlFilePath = "C:\DEV\Projects\DZPrivat_Services_Compare_tmp\update_choice_list_service.xml"
$xmlContent = Get-Content -Path $xmlFilePath

# Initialize an array to store the modified XML lines
$modifiedXmlContent = @()

# Function to comment out a line with the same indentation
function Comment-Line {
    param (
        [string]$line
    )
    # Extract leading whitespace (indentation)
    $indentation = $line -match '^\s*' | Out-Null
    return "$($matches[0])<!-- $line -->"
}

# Iterate through each line of the XML content
foreach ($line in $xmlContent) {
    if ($line -match [regex]::Escape($searchString)) {
        # Comment the line containing the search string
        $commentedLine = Comment-Line -line $line
        $modifiedXmlContent += $commentedLine

        # Copy the line and replace the search string with the replacement string
        $newLine = $line -replace [regex]::Escape($searchString), $replacementString
        $modifiedXmlContent += $newLine
    } else {
        # Add the line as-is if it doesn't contain the search string
        $modifiedXmlContent += $line
    }
}

# Write the modified XML content back to the file
$modifiedXmlContent | Set-Content -Path $xmlFilePath