$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EdgeUI"
$AllowEdgeSwipe = "AllowEdgeSwipe"
$DisableHelpSticker = "DisableHelpSticker"

$result = Get-Item -Path $Path -ErrorAction SilentlyContinue
if($result -eq $null){
    New-Item -Path $Path
}

Set-ItemProperty -Path $Path -Name $AllowEdgeSwipe -Value 0
Set-ItemProperty -Path $Path -Name $DisableHelpSticker -Value 1