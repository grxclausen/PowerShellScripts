$path = "C:\Users\GCDESKTOP21\OneDrive\Pictures\Florida 2010\2010-11-07 Florida\"
$files = Get-ChildItem -Path $path
$ctr = 100

foreach ($file in $files) {
    #Write-Host($file.FullName)

    $ctr += 1

    $FullNewName = $path + "Florida-2010_" + $ctr + ".jpg"
    Write-Host($FullNewName)

    Rename-Item -Path $file.FullName -NewName $fullNewName
}