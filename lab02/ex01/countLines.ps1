##w) Write a powershell script which gives back the number the number of the lines of a file!
# (Measure object or use an array and use its length property)
Clear-Host

$file= Get-Content .\fruits.txt

$count=$file.Length

Write-Output "Lines using it as an array: $count"

#Using a hash table or associative object
$arr=@{"fs"= Get-Content .\fruits.txt}
$countwithHash= $arr.Keys | foreach {$arr.$_.length}

Write-Output "Counting lines with a hash table: $countWithHash"

Write-Host "Using the Measure-Object: " ($file | Measure-Object Length).Count

Write-Host "How many characters?: " ($file | Measure-Object -Character).Characters

Write-Host "How many words?: " ($file | Measure-Object -Word).Words