# Disable Modern Standby
$PathStandby = "HKLM:/SYSTEM/CurrentControlSet/Control/Power"
$NameStandby = "PlatformAoAcOverride"
$KeyExists = Get-ItemProperty -Path $PathStandby -Name $NameStandby -ErrorAction SilentlyContinue
if ($KeyExists -eq $null) {
    New-ItemProperty -Path $PathStandby -Name $NameStandby -PropertyType DWord -Value 0
} else {
    Set-ItemProperty -Path $PathStandby -Name $NameStandby -Value 0
}

# Disable Hibernation
$PathHib = "HKLM:/SYSTEM/CurrentControlSet/Control/Power"
$NameHib = "HibernateEnabledDefault"
Set-ItemProperty -Path $PathHib -Name $NameHib -Value 0