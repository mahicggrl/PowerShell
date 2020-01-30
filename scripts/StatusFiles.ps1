cls
$service = Get-Service

foreach ($ser in $service){
    $RunSer = (($ser).Status -eq "Running")
    if ($RunSer -eq $true){
        $RSerName = $ser.Name

    $Dir = "C:\Temp\task2" + "\" + $ser.Status
    $ChkDir = Test-Path -path $Dir
    if ($ChkDir -eq $false){
        New-Item -Path $Dir -ItemType directory
       
    }
    $file = "C:\Temp\task2\Running" + "\" + $RSerName + ".txt"
    $Chkfile = Test-Path -path $file
    if (!($Chkfile)){
        New-Item -Path $file -ItemType file
        }
    
    }
    $RunSer = (($ser).Status -eq "Stopped")
    if ($RunSer -eq "$true"){
        $SSerName = $ser.Name
    $file1 = "C:\Temp\task2\Stopped" + "\" + $SSerName + ".txt"
    $Chkfile1 = Test-Path -path $file1
    if (!($Chkfile1)){
        New-Item -Path $file1 -ItemType file

    }
    
    }
}
        