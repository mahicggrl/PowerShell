cls
$CountryDir = "C:\Temp\task3\Country"
$1 = Get-Content -Path "C:\Temp\docs\Countries.txt"

Foreach ($List in $1){
    $Country = $List.Split(",")[3]
    $FName = $List.Split(",")[0]
    $LName = $List.Split(",")[1]
    $Email = $List.Split(",")[5]
    $ChkCDir = Test-Path -Path $CountryDir
    if (!($ChkCDir)){
        New-Item -Path $CountryDir -ItemType directory
    }
    if ((($Country -eq "Australia") -or ($Country -eq "UK")) -and ((($Email.Split("@")[1].Split(".")[0] -eq "gmail")) -or ($Email.Split("@")[1].Split(".")[0] -eq "hotmail") -or ($Email.Split("@")[1].Split(".")[0] -eq "yahoo"))){
        $ConDir = $CountryDir + "\" + $Country
        $ChkConDir = Test-Path -Path $ConDir
        if (!($ChkConDir)){
            New-Item -Path $ConDir -ItemType Directory
        }
        $MailPath = $ConDir + "\" + $Email.Split("@")[1].Split(".")[0] + ".txt"
        $MChkPath = Test-Path -Path $MailPath
        if (!($MChkPath)){
            New-Item -Path $MailPath -ItemType file
        }
        $GRes = $FName + ", " + $LName + ", " + $Country + ", " + $Email
        $GRes >> $MailPath
    }

}
