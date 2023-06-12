@echo off
title Better-RBX

for /F "tokens=*" %%a in ('where /r C:\Users\liamb\AppData\Local\Roblox RobloxPlayerBeta.exe') do set output=%%a
::where /r C:\Users\liamb\AppData\Local\Roblox RobloxPlayerBeta.exe

pause