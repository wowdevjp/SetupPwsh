$Path = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
$Username = Read-Host "User Name"
$Password = Read-Host "Password"

New-ItemProperty -Path $Path -Name AutoAdminLogon -PropertyType String -Value 1 -Force
New-ItemProperty -Path $Path -Name DefaultUserName -PropertyType String -Value $Username -Force
New-ItemProperty -Path $Path -Name DefaultPassword -PropertyType String -Value $Password -Force
New-ItemProperty -Path $Path -Name ForceAutoLogon -PropertyType String -Value 1 -Force
New-ItemProperty -Path $Path -Name DefaultDomainName -PropertyType String -Value WORDGROUP -Force
New-ItemProperty -Path $Path -Name IgnoreShiftOverride -PropertyType String -Value 1 -Force

Set-ItemProperty $Path 'AutoAdminLogon' -Value "1"
Set-ItemProperty $Path 'DefaultUsername' -Value $Username
Set-ItemProperty $Path 'DefaultPassword' -Value $Password