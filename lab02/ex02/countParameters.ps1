# x) Write a script which writes out how many parameters
# we used in command line ($args)

Clear-Host


#Counting parameters
$cmdl=$args.Length

$cmd2=$args.Count

Write-Host "Arguments: $cmdl"
Write-Host "Arguments: $cmd2"

#y) Write a Powershell script which adds its first and 
#second parameter! (In UNIX we needed
#expr and `` in PS you can simply give the mathematical
# expression and it will be
#evaulated! )

Write-Host "Adding second and first parameter"($sum=$args[0] + $args[1])