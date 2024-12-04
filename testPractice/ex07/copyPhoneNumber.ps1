#Implement a script which gets names and phone numbers in a file (filename as
#parameter, last name, a space and the phone number per line) and copy that phone
#numbers which belong to a pre-defined last name (parameter) into the last.txt file!

 param($file,$lastName)

 $number = Get-Content $file | Where-Object {$_ -match $lastName} | ForEach-Object{

    ($_ -split " ")[1]

 }

 Add-Content last.txt "$lastName`t$number" 

