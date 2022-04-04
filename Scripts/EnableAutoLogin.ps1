$RegistryPath = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
$Path = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
$Username = Read-Host "User Name"
$Password = Read-Host "Password"

reg add $RegistryPath /v AutoAdminLogon /t REG_SZ /d 1 /f
reg add $RegistryPath /v DefaultUserName /t REG_SZ /d $Username /f
reg add $RegistryPath /v DefaultPassword /t REG_SZ /d $Password /f
reg add $RegistryPath /v ForceAutoLogon /t REG_SZ /d 1 /f
reg add $RegistryPath /v DefaultDomainName /t REG_SZ /d WORDGROUP /f
reg add $RegistryPath /v IgnoreShiftOverride /t REG_SZ /d 1 /f

Set-ItemProperty $Path 'AutoAdminLogon' -Value "1"
Set-ItemProperty $Path 'DefaultUsername' -Value $Username
Set-ItemProperty $Path 'DefaultPassword' -Value $Password