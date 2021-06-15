$path = Read-Host -Prompt "Path";

$allFilesJpg = dir $path *.jpg;
$allFilesPng = dir $path *.png;
$allFilesMp4 = dir $path *.mp4;
$allFilesJpeg = dir $path *.jpeg;

foreach ($pic in $allFilesJpg) {

    $date = (echo $pic | select LastWriteTime);
    $year = $date.LastWriteTime.Year;
    $CompletePath = $path + "\" + $year

    $RepoYearExist = Test-Path $path"\"$year;

    if (!$RepoYearExist){
        mkdir $path"\"$year | Out-Null;
        Move-Item $pic.PSPath $CompletePath
    } else {
        Move-Item $pic.PSPath $CompletePath
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
        Move-Item $pic.PSPath $CompletePath
    } else {
        Move-Item $pic.PSPath $CompletePath
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
        Move-Item $pic.PSPath $CompletePath
    } else {
        Move-Item $pic.PSPath $CompletePath
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
        Move-Item $pic.PSPath $CompletePath
    } else {
        Move-Item $pic.PSPath $CompletePath
    }
}

Write-Host "Mp4 - Finished";
