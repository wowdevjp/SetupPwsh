$Path = "HKCU:/Control Panel/Desktop"
$Name = "WindowArrangementActive"

Set-ItemProperty -Path $Path -Name $Name -Value 0