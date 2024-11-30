#Implement a PowerShell script which counts the factorial value a given number N (N!)!
#The number is given by a parameter! Check whether there is a parameter or not! (if, for,
#$args)


$fact=1

#Checking if it is possitive

if([int]$args[0] -lt 0){
Write-Warning "Please use numbers above 0"
Exit 1
}

#Checking if it has a paremter at least

if([int]$args.Count -lt 1){
Write-Warning "Need one parameter at least"
Exit 1
}


for($i = 0; $i -lt $args[0];$i++){

$fact=($fact)*($args[0]-$i)

}

Write-Host $fact