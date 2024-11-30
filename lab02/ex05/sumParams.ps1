# Write the sum of the n parameters

$sum = 0

#using ForEach-Object

$args | ForEach-Object {

$sum = $sum+$_

}

Write-Host $sum

#using foreach


$sum1 = 0

foreach($count in $args){

$sum1=$sum1+$count

}

Write-Host $sum1


#using for cycle

$sum2 = 0

for($i = 0;$i -lt $args.Count; $i++){

$sum2=$sum2+$args[$i]

}

Write-Host $sum2

#Using while loop

$sum3=0

$c=0

while($c -lt $args.Count){

$sum3=$sum3+$args[$c]
$c++

}

Write-Host $sum3

#using do while loop

$sum4=0
$j=0

do{

$sum4=$sum4+$args[$j]
$j++

}while($j -lt $args.Count)

Write-Host $sum4