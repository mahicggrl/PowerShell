cls
$service = Get-Service

foreach ($ser in $service){
    if (($ser).Status){
       $Dir = "C:\Temp\task2" + "\" + $ser.Status
       $ChkDir = Test-Path -path $Dir
       if ($ChkDir -eq $false){
          New-Item -Path $Dir -ItemType directory 
       }
       if ($ser.Status){
          $service = $Dir + "\" + $ser.Name + ".txt"
          foreach ($a in $service){
            $ChkSer = Test-Path -Path $service
            if (!($ChkSer)){
                
                New-Item -Path $a -ItemType file "Hello Mohan"
            }
          }
       }
       
    }
}
