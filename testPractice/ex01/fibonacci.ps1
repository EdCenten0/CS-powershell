# Create a PowerShell script which generates a Fibonacci serie (1,1,2,3,5,8,..) List out
# the first N (parameter) element! If there is no parameter, read the value from the
# keyboard!$n = $args[0]$fibSeries = @(0,1)for($i = 2 ; $i -lt $n; $i++){    $fibSeries += $fibSeries[$i-1] + $fibSeries[$i-2] }Write-Host $fibSeries