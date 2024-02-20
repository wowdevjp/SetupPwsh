$choice = Read-Host "Do you want to install OpenSSH Server? (y/n)"

if ($choice -eq "Y") {
    Write-Host "Installing OpenSSH Server..."
    Add-WindowsCapability -Online -Name OpenSSH.Server~~~~
    Start-Service sshd
    Set-Service -Name sshd -StartupType 'Automatic'
    Get-NetFirewallRule -Name *ssh*
    Write-Host "OpenSSH Server installed successfully."
} else {
    Write-Host "OpenSSH Server installation cancelled."
}