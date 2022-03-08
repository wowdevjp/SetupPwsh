$Path = "HKLM:SOFTWARE\Policies\Microsoft\Windows\System"
$ValueName = "EnableSmartScreen"

$Key = Get-ItemProperty -Path $Path -Name $ValueName -ErrorAction SilentlyContinue

# Disable = 0

if($Key -eq $null){
    New-ItemProperty -Path $Path -Name $ValueName 0
}else{
    Set-ItemProperty -Path $Path -Name $ValueName 0
}