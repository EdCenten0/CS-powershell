# Create a PowerShell script which generates a Fibonacci serie (1,1,2,3,5,8,..) List out
# the first N (parameter) element! If there is no parameter, read the value from the
# keyboard!$n = $args[0]Function fibonacci($n1,$n2){    if($n2 -eq $n){        return 0    }else{    Write-Host $n1 + (fibonacci ($n1) ($n2+1))        return $n1 + (fibonacci ($n1) ($n2+1))    }}fibonacci 0 0