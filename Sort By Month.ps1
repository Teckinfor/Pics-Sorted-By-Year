$path = Read-Host -Prompt "Path";
$recursive = Read-Host -Prompt "Recurvise (y/n)";
while ($recursive -ne "y" -and $recursive -ne "n"){
    $recursive = Read-Host -Prompt "Recurvise (y/n)";
}

if ($recursive -eq "y"){
    $allFilesJpg = Get-ChildItem $path *.jpg -Recurse;
    $allFilesPng = Get-ChildItem $path *.png -Recurse;
    $allFilesMp4 = Get-ChildItem $path *.mp4 -Recurse;
    $allFilesJpeg = Get-ChildItem $path *.jpeg -Recurse;
} else {
    $allFilesJpg = Get-ChildItem $path *.jpg;
    $allFilesPng = Get-ChildItem $path *.png;
    $allFilesMp4 = Get-ChildItem $path *.mp4;
    $allFilesJpeg = Get-ChildItem $path *.jpeg;
}

foreach ($pic in $allFilesJpg) {

    $date = (Write-Output $pic | Select-Object LastWriteTime);
    $Month = $date.LastWriteTime.Month;

    switch ($Month) {
        1 { $Month = "1 - Janvier" }
        2 { $Month = "2 - Fevrier" }
        3 { $Month = "3 - Mars" }
        4 { $Month = "4 - Avril" }
        5 { $Month = "5 - Mai" }
        6 { $Month = "6 - Juin" }
        7 { $Month = "7 - Juillet" }
        8 { $Month = "8 - Aout" }
        9 { $Month = "9 - Septembre" }
        10 { $Month = "10 - Octobre" }
        11 { $Month = "11 - Novembre" }
        12 { $Month = "12 - Decembre" }
        Default {}
    }

    $CompletePath = $path + "\" + $Month;
    $RepoMonthExist = Test-Path $path"\"$Month;

    if (!$RepoMonthExist){
        mkdir $path"\"$Month | Out-Null;
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (Write-Output $pic | Select-Object Name)
            $CatchName = $name.Name -split '.jpg', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".jpg";
            Move-Item $pic.PSPath $CompletePath;
        }
    } else {
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (Write-Output $pic | Select-Object Name)
            $CatchName = $name.Name -split '.jpg', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".jpg";
            Move-Item $pic.PSPath $CompletePath;
        }
    }
}

Write-Host "Jpg - Finished";

foreach ($pic in $allFilesJpeg) {

    $date = (Write-Output $pic | Select-Object LastWriteTime);
    $Month = $date.LastWriteTime.Month;
    $CompletePath = $path + "\" + $Month

    $RepoMonthExist = Test-Path $path"\"$Month;

    if (!$RepoMonthExist){
        mkdir $path"\"$Month | Out-Null;
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (Write-Output $pic | Select-Object Name)
            $CatchName = $name.Name -split '.jpeg', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".jpeg";
            Move-Item $pic.PSPath $CompletePath;
        }
    } else {
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (Write-Output $pic | Select-Object Name)
            $CatchName = $name.Name -split '.jpeg', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".jpeg";
            Move-Item $pic.PSPath $CompletePath;
        }
    }
}

Write-Host "Jpeg - Finished";

foreach ($pic in $allFilesPng) {

    $date = (Write-Output $pic | Select-Object LastWriteTime);
    $Month = $date.LastWriteTime.Month;
    $CompletePath = $path + "\" + $Month

    $RepoMonthExist = Test-Path $path"\"$Month;

    if (!$RepoMonthExist){
        mkdir $path"\"$Month | Out-Null;
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (Write-Output $pic | Select-Object Name)
            $CatchName = $name.Name -split '.png', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".png";
            Move-Item $pic.PSPath $CompletePath;
        }
    } else {
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (Write-Output $pic | Select-Object Name)
            $CatchName = $name.Name -split '.png', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".png";
            Move-Item $pic.PSPath $CompletePath;
        }
    }
}

Write-Host "Png - Finished";

foreach ($pic in $allFilesMp4) {

    $date = (Write-Output $pic | Select-Object LastWriteTime);
    $Month = $date.LastWriteTime.Month;
    $CompletePath = $path + "\" + $Month

    $RepoMonthExist = Test-Path $path"\"$Month;

    if (!$RepoMonthExist){
        mkdir $path"\"$Month | Out-Null;
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (Write-Output $pic | Select-Object Name)
            $CatchName = $name.Name -split '.mp4', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".mp4";
            Move-Item $pic.PSPath $CompletePath;
        }
    } else {
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (Write-Output $pic | Select-Object Name)
            $CatchName = $name.Name -split '.mp4', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".mp4";
            Move-Item $pic.PSPath $CompletePath;
        }
    }
}

Write-Host "Mp4 - Finished";
