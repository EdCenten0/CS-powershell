#Implement a script which gets names in a file (filename as parameter, full name per
#line) and list the first names which are longer than a pre-defined value (parameter)! 


param($file, $n)

$names = @()

Get-Content $file | ForEach-Object {

    if((($_.Split(' '))[0]| Measure-Object -Character).Characters -gt $n){
        $names += ($_.Split(' '))[0]
    }

}

Write-Output $names