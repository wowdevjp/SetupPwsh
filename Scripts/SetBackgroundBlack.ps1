$PathWall = "HKCU:/Control Panel/Desktop"
$PathColor = "HKCU:/Control Panel/Colors"
$NameWall = "WallPaper"
$NameColor = "Background"

Set-ItemProperty -Path $PathWall -Name $NameWall -Value ""
Set-ItemProperty -Path $PathColor -Name $NameColor -Value "0 0 0"