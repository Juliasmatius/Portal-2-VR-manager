@echo off

REM I don't know how to code batch
REM This is other peoples code and research glued together.

cd bin

:menu

ECHO.
ECHO ...............................................
ECHO Portal 2 VR mod manager
ECHO Mod by Gistix https://github.com/Gistix/portal2vr
ECHO Manager by Juli https://julimiro.carrd.co
ECHO.
ECHO Disclosure : I don't know how to code batch.
ECHO I am a guy on the internet with a Google and limited coding knowledge
ECHO ...............................................
ECHO.

ECHO 1 - Enable VR
ECHO 2 - Disable VR
ECHO 3 - Launch game
ECHO 4 - Exit
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER: 
IF %M%==1 GOTO enable
IF %M%==2 GOTO disable
IF %M%==3 GOTO launch
IF %M%==4 GOTO EOF
cls
echo Incorrect option.


goto menu
:enable
cls
echo Renaming d9d0.dll.bak to d3d9.dll
move d3d9.dll.bak d3d9.dll

echo Renaming openvr_api.dll.bak to openvr_api.dll
move openvr_api.dll.bak openvr_api.dll


goto menu
:disable
cls
echo Renaming d3d9.dll to d3d9.dll.bak
move d3d9.dll d3d9.dll.bak

echo Renaming openvr_api.dll to openvr_api.dll.bak
move openvr_api.dll openvr_api.dll.bak

goto menu
:launch
cls
start steam://rungameid/620
goto menu