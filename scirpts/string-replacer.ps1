<#
.SYNOPSIS
This script can be used to find a text and replace it with a desired text in a file.
.DESCRIPTION
This script can be used to find a text and replace it with a desired text in a file.
.EXAMPLE
C:\PS> C:\Script\Find_and_Replace.ps1 C:\Script\test.txt powershell windowspowershell
Finds ‘powershell’ in C:\Script\test.txt and replaces it with ‘windowspowershell’.
#>
param([String] $file, [String] $source , [String] $replace)


#Get the entire file content.
$content = Get-Content $file
$oldContent = $content
#Replace the source word with the replace word.
Write-Host "Replacing values in $file"
# Default replaced values
$content = $content -replace 'Get-VstsInput .+', '' 
$content = $content -replace 'Trace-VstsEnteringInvocation .+', ''
$content = $content -replace 'Trace-VstsLeavingInvocation .+', 'Write-Host "Error"'
$content = $content -replace 'Split-Path .+', ''

# Custom replaced values
$content = $content -replace $source, $replace
#set the file content.
$content | Set-Content "$file"
$oldContent | Set-Content "$file-old"
# Write the content to the file named new+filename
#Set-Content -Path .\new\$file -Value $content