# SetupPwsh

This repository is a collection of scripts for changing Windows10 settings.

These are for program development and experiment use only.

## Tamper Protection

!! Constant use is not recommended. !!

Disable Tamper Protection to run scripts.

![](./Images/disable_tamper_protection.png)

## Scripts

Scripts are written for each configuration or category.

- [x] Disable Firewall
- [x] Disable Windows Defender Realtime Protection
- [x] Display file extentions and hidden files
- [x] Disable SmartScreen
- [x] Disable Windows Update
  - [x] Disable Windows Update Schedule
- [x] Disable Update and Shutdown
- [x] Disable EdgeSwipe
- [x] Disable HelpHint
- [x] Set HighPerformance mode
- [x] Disable request password login when wake up from sleep mode
- [x] Allow login without password
- [x] Disable Notification
  - [x] Toast
  - [x] Balloon
  - [x] Hint to use and recommendation
- [x] Disable Automatic Window Arrangement
- [x] Set the desktop background to #000000
- [x] Hide Trash on the desktop
- [x] Install OpenSSH Server (Optional)

## Utility

### RestartProcessOnKill.ps1

Re-execute the `-Command` command/application 3 seconds after it is executed.

```shell
./RestartProcessOnKill.ps1 -Command "~/Desktop/app.exe" -CommandAfterKill "Remove-Item ~/Desktop/example-cache"
```

Re-execute multiple commands/applications

```shell
Start-Process -FilePath "powershell.exe" -ArgumentList "C://hoge/hoge/RestartProcessOnKill.ps1 -Command '~/Desktop/app.exe'"
Start-Process -FilePath "powershell.exe" -ArgumentList "C://hoge/hoge/RestartProcessOnKill.ps1 -Command '~/Desktop/app2.exe'"
Start-Process -FilePath "powershell.exe" -ArgumentList "C://hoge/hoge/RestartProcessOnKill.ps1 -Command '~/Desktop/app3.exe'"
```