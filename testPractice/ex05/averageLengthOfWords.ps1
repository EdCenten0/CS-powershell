# Create a script which counts how much are the average length of the words in a file
# (filename in parameter)

param($file)

$characters = (Get-Content $file | Measure-Object -Character).Characters
$words = (Get-Content $file | Measure-Object -Word).Words

Write-Output "The average length of words is: "([Math]::Round(($characters / $words)))