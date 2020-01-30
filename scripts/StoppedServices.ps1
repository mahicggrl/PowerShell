cls
$service = Get-Service

foreach ($ser in $service){
    $StopSer = (($ser).Status -eq "Stopped")
    if ($StopSer -eq $true){
        $SerName = $ser.Name
      
        $ChkFile = Test-Path -path "C:\Temp\task1\Stopped.txt"
        if ($ChkFile -eq $false){
        New-Item -Path "C:\Temp\task1\Stopped.txt" -ItemType file
           
        }
        $SerName >> C:\Temp\task1\Stopped.txt
    }
}
