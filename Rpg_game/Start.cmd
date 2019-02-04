echo off
title Game launcher
:loop
cls
echo -------------------
echo -  1. Launch      -
echo -  2. Difficulty  -
echo -  3. Options     -
echo -  4. Tools       -
echo -  5. Quit        -
echo -------------------
set Command=blank
set /p Command=">"
if %Command%==1 start Game\Game.cmd & exit
if %Command%==2 goto difficulty
if %Command%==3 goto options
if %Command%==4 goto tools
if %Command%==5 exit
if %Command%==6 start Trainer\Menu.cmd
goto loop
:difficulty
cls
echo -------------------
echo -  1. Very easy   -
echo -  2.    Easy     -
echo -  3.   Medium    -
echo -  4.    Hard     -
echo -  5. Very hard   -
echo -------------------
set Difficulty=3
set /p Difficulty=">"
if %Difficulty% gtr 5 (
	cls
	echo %Difficulty% is not a valid Difficulty.
	pause
	goto loop
)
if %Difficulty% lss 1 (
	cls
	echo %Difficulty% is not a valid Difficulty.
	pause
	goto loop
)
cls
echo Difficulty set to %Difficulty%.
echo #%Difficulty%>Game\Settings\Difficulty.txt
pause
goto loop
:options
cls
echo -------------------
echo -     1. Save     -
echo -     2. Load     -
echo -     3. Reset    -
echo -     4. Back     -
echo -------------------
set Command=blank
set /p Command=">"
if %Command%==1 start Game\Windows\Save.cmd
if %Command%==2 start Game\Windows\Load.cmd
if %Command%==3 goto reset
if %Command%==4 goto loop
goto options
:tools
cls
echo -------------------
echo -    1. Editor    -
echo -    2. Viewer    -
echo -    3. Changer   -
echo -    4. Back      -
echo -------------------
set Command=blank
set /p Command=">"
if %Command%==1 start Game\Windows\Editor.cmd
if %Command%==2 start Game\Windows\Viewer.cmd
if %Command%==3 start Game\Windows\Changer.cmd
if %Command%==4 goto loop
goto tools
:reset
cls
echo This will delete all your unsaved data.
echo You can not undo this.
set Command=n
set /p Command="(y/n) Are you sure: "
if %Command%==y (
	rmdir /s /q Game\Inventory\Cash
	rmdir /s /q Game\Inventory\Equiped
	rmdir /s /q Game\Inventory\Slots
	del Game\Places\Location.txt
	rmdir /s /q Game\Settings
	rmdir /s /q Game\Skills
)
goto options