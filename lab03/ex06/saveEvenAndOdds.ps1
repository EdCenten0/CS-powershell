#Write a script which gets a file and writes out into two files the even-th and odd-th lines!
#The name of the original file will be given by a parameter, the name of the two result files
#should be: even.txt and odd.txt! Check whether the file is existing or not! (get-content, for,
#test-path - - In Unix while ..< file, test -f)

$file = Get-Content $args[0] 


for($i=0;$i -le $file.Length; $i++){

    if($i % 2 -eq 0){
    
       Add-Content even.txt $file[$i] 

    }else{
    
       Add-Content odd.txt $file[$i] 
    
    }

}