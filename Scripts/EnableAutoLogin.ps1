$Path = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
$Username = Read-Host "Username"
$Password = Read-Host "Password"

function TrySetItemProperty($Path, $Name, $Value) {
    $Key = Get-ItemProperty -Path $Path -Name $Name -ErrorAction SilentlyContinue

    if ($Key -eq $null) {
        New-ItemProperty -Path $Path -Name $Name -PropertyType String -Value $Value
    } else {
        Set-ItemProperty -Path $Path -Name $Name -Value $Value
    }
}

TrySetItemProperty -Path $Path -Name AutoAdminLogon -PropertyType String -Value 1
TrySetItemProperty -Path $Path -Name DefaultUserName -PropertyType String -Value $Username
TrySetItemProperty -Path $Path -Name DefaultPassword -PropertyType String -Value $Password
TrySetItemProperty -Path $Path -Name ForceAutoLogon -PropertyType String -Value 1
TrySetItemProperty -Path $Path -Name DefaultDomainName -PropertyType String -Value WORKGROUP
TrySetItemProperty -Path $Path -Name IgnoreShiftOverride -PropertyType String -Value 1