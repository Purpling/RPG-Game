echo off
title Blacksmith
setlocal enabledelayedexpansion
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
set Slot=0
:ask
cls
echo --------------------------
echo -   Blacksmith's shop.   -
echo --------------------------
echo -        1. Smelt        -
echo -        2. Back         -
echo --------------------------
if %Slot%==-1 echo You have no smeltable items.
set Command=blank
set /p Command=">"
if %Command%==1 goto smelt
if %Command%==2 echo market >%Path%\Game\Places\Location.txt & exit
goto ask
:smelt
goto ask