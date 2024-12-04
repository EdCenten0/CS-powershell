#Create a PowerShell script which writes out the odd numbers between N and M
#(parameters)! Check whether N is smaller than M or not – if not, change their values! 

param($n,$m)

if($n -gt $m){

    $aux = $n
    $n = $m
    $m = $aux

}

$odds=@()

for($i = $n; $i -le $m ; $i++){

    if($i % 2 -ne 0){
        $odds += $i
    }

}


Write-Host $odds