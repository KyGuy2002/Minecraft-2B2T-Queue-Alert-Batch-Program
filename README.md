# Minecraft-2B2T-Queue-Alert-Batch-Program

This program is a 100% open source .bat batch file.
Simply download all 3 files to a folder on your computer,
then you can link a desktop shortcut to the file names "2B2T Alert System - Startup.bat"

the only changes you have to make to the code is in the "2B2T Alert System - Notifier.bat" file.
Simply right-click on that file, hit edit and input your email infornmation as shown below.


>>2b2t.vbs echo oMsg.From = "YOUR GMAIL HERE"
>>2b2t.vbs echo oMsg.To = "YOUR EMAIL HERE"
        
        
>>2b2t.vbs echo oConf.Fields(schema ^& "sendusername") = "YOUR GMAIL HERE"
>>2b2t.vbs echo oConf.Fields(schema ^& "sendpassword") = "YOUR GMAIL PASSWORD HERE"

YOUR GMAIL HERE:
Please put the **GMAIL** address that the message will be sent with.

YOUR EMAIL HERE:
Please put the reciving email address here.

YOUR GMAIL HERE:
Please put the **GMAIL** address that the message will be sent with.

YOUR GMAIL PASSWORD HERE:
Please put the password for your gmail account here.
(This is required so the program can send an email from your account, and I have no way to access it.)
