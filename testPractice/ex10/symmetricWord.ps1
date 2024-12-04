#Implement a script which gets words a file (filename as parameter) and copy that
#words which are symmetric (e.g. level, Hannah, madam etc.) same.txt! 

param($file)

$content = Get-Content $file

foreach($w in $content){
    
    $reversedWord = ""

    for($i = ($w | Measure-Object -Character).Characters; $i -ge 0; $i--){
        $reversedWord += $w[$i]
    }
    

    if($reversedWord -match $w){
        Add-Content same.txt $w
    }

}

