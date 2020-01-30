cls

$1 = Get-Content -Path "C:\Temp\docs\Countries.txt"

Foreach ($Content in $1){
    $FName = $Content.Split(",")[0]
    $CName = $Content.Split(",")[3]
    $DomainName = $Content.Split(",")[5].split("@")[1].split(".")[0]
    if ($CName -eq "USA" -or $CName -eq "UK") {
        if ($DomainName -eq "gmail"){
            $FName
        }
    }
    


}