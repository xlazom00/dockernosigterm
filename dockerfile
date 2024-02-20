# escape=`
FROM mcr.microsoft.com/windows/servercore:ltsc2022

COPY entrypoint.ps1 c:\\entrypoint.ps1

RUN reg add hklm\system\currentcontrolset\services\cexecsvc /v ProcessShutdownTimeoutSeconds /t REG_DWORD /d 7200  
RUN reg add hklm\system\currentcontrolset\control /v WaitToKillServiceTimeout /t REG_SZ /d 7200000 /f

CMD [ "powershell.exe", "-File", "C:\\entrypoint.ps1" ]

