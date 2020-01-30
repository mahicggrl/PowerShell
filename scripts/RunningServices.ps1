cls
$service = Get-Service

foreach ($ser in $service){
    $RunSer = (($ser).Status -eq "Running")
    if ($RunSer -eq $true){
        $SerName = $ser.Name
        
        $ChkFile = Test-Path -path "C:\Temp\task1\Running.txt"
        if ($ChkFile -eq $false){
        New-Item -Path "C:\Temp\task1\Running.txt" -ItemType file
            
        }
        $SerName >> C:\Temp\task1\Running.txt
    }
}

