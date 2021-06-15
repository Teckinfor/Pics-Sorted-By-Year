$path = Read-Host -Prompt "Path";
$recursive = Read-Host -Prompt "Recurvise (y/n)";
while ($recursive -ne "y" -and $recursive -ne "n"){
    $recursive = Read-Host -Prompt "Recurvise (y/n)";
}

if ($recursive -eq "y"){
    $allFilesJpg = dir $path *.jpg -Recurse;
    $allFilesPng = dir $path *.png -Recurse;
    $allFilesMp4 = dir $path *.mp4 -Recurse;
    $allFilesJpeg = dir $path *.jpeg -Recurse;
} else {
    $allFilesJpg = dir $path *.jpg;
    $allFilesPng = dir $path *.png;
    $allFilesMp4 = dir $path *.mp4;
    $allFilesJpeg = dir $path *.jpeg;
}

foreach ($pic in $allFilesJpg) {

    $date = (echo $pic | select LastWriteTime);
    $year = $date.LastWriteTime.Year;
    $CompletePath = $path + "\" + $year

    $RepoYearExist = Test-Path $path"\"$year;

    if (!$RepoYearExist){
        mkdir $path"\"$year | Out-Null;
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (echo $pic | select Name)
            $CatchName = $name.Name -split '.jpg', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".jpg";
            Move-Item $pic.PSPath $CompletePath;
        }
    } else {
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (echo $pic | select Name)
            $CatchName = $name.Name -split '.jpg', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".jpg";
            Move-Item $pic.PSPath $CompletePath;
        }
    }
}

Write-Host "Jpg - Finished";

foreach ($pic in $allFilesJpeg) {

    $date = (echo $pic | select LastWriteTime);
    $year = $date.LastWriteTime.Year;
    $CompletePath = $path + "\" + $year

    $RepoYearExist = Test-Path $path"\"$year;

    if (!$RepoYearExist){
        mkdir $path"\"$year | Out-Null;
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (echo $pic | select Name)
            $CatchName = $name.Name -split '.jpeg', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".jpeg";
            Move-Item $pic.PSPath $CompletePath;
        }
    } else {
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (echo $pic | select Name)
            $CatchName = $name.Name -split '.jpeg', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".jpeg";
            Move-Item $pic.PSPath $CompletePath;
        }
    }
}

Write-Host "Jpeg - Finished";

foreach ($pic in $allFilesPng) {

    $date = (echo $pic | select LastWriteTime);
    $year = $date.LastWriteTime.Year;
    $CompletePath = $path + "\" + $year

    $RepoYearExist = Test-Path $path"\"$year;

    if (!$RepoYearExist){
        mkdir $path"\"$year | Out-Null;
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (echo $pic | select Name)
            $CatchName = $name.Name -split '.png', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".png";
            Move-Item $pic.PSPath $CompletePath;
        }
    } else {
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (echo $pic | select Name)
            $CatchName = $name.Name -split '.png', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".png";
            Move-Item $pic.PSPath $CompletePath;
        }
    }
}

Write-Host "Png - Finished";

foreach ($pic in $allFilesMp4) {

    $date = (echo $pic | select LastWriteTime);
    $year = $date.LastWriteTime.Year;
    $CompletePath = $path + "\" + $year

    $RepoYearExist = Test-Path $path"\"$year;

    if (!$RepoYearExist){
        mkdir $path"\"$year | Out-Null;
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (echo $pic | select Name)
            $CatchName = $name.Name -split '.mp4', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".mp4";
            Move-Item $pic.PSPath $CompletePath;
        }
    } else {
        try {
            Move-Item $pic.PSPath $CompletePath -ErrorAction Stop
        }
        catch {
            $name = (echo $pic | select Name)
            $CatchName = $name.Name -split '.mp4', 2;
            $CompletePath = $CompletePath + "\" + $CatchName[0]  + "(Copy2)" + ".mp4";
            Move-Item $pic.PSPath $CompletePath;
        }
    }
}

Write-Host "Mp4 - Finished";
