$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"
$ValueNameAUOptions = "AUOptions"
$ValueNameNoAutoUpdate = "NoAutoUpdate"

function TrySetItemProperty($Path, $Name, $Value) {
    $Key = Get-ItemProperty -Path $Path -Name $Name -ErrorAction SilentlyContinue

    if($Key -eq $null){
        New-ItemProperty -Path $Path -Name $Name -Value $Value
    }else{
        Set-ItemProperty -Path $Path -Name $Name -Value $Value
    }
}

TrySetItemProperty -Path $Path -Name $ValueNameAUOptions -Value 1
TrySetItemProperty -Path $Path -Name $ValueNameNoAutoUpdate -Value 1