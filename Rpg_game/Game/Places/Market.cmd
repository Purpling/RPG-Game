echo off
title Market
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
set Place=blank
:ask
cls
echo --------------------------
echo - Welcome to the market. -
echo --------------------------
echo -     1. blacksmith      - (WIP)
echo -     2. crafter         - (WIP)
echo -     3. merchant        -
echo -     4. mage            - (WIP)
echo -     5. wilderness      - (WIP)
echo --------------------------
set /p Place=">"
if %Place%==1 echo blacksmith >%Path%\Game\Places\Location.txt & exit
if %Place%==2 echo crafter >%Path%\Game\Places\Location.txt & exit
if %Place%==3 echo merchant >%Path%\Game\Places\Location.txt & exit
if %Place%==4 echo mage >%Path%\Game\Places\Location.txt & exit
if %Place%==5 echo wilderness >%Path%\Game\Places\Location.txt & exit
goto ask