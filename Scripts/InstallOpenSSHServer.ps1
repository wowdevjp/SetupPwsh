$choice = Read-Host "Do you want to install OpenSSH Server? (y/n)"

if ($choice -eq "Y") {
    Write-Host "Installing OpenSSH Server..."
    Add-WindowsCapability -Online -Name OpenSSH.Server~~~~
} else {
    Write-Host "OpenSSH Server installation cancelled."
}