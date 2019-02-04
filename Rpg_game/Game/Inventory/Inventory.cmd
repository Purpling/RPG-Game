echo off
title Inventory
cls
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
set /p Slots=<%Path%\Game\Inventory\Slots\Slots.txt
:menu
cls
set Count=-1
:count
set /a Count+=1
set /p Item=<%Path%\Game\Inventory\Slots\%Count%.txt
echo %Count%. %Item%
if not %Count%==%Slots% goto count
echo ------------------------
echo -       Move           - (WIP)
echo -       Swap           - (WIP)
echo -       Inspect        - (WIP)
echo -       Refresh        -
echo ------------------------
set Command=Blank
set /p Command=">"
if %Command%==inspect goto inspect
if %Command%==refresh goto menu
goto menu
:inspect