# Implement a PowerShell script which gives back all
# the prime numbers inside an interval.
# The ends of the interval are read from the keyboard! (read-host, while, %, for)

$n1 = [int](Read-Host "Write the 1st number of the interval: ")
$n2 = [int](Read-Host "Write the 2nd number of the interval: ")

Function primeInterval($m1, $m2){
    $prime = @()

    for($i = $m1; $i -le $m2; $i++){
    $count= 0
        for($j = 1; $j -le $i; $j++){
                if($i % $j -eq 0 ){
                $count++
               }           
        }
         if($count -eq 2){
            $prime += $i
         }
    }
        
    foreach($p in $prime){
        Write-Host $p
    }
}


primeInterval $n1 $n2