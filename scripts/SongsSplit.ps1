cls
$ReadContant = Get-Content -Path C:\Temp\docs\Songs.txt
$SongDir = "C:\Temp\songs" 

foreach($list in $ReadContant){
    $Language = $list.Split("_")[0]
    $MovieName = $list.Split("-")[0].Split("_")[1]
    $SongName = $list.Split("-")[1].replace(".txt", ".csv")
        
    $SongTest = Test-Path -Path $SongDir
    if(!($SongTest)){
        New-Item -Path $SongDir -ItemType directory    
    }
    $LangDir = $SongDir + "\" + "$Language"
    $LangTest = Test-Path -Path $LangDir
    if ($LangTest -eq $false){
        New-Item -Path $LangDir -ItemType Directory
    }
    $MovieDir = $LangDir + "\" + $MovieName
    $MovieTest = Test-Path -Path $MovieDir
    if (!($MovieTest)){
        New-Item -Path $MovieDir -ItemType Directory    
    }
    $SongPath = $MovieDir + "\" + $SongName
    $SongTest = Test-Path -Path $SongPath
    if (!($SongTest)){
        New-Item -Path $SongPath -ItemType file
    }
    
}