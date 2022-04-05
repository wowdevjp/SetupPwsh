function TrySetItemProperty($Path, $Name, $Type, $Value) {
    $Key = Get-ItemProperty -Path $Path -Name $Name -ErrorAction SilentlyContinue

    if ($Key -eq $null) {
        New-ItemProperty -Path $Path -Name $Name -PropertyType $Type -Value $Value
    } else {
        Set-ItemProperty -Path $Path -Name $Name -Value $Value
    }
}

# Disable Toast
$PathToast = "HKCU:\SOFTWARE\Policies\Microsoft\Windows"
$NameToast = "DisableNotificationCenter"

TrySetItemProperty -Path $PathToast -Name $NameToast -Type DWord -Value 1

# Disable Balloon
$PathBalloon = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$NameBalloon = "EnableBalloonTips"

TrySetItemProperty -Path $PathBalloon -Name $NameBalloon -Type DWord -Value 0

# Disable Hint
$PathHint = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
$NameHint = "DisableSoftLanding"

$PathExist = Get-Item -Path $PathHint -ErrorAction SilentlyContinue
if ($PathExist -eq $null) {
    New-Item -Path $PathHint
}
TrySetItemProperty -Path $PathHint -Name $NameHint -Type DWord -Value 1