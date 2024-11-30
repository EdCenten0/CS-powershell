# Write a PS script which gets a file and writes out only the characters between the 2nd and
# the 5th position of the lines. (string.substring()) 

Clear-Host

Get-Content .\file.txt | ForEach-Object {

$myCharacters=$_.substring(1,4)

Write-Host $myCharacters

}