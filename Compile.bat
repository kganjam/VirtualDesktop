@echo off
:: Markus Scholtes, 2024
:: Compile VirtualDesktop in .Net 4.x environment
setlocal

@REM C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe "%~dp0VirtualDesktop11.cs" /win32icon:"%~dp0MScholtes.ico"
@REM C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe "%~dp0VirtualDesktop11-24H2.cs" /win32icon:"%~dp0MScholtes.ico"
@REM C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe "%~dp0VirtualDesktop.cs" /win32icon:"%~dp0MScholtes.ico"
@REM C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe "%~dp0VirtualDesktopServer2022.cs" /win32icon:"%~dp0MScholtes.ico"
@REM C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe "%~dp0VirtualDesktopServer2016.cs" /win32icon:"%~dp0MScholtes.ico"

:: was batch started in Windows Explorer? Yes, then pause
echo "%CMDCMDLINE%" | find /i "/c" > nul
:: if %ERRORLEVEL%==0 pause

dotnet build

@REM copy *.exe C:\Users\kganjam\OneDrive\Git\Utilities\bin\
copy /y C:\Users\kganjam\OneDrive\Git\VirtualDesktop\bin\Debug\net8.0\* C:\Users\kganjam\OneDrive\Git\Utilities\bin\
