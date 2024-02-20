# escape=`
FROM mcr.microsoft.com/windows/servercore:ltsc2022

SHELL ["powershell.exe"]

COPY entrypoint.ps1 c:\\entrypoint.ps1

ENTRYPOINT C:\entrypoint.ps1;

