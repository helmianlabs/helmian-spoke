@echo off
title Helmian Spoke setup
cd /d "%~dp0"
echo.
echo  Helmian Spoke setup
echo  In helmian.cloud, open Settings and press "Set up this PC".
echo  Paste the code it shows below, then press Enter.
echo.
set /p HELMIAN_HANDS_PASSPHRASE= Pairing code: 
set HELMIAN_SPOKE_ROOTS=%USERPROFILE%
"%~dp0node.exe" "%~dp0install-pair.mjs"
set HELMIAN_HANDS_PASSPHRASE=
findstr /c:"\"paired\": true" "%APPDATA%\Helmian\spoke-install-status.json" >nul 2>&1
if %errorlevel%==0 (echo. & echo  Done. This PC is paired and the spoke starts each time you sign in.) else (echo. & echo  Pairing did not finish. Get a new code in helmian.cloud and run this again.)
echo.
pause
