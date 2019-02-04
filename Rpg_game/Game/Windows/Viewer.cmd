echo off
title Viewer
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
set P=\Shop
:shop
cls
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game%P% /b`) do (
	echo %%c
)
set Number=-1
set Numbers=-1
for /D %%c in (%Path%\Game%P%\*) do set /a Numbers+=1
echo [%P%]
if exist %Path%\Game%P%\View.txt cls
if exist %Path%\Game%P%\View.txt echo -
:loop
set /a Number+=1
if exist %Path%\Game%P%\%Number%\Name.txt set /p Name=<%Path%\Game%P%\%Number%\Name.txt
if exist %Path%\Game%P%\%Number%\Buy.txt set /p Buy=<%Path%\Game%P%\%Number%\Buy.txt
if exist %Path%\Game%P%\%Number%\Sell.txt set /p Sell=<%Path%\Game%P%\%Number%\Sell.txt
if exist %Path%\Game%P%\%Number%\Level.txt set /p Level=<%Path%\Game%P%\%Number%\Level.txt
if exist %Path%\Game%P%\%Number%\Type.txt set /p Type=<%Path%\Game%P%\%Number%\Type.txt
if exist %Path%\Game%P%\%Number%\Chance.txt set /p Chance=<%Path%\Game%P%\%Number%\Chance.txt
if exist %Path%\Game%P%\%Number%\Durability.txt set /p Durability=<%Path%\Game%P%\%Number%\Durability.txt
if exist %Path%\Game%P%\%Number%\Smelt\Level.txt set /p Level=<%Path%\Game%P%\%Number%\Smelt\Level.txt
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt set /p Ammount=<%Path%\Game%P%\%Number%\Smelt\Ammount.txt
if exist %Path%\Game%P%\%Number%\Craft\Level.txt set /p Level=<%Path%\Game%P%\%Number%\Craft\Level.txt
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt set /p Ammount=<%Path%\Game%P%\%Number%\Craft\Ammount.txt
if exist %Path%\Game%P%\%Number%\Repair\Level.txt set /p Level=<%Path%\Game%P%\%Number%\Repair\Level.txt
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt set /p Ammount=<%Path%\Game%P%\%Number%\Repair\Ammount.txt
if exist %Path%\Game%P%\%Number%\Name.txt echo Id: %Number%
if exist %Path%\Game%P%\%Number%\Name.txt echo Name: %Name%
if exist %Path%\Game%P%\%Number%\Buy.txt echo Buy: %Buy%
if exist %Path%\Game%P%\%Number%\Sell.txt echo Sell: %Sell%
if exist %Path%\Game%P%\%Number%\Level.txt echo Level: %Level%
if exist %Path%\Game%P%\%Number%\Type.txt echo Type: %Type%
if exist %Path%\Game%P%\%Number%\Chance.txt echo Chance: %Chance%
if exist %Path%\Game%P%\%Number%\Durability.txt echo Durability: %Durability%
if exist %Path%\Game%P%\%Number%\Smelt\Level.txt echo (Smelt) Level: %Level%
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt echo (Smelt) Ammount: %Ammount%
if exist %Path%\Game%P%\%Number%\Craft\Level.txt echo (Craft) Level: %Level%
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt echo (Craft) Ammount: %Ammount%
if exist %Path%\Game%P%\%Number%\Repair\Level.txt echo (Repair) Level: %Level%
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt echo (Repair) Ammount: %Ammount%
set Var=-1
set /a Ammount+=-1
:use
set /a Var+=1
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt set /p Item=<%Path%\Game%P%\%Number%\Smelt\%Var%.txt
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt set /p Itemp=<%Path%\Game%P%\%Number%\Smelt\%Var%p.txt
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt echo (Smelt) Item%Var%: %Item%
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt echo (Smelt) Item%Var%p: %Itemp%
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt if not %Var%==%Ammount% goto use
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt set /p Item=<%Path%\Game%P%\%Number%\Craft\%Var%.txt
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt set /p Itemp=<%Path%\Game%P%\%Number%\Craft\%Var%p.txt
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt echo (Craft) Item%Var%: %Item%
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt echo (Craft) Item%Var%p: %Itemp%
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt if not %Var%==%Ammount% goto use
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt set /p Item=<%Path%\Game%P%\%Number%\Repair\%Var%.txt
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt set /p Itemp=<%Path%\Game%P%\%Number%\Repair\%Var%p.txt
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt echo (Repair) Item%Var%: %Item%
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt echo (Repair) Item%Var%p: %Itemp%
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt if not %Var%==%Ammount% goto use
if exist %Path%\Game%P%\View.txt echo - 
if not %Numbers%==-1 if not %Number%==%Numbers% goto loop
set Command=Blank
set /p Command=">"
if %Command%==Blank goto shop
if %Command%==.. set P=%P:Last%
set Last=%Command%
set P=%P%\%Command%
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game /b`) do set Dir=%%c
for /f "tokens=* usebackq" %%c in (`dir %Path% /b`) do set Start=%%c
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game%P% /b`) do set Link=%%c
if %Link%==%Dir% set P=\Shop
if %Link%==%Start% set P=\Shop
goto shop