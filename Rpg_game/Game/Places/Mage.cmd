echo off
title Mage
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
set Command=blank
:ask
cls
echo --------------------------
echo -   Mage's magic shop.   -
echo --------------------------
echo -        1. Buy          - (WIP)
echo -        2. Back         -
echo --------------------------
set /p Command=">"
if %Command%==1 goto buy
if %Command%==2 echo market >%Path%\Game\Places\Location.txt & exit
goto ask