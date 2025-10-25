# escape=`
FROM mcr.microsoft.com/windows/servercore:ltsc2025

SHELL ["powershell.exe"]
RUN mkdir "c:\LogMonitor"; `
    Invoke-WebRequest -Uri "https://github.com/microsoft/windows-container-tools/releases/download/v2.1.3/LogMonitor.exe" -OutFile "C:\LogMonitor\LogMonitor.exe"

COPY logmonitorconfig.json C:\\LogMonitor\\logmonitorconfig.json

COPY entrypoint.ps1 c:\\entrypoint.ps1

# this looks like time until cexecsvc will initiated the shutdown of computer/docker container 
#RUN reg add hklm\system\currentcontrolset\services\cexecsvc /v ProcessShutdownTimeoutSeconds /t REG_DWORD /d 30

RUN reg add hklm\system\currentcontrolset\control /v WaitToKillServiceTimeout /t REG_SZ /d 240000 /f

# With log monitor the teardown works... but no output in container stdout
#CMD ["C:\\LogMonitor\\LogMonitor.exe",  "powershell.exe", "-File", "C:\\entrypoint.ps1" ]

CMD [ "powershell.exe", "-File", "C:\\entrypoint.ps1" ]

