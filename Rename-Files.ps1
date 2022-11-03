$path = "C:\Users\GCDESKTOP21\OneDrive\Pictures\Florida 2016\"
$files = Get-ChildItem -Path $path #-Exclude "*.mov"
$ctr = 100

foreach ($file in $files) {
    #Write-Host($file.FullName)

    $ctr += 1

    $FullNewName = $path + "Florida-2016_" + $ctr + ".jpg"
    Write-Host($FullNewName)

    Rename-Item -Path $file.FullName -NewName $fullNewName
}