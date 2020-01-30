cls

$1 = Get-Content -Path "C:\Temp\docs\Countries.txt"

Foreach ($Content in $1){
    $FName = $Content.Split(",")[0]
    $CName = $Content.Split(",")[3]
    $DomainName = $Content.Split(",")[5].split("@")[1].split(".")[0]
    if (($CName -ne "Australia") -and ($DomainName -eq "gmail" -or $DomainName -eq "hotmail" -or $DomainName -eq "yahoo")) {
        $FName
    }

}