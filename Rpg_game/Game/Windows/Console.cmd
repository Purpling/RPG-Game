echo off
title Console
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
:command
cls
echo Type help for list of commands.
set Command=Blank
set /p Command=">"
if %Command%==help (
	cls
	echo help -- Gives commands.
	echo pouch -- Opens the pouch.
	echo inventory -- Opens inventory.
	echo equipment -- Opens equipment.
	echo stats -- Opens Skills.
	pause
	goto command
)
if %Command%==pouch start %Path%\Game\Windows\Pouch.cmd
if %Command%==inventory start %Path%\Game\Inventory\Inventory.cmd
if %Command%==equipment start %Path%\Game\Inventory\Equipment.cmd
if %Command%==stats start %Path%\Game\Windows\Stats.cmd
if %Command%==debug start %Path%\Game\Windows\Generate.cmd
goto command