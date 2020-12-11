@echo off
set /A alert=100



REM ----------SCANNER---------------------------------------------------------
:scanner
>nul timeout /T 1 /nobreak

REM -----UPDATE CURRENT POSITION-----
type %appdata%\.minecraft\logs\latest.log > templog.txt
for /f "tokens=* delims= " %%a in (templog.txt) do (set posRaw=%%a)
set posFil=%posRaw:~50,3%

REM -----NORMAL SCANNING SCREEN-----
title 2B2T Alert System - Scanner
cls
echo.
echo  -----------------------------
echo     2B2T Queue Status Alert   
echo  -----------------------------
echo.
echo.
echo   Scanning...
echo.
echo   Current Position: %posFil%
echo   Next Scanning For: %alert%
echo.
echo.
echo   Program inspired by:
echo   R2bEEaton
echo   Program created by:
echo   KyGuy2002
echo.
echo   Version: 1.0

REM -----CHECK CURRENT ALERT-----
if %alert% == 100 goto testfor100
if %alert% == 50 goto testfor50
if %alert% == 10 goto testfor10
exit

REM -----TEST FOR 100-----
:testfor100
if 95 LEQ %posFil% if %posFil% LEQ 105 goto pos100true
goto scanner

REM -----TEST FOR 50-----
:testfor50
if 45 LEQ %posFil% if %posFil% LEQ 55 goto pos50true
goto scanner

REM -----TEST FOR 10-----
:testfor10
if 5 LEQ %posFil% if %posFil% LEQ 15 goto pos10true
goto scanner

REM -----NOTIFY OF POSITION 100-----
:pos100true
set alert=50
start "" "2B2T Alert System - Notifier.bat"
goto scanner

REM -----NOTIFY OF POSITION 50-----
:pos50true
set alert=10
start "" "2B2T Alert System - Notifier.bat"
goto scanner

REM -----NOTIFY OF POSITION 10-----
:pos10true
set alert=0
start "" "2B2T Alert System - Notifier.bat"
goto scanner