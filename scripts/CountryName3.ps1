cls

$1 = Get-Content -Path "C:\Temp\docs\Countries.txt"

Foreach ($Content in $1){
    $FName = $Content.Split(",")[0]
    $LName = $Content.Split(",")[1]
    $CName = $Content.Split(",")[3]
    $Mail = $Content.Split(",")[5]
    $DomainName = $Content.Split(",")[5].split("@")[1].split(".")[0]
    if (($Mail.Split("@")[0] -ne ($FName+"_"+$LName)) -and (($CName -eq "USA") -or ($CName -eq "Canada")) -and (($DomainName -ne "gmail") -and ($DomainName -ne "hotmail"))) {
        $Mail
    }
}