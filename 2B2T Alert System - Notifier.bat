@echo off



REM -----------READ CURRENT POSITION----------------------------------------
type %appdata%\.minecraft\logs\latest.log > templog.txt
for /f "tokens=* delims= " %%a in (templog.txt) do (set posRaw=%%a)
set posFil=%posRaw:~50,3%



REM ----------SHOW SENDING SCREEN-------------------------------------------
title 2B2T Alert System - Notifier
cls
echo.
echo  -----------------------------
echo     2B2T Queue Status Alert
echo  -----------------------------
echo.
echo.
echo   Sending Mail...
echo   Position: %posFil%
echo.
echo.
echo   Program inspired by:
echo   R2bEEaton
echo   Program created by:
echo   KyGuy2002
echo.
echo   Version: 1.0



REM ----------SEND MAIL-------------------------------------------
        >2b2t.vbs echo Const schema = "http://schemas.microsoft.com/cdo/configuration/"
        >>2b2t.vbs echo Const cdoBasic = 1
        >>2b2t.vbs echo Const cdoSendUsingPort = 2
        >>2b2t.vbs echo Set oMsg = CreateObject("CDO.Message")

        >>2b2t.vbs echo oMsg.From = "YOUR GMAIL HERE"
        >>2b2t.vbs echo oMsg.To = "YOUR EMAIL HERE"

        >>2b2t.vbs echo oMsg.TextBody = "Your position in queue is: %posFil%."
        >>2b2t.vbs echo Set oConf = oMsg.Configuration
        >>2b2t.vbs echo oConf.Fields(schema ^& "smtpserver") = "smtp.gmail.com"
        >>2b2t.vbs echo oConf.Fields(schema ^& "smtpserverport") = 465
        >>2b2t.vbs echo oConf.Fields(schema ^& "sendusing") = cdoSendUsingPort
        >>2b2t.vbs echo oConf.Fields(schema ^& "smtpauthenticate") = cdoBasic
        >>2b2t.vbs echo oConf.Fields(schema ^& "smtpusessl") = True

        >>2b2t.vbs echo oConf.Fields(schema ^& "sendusername") = "YOUR GMAIL HERE"
        >>2b2t.vbs echo oConf.Fields(schema ^& "sendpassword") = "YOUR GMAIL PASSWORD HERE"

        >>2b2t.vbs echo oConf.Fields.Update
        >>2b2t.vbs echo oMsg.Send
start 2b2t.vbs
ping localhost -n 2 >nul
del 2b2t.vbs
del templog.txt



exit