echo off
title Pouch
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
:refresh
set /p Bronze=<%Path%\Game\Inventory\Cash\Bronze_coin.txt
set /p Silver=<%Path%\Game\Inventory\Cash\Silver_coin.txt
set /p Gold=<%Path%\Game\Inventory\Cash\Gold_coin.txt
cls
echo Bronze coins: %Bronze%
echo Silver coins: %Silver%
echo Gold coins: %Gold%
goto refresh