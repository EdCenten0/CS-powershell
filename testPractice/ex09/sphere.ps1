#Write a script which gets a file (parameter filename) and in each line there are 4
#numbers: 3 coordinates of a point (3D) and a radiant. Decide line by line which points
#are inside a sphere

param($file)

$content = Get-Content $file

$content | ForEach-Object {

$components = $_ -split " "

$x = [double]$components[0]
$y = [double]$components[1]
$z = [double]$components[2]
$radius = [double]$components[3]


$distance = [Math]::Sqrt(($x*$x)+($y*$y)+($z*$z))
 

 if($distance -le $radius){
    Write-Host "($x,$y,$z) is inside the spere of radius $radius"
 }else{
  Write-Host "($x,$y,$z) is not inside the spere of radius $radius"
 }
}