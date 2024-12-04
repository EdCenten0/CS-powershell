#Write a script which gets a decimal number and gives back its binary format!
#E.g. 910 = 10012 

param($number)

Function toBinary($n){

$rec=$n
$binary=@()


while($rec -ne 0){

    $binary += $rec % 2
    $rec= [Math]::Round($rec / 2)

   

}

Write-Host $binary



}


Write-Host (toBinary $number)