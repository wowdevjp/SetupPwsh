param(
    [string]$Command,
    [string]$CommandAfterKill
)

while($true)
{
    Start-Process -FilePath "powershell.exe" $Command -Wait
    if($CommandAfterKill -ne $null -and $CommandAfterKill -ne "")
    {
        Start-Process -FilePath "powershell.exe" $CommandAfterKill -Wait
    }
    Sleep -Seconds 3
}