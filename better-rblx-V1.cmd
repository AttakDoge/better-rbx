:: TO DO: CLEAN UP CODE

@echo off
title Better-RBX

for /F "tokens=*" %%a in ('where /r C:\Users\liamb\AppData\Local\Roblox RobloxPlayerBeta.exe') do set rbxFolder=%%a
::where /r C:\Users\liamb\AppData\Local\Roblox RobloxPlayerBeta.exe
set rbxFolder=%rbxFolder:RobloxPlayerBeta.exe=%
echo %rbxFolder%
::outputs file path to parent folder of robloxplayerbeta.exe

for %%i in ("%~dp0.") do set "parentFolder=%%~fi"


::go to version path
C:
cd %rbxFolder%
::create client settings
mkdir ClientSettings
copy /v/y %parentFolder%\ClientAppSettings.json %rbxFolder%ClientSettings\

::topbar replacement
copy /v/y %parentFolder%\coloredlogo.png  %rbxFolder%content\textures\ui\TopBar\
copy /v/y %parentFolder%\coloredlogo@2x.png  %rbxFolder%content\textures\ui\TopBar\
copy /v/y %parentFolder%\coloredlogo@3x.png  %rbxFolder%content\textures\ui\TopBar\

::mouse icon replacement
copy /v/y %parentFolder%\ArrowCursor.png %rbxFolder%content\textures\Cursors\KeyBoardMouse
copy /v/y %parentFolder%\ArrowFarCursor.png %rbxFolder%content\textures\Cursors\KeyBoardMouse

::oof sound
copy /v/y %parentFolder%\ouch.ogg %rbxFolder%content\sounds


pause