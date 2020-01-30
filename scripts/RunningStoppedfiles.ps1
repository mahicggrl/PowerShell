cls
$service = Get-Service

foreach ($ser in $service){
    $Dir = "C:\Temp\task2" + "\" + $ser.Status
    $ChkDir = Test-Path -path $Dir
    if ($ChkDir -eq $false){
        New-Item -Path $Dir -ItemType directory
    } 
    $RunSer = (($ser).Status -eq "Running")
    if ($RunSer -eq $true){
        $RSerName = $ser.Name     
        $FilePathR = "C:\Temp\task2\Running" + "\" + $RSerName + ".txt"
        $ChkSerR = Test-Path -Path $FilePathR
        if (!($ChkSerR)){
            New-Item -path $FilePathR -ItemType file
        }
    }
    $StopSer = (($ser).Status -eq "Stopped")
    if ($StopSer -eq $true){
        $SSerName = $ser.Name
        $FilePathS = "C:\Temp\task2\Stopped" + "\" + $SSerName + ".txt"
        $ChkSerS = Test-Path -Path $FilePathS
        if (!($ChkSerS)){
            New-Item -path $FilePathS -ItemType file
        }
    }
}