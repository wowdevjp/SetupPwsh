$TargetDir = "./Scripts/"
$Scripts = Get-ChildItem -Path $TargetDir -File -Filter *.ps1

foreach ($Script in $Scripts) {
    $ScriptPath = Join-Path $TargetDir $Script 
    Write-Output "[SetupPwsh::Exec] $ScriptPath"
    powershell -File $ScriptPath
}