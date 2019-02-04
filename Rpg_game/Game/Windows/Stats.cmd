echo off
title Stats
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
:refresh
set /p Smithing=<%Path%\Game\Skills\Smithing.txt
set /p Crafting=<%Path%\Game\Skills\Crafting.txt
set /p Repairing=<%Path%\Game\Skills\Repairing.txt
cls
echo Smithing: %Smithing%
echo Crafting: %Crafting%
echo Repairing: %Repairing%
goto refresh