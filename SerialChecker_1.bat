@echo off
title Lodex HWID Checker

:start
cls
echo [90m==========================[97m
echo [93m       Disk Drives
echo [90m==========================[97m
wmic diskdrive get model, serialnumber
echo [90m==========================[97m
echo [90m==========================[97m
echo [93m       Motherboard
echo [90m==========================[97m
wmic baseboard get serialnumber
echo [90m==========================[97m
echo [92m        CHASSIS
echo [90m==========================[97m
wmic systemenclosure get serialnumber
echo [90m==========================[97m
echo [96m        SMBIOS
echo [90m==========================[97m
wmic path win32_computersystemproduct get uuid
echo [90m==========================[97m
echo [95m         BIOS
echo [90m==========================[97m
wmic bios get serialnumber
echo [90m==========================[97m
echo [91m         CPU
echo [90m==========================[97m
wmic cpu get serialnumber
echo [90m==========================[97m
echo [92m         MAC
echo [90m==========================[97m
getmac
echo [97m==============================================================================[97m
echo.
echo [91m YOU DONT WANT TO GET BANNED RIGHT? CHECK IF ALL YOUR MAC-ADDRESSES (PHYSICAL-ADDRESS) CHANGED!

echo [97m==============================================================================[97m
echo.
echo [94m[+] MAKE SURE ALL SERIALS ARE CHANGED (MOTHERBOARD, CHASSIS, MAC ETC)!
echo.
echo [92m[+] IF MAC OR SERIALS NOT CHANGED, CHECK FAQ.
pause>nul
goto:start
