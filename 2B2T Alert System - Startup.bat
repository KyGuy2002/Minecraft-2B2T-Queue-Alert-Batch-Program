@echo off



REM ----------WAITING FOR GAME DISPLAY-----------------------------------------------------------
title 2B2T Alert System - Startup
echo.
echo  -----------------------------
echo     2B2T Queue Status Alert   
echo  -----------------------------
echo.
echo.
echo   Program Starting Up...
echo.
echo.
echo   Program inspired by:
echo   R2bEEaton
echo   Program created by:
echo   KyGuy2002
echo.
echo   Version: 1.0



REM ----------ERRORS-------------------------------------------------------------------
REM -----ERROR1 IF NO LOG FILE-----
IF NOT EXIST %Appdata%\.minecraft\logs\latest.log goto error1


call "2B2T Alert System - Scanner.bat"
exit


REM ----------ERROR CODE RESOURCES----------------------------------------------------------
REM -----ERROR1-----
:error1
cls
echo.
echo  -----------------------------
echo     2B2T Queue Status Alert   
echo  -----------------------------
echo.
echo.
echo   ERROR-1:
echo   It seems that the log file does
echo   not exist.  Please ensure
echo   you have joined the 2B2T queue
echo   server before attempting to launch
echo   this program.
echo.
echo.
echo   Program inspired by:
echo   R2bEEaton
echo   Program created by:
echo   KyGuy2002
echo.
echo   Version: 1.0
echo.
echo   Press any key to close.
pause > nul