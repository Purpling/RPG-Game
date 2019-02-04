echo off
title Crafter
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
set Command=blank
:ask
cls
echo --------------------------
echo -     Master crafter.    -
echo --------------------------
echo -       1. Craft         - (WIP)
echo -       2. Back          -
echo --------------------------
set /p Command=">"
if %Command%==1 goto craft
if %Command%==2 echo market >%Path%\Game\Places\Location.txt & exit
goto ask
:craft