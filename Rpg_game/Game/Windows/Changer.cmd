echo off
title Changer
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
set P=\Shop
:shop
cls
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game%P% /b`) do (
	echo %%c
)
set Number=-1
set Numbers=-1
for /D %%c in (%Path%\Game%P%) do set /a Numbers+=1
if exist %Path%\Game%P%\View.txt cls
if exist %Path%\Game%P%\View.txt echo --------------------------
:loop
set /a Number+=1
if exist %Path%\Game%P%\%Number%\Name.txt set /p Name=<%Path%\Game%P%\%Number%\Name.txt
if exist %Path%\Game%P%\%Number%\Buy.txt set /p Buy=<%Path%\Game%P%\%Number%\Buy.txt & set Buy=%Buy:$=%
if exist %Path%\Game%P%\%Number%\Sell.txt set /p Sell=<%Path%\Game%P%\%Number%\Sell.txt & set Sell=%Sell:$=%
if exist %Path%\Game%P%\%Number%\Level.txt set /p Level=<%Path%\Game%P%\%Number%\Level.txt & set Level=%Level:@=%
if exist %Path%\Game%P%\%Number%\Type.txt set /p Type=<%Path%\Game%P%\%Number%\Type.txt
if exist %Path%\Game%P%\%Number%\Chance.txt set /p Chance=<%Path%\Game%P%\%Number%\Chance.txt & set Chance=%Chance:@=%
if exist %Path%\Game%P%\%Number%\Durability.txt set /p Durability=<%Path%\Game%P%\%Number%\Durability.txt & set Durability=%Durability:@=%
if exist %Path%\Game%P%\%Number%\Smelt\Level.txt set /p Level=<%Path%\Game%P%\%Number%\Smelt\Level.txt & set Level=%Level:@=%
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt set /p Ammount=<%Path%\Game%P%\%Number%\Smelt\Ammount.txt & set Ammount=%Ammount:@=%
if exist %Path%\Game%P%\%Number%\Craft\Level.txt set /p Level=<%Path%\Game%P%\%Number%\Craft\Level.txt & set Level=%Level:@=%
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt set /p Ammount=<%Path%\Game%P%\%Number%\Craft\Ammount.txt & set Ammount=%Ammount:@=%
if exist %Path%\Game%P%\%Number%\Repair\Level.txt set /p Level=<%Path%\Game%P%\%Number%\Repair\Level.txt & set Level=%Level:@=%
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt set /p Ammount=<%Path%\Game%P%\%Number%\Repair\Ammount.txt & set Ammount=%Ammount:@=%
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
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt set /p Item=<%Path%\Game%P%\%Number%\Smelt\%Var%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt set /p Itemp=<%Path%\Game%P%\%Number%\Smelt\%Var%p.txt
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt echo (Smelt) Item%Var%: %Item%
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt echo (Smelt) Item%Var%p: %Itemp%
if exist %Path%\Game%P%\%Number%\Smelt\Ammount.txt if not %Var%==%Ammount% goto use
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt set /p Item=<%Path%\Game%P%\%Number%\Craft\%Var%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt set /p Itemp=<%Path%\Game%P%\%Number%\Craft\%Var%p.txt
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt echo (Craft) Item%Var%: %Item%
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt echo (Craft) Item%Var%p: %Itemp%
if exist %Path%\Game%P%\%Number%\Craft\Ammount.txt if not %Var%==%Ammount% goto use
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt set /p Item=<%Path%\Game%P%\%Number%\Repair\%Var%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt set /p Itemp=<%Path%\Game%P%\%Number%\Repair\%Var%p.txt
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt echo (Repair) Item%Var%: %Item%
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt echo (Repair) Item%Var%p: %Itemp%
if exist %Path%\Game%P%\%Number%\Repair\Ammount.txt if not %Var%==%Ammount% goto use
if exist %Path%\Game%P%\View.txt echo --------------------------
if not %Numbers%==-1 if not %Number%==%Numbers% goto loop
echo [%P%]
set Command=Blank
set /p Command=">"
if %Command%==Blank goto shop
if exist %Path%\Game%P%\%Command%\Name.txt if not %Command%==.. goto item
if %Command%==.. set P=%P:Last%
set Last=%Command%
set P=%P%\%Command%
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game /b`) do set Dir=%%c
for /f "tokens=* usebackq" %%c in (`dir %Path% /b`) do set Start=%%c
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game%P% /b`) do set Link=%%c
if %Link%==%Dir% set P=\Shop
if %Link%==%Start% set P=\Shop
goto shop
:item
cls
echo --------------------------
if exist %Path%\Game%P%\%Command%\Name.txt set /p Name=<%Path%\Game%P%\%Command%\Name.txt
if exist %Path%\Game%P%\%Command%\Buy.txt set /p Buy=<%Path%\Game%P%\%Command%\Buy.txt & set Buy=%Buy:$=%
if exist %Path%\Game%P%\%Command%\Sell.txt set /p Sell=<%Path%\Game%P%\%Command%\Sell.txt & set Sell=%Sell:$=%
if exist %Path%\Game%P%\%Command%\Level.txt set /p Level=<%Path%\Game%P%\%Command%\Level.txt & set Level=%Level:@=%
if exist %Path%\Game%P%\%Command%\Type.txt set /p Type=<%Path%\Game%P%\%Command%\Type.txt
if exist %Path%\Game%P%\%Command%\Chance.txt set /p Chance=<%Path%\Game%P%\%Command%\Chance.txt & set Chance=%Chance:@=%
if exist %Path%\Game%P%\%Command%\Durability.txt set /p Durability=<%Path%\Game%P%\%Command%\Durability.txt & set Durability=%Durability:@=%
if exist %Path%\Game%P%\%Command%\Smelt\Level.txt set /p Level=<%Path%\Game%P%\%Command%\Smelt\Level.txt & set Level=%Level:@=%
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt set /p Ammount=<%Path%\Game%P%\%Command%\Smelt\Ammount.txt & set Ammount=%Ammount:@=%
if exist %Path%\Game%P%\%Command%\Craft\Level.txt set /p Level=<%Path%\Game%P%\%Command%\Craft\Level.txt & set Level=%Level:@=%
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt set /p Ammount=<%Path%\Game%P%\%Command%\Craft\Ammount.txt & set Ammount=%Ammount:@=%
if exist %Path%\Game%P%\%Command%\Repair\Level.txt set /p Level=<%Path%\Game%P%\%Command%\Repair\Level.txt & set Level=%Level:@=%
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt set /p Ammount=<%Path%\Game%P%\%Command%\Repair\Ammount.txt & set Ammount=%Ammount:@=%
if exist %Path%\Game%P%\%Command%\Name.txt echo Id: %Command%
if exist %Path%\Game%P%\%Command%\Name.txt echo Name: %Name%
if exist %Path%\Game%P%\%Command%\Buy.txt echo Buy: %Buy%
if exist %Path%\Game%P%\%Command%\Sell.txt echo Sell: %Sell%
if exist %Path%\Game%P%\%Command%\Level.txt echo Level: %Level%
if exist %Path%\Game%P%\%Command%\Type.txt echo Type: %Type%
if exist %Path%\Game%P%\%Command%\Chance.txt echo Chance: %Chance%
if exist %Path%\Game%P%\%Command%\Durability.txt echo Durability: %Durability%
if exist %Path%\Game%P%\%Command%\Smelt\Level.txt echo (Smelt) Level: %Level%
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt echo (Smelt) Ammount: %Ammount%
if exist %Path%\Game%P%\%Command%\Craft\Level.txt echo (Craft) Level: %Level%
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt echo (Craft) Ammount: %Ammount%
if exist %Path%\Game%P%\%Command%\Repair\Level.txt echo (Repair) Level: %Level%
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt echo (Repair) Ammount: %Ammount%
set Var=-1
set /a Ammount+=-1
:need
set /a Var+=1
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt set /p Item=<%Path%\Game%P%\%Command%\Smelt\%Var%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt set /p Itemp=<%Path%\Game%P%\%Command%\Smelt\%Var%p.txt
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt echo (Smelt) Item%Var%: %Item%
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt echo (Smelt) Item%Var%p: %Itemp%
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt if not %Var%==%Ammount% goto need
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt set /p Item=<%Path%\Game%P%\%Command%\Craft\%Var%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt set /p Itemp=<%Path%\Game%P%\%Command%\Craft\%Var%p.txt
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt echo (Craft) Item%Var%: %Item%
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt echo (Craft) Item%Var%p: %Itemp%
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt if not %Var%==%Ammount% goto need
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt set /p Item=<%Path%\Game%P%\%Command%\Repair\%Var%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt set /p Itemp=<%Path%\Game%P%\%Command%\Repair\%Var%p.txt
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt echo (Repair) Item%Var%: %Item%
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt echo (Repair) Item%Var%p: %Itemp%
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt if not %Var%==%Ammount% goto need
echo --------------------------
echo -          Back          -
echo --------------------------
set Word=Blank
set /p Word=">"
if %Word%==back goto shop
if exist %Path%\Game%P%\%Command%\Name.txt if %Word%==name goto change
if exist %Path%\Game%P%\%Command%\Buy.txt if %Word%==buy goto change
if exist %Path%\Game%P%\%Command%\Sell.txt if %Word%==sell goto change
if exist %Path%\Game%P%\%Command%\Level.txt if %Word%==level goto change
if exist %Path%\Game%P%\%Command%\Type.txt if %Word%==type goto change
if exist %Path%\Game%P%\%Command%\Chance.txt if %Word%==chance goto change
if exist %Path%\Game%P%\%Command%\Durability.txt if %Word%==durability goto change
if exist %Path%\Game%P%\%Command%\Name.txt if %Word%==extra goto Require
if exist %Path%\Game%P%\%Command%\Smelt if %Word%==smelt goto sort
if exist %Path%\Game%P%\%Command%\Craft if %Word%==craft goto sort
if exist %Path%\Game%P%\%Command%\Repair if %Word%==repair goto sort
goto item
:require
cls
set Mode=Blank
set /p Mode="Mode: "
if %Mode%==Blank goto require
if %Mode%==level set Mode=Level
if %Mode%==ammount set Mode=Ammount
set Type=Blank
set /p Type="Type: "
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt if %Type%==smelt goto change
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt if %Type%==craft goto change
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt if %Type%==repair goto change
goto require
:sort
set Count=-1
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt if %Word%==smelt set /p Counts=<%Path%\Game%P%\%Command%\Smelt\Ammount.txt & set Counts=%Counts:@=%
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt if %Word%==craft set /p Counts=<%Path%\Game%P%\%Command%\Craft\Ammount.txt & set Counts=%Counts:@=%
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt if %Word%==repair set /p Counts=<%Path%\Game%P%\%Command%\Repair\Ammount.txt & set Counts=%Counts:@=%
:run
set /a Count+=1
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt if %Word%==smelt set /p Item=<%Path%\Game%P%\%Command%\Smelt\%Count%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt if %Word%==craft set /p Item=<%Path%\Game%P%\%Command%\Craft\%Count%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt if %Word%==repair set /p Item=<%Path%\Game%P%\%Command%\Repair\%Count%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt if %Word%==smelt echo (Smelt) [%Count%] %Item%
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt if %Word%==craft echo (Craft) [%Count%] %Item%
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt if %Word%==repair echo (Repair) [%Count%] %Item%
set /a Check=%Counts%+-1
if not %Count%==%Check% goto run
set Variable=0
set /p Variable=">"
if exist %Path%\Game%P%\%Command%\Smelt\Ammount.txt if %Word%==smelt set /p Item=<%Path%\Game%P%\%Command%\Smelt\%Variable%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Command%\Craft\Ammount.txt if %Word%==craft set /p Item=<%Path%\Game%P%\%Command%\Craft\%Variable%.txt & set Item=%Item:@=%
if exist %Path%\Game%P%\%Command%\Repair\Ammount.txt if %Word%==repair set /p Item=<%Path%\Game%P%\%Command%\Repair\%Variable%.txt & set Item=%Item:@=%
:change
setlocal EnableDelayedExpansion
if %Word%==name (
	echo Old: %Name%
	set /p Name="New: "
	echo !Name!>%Path%\Game%P%\%Command%\Name.txt
	goto item
)
if %Word%==buy (
	echo Old: %Buy%
	set /p Buy="New: "
	echo $!Buy!>%Path%\Game%P%\%Command%\Buy.txt
	goto item
)
if %Word%==sell (
	echo Old: %sell%
	set /p sell="New: "
	echo $!sell!>%Path%\Game%P%\%Command%\sell.txt
	goto item
)
if %Word%==level (
	echo Old: %Level%
	set /p Level="New: "
	echo @!Level!>%Path%\Game%P%\%Command%\Level.txt
	goto item
)
if %Word%==type (
	echo Old: %Type%
	set /p Type="New: "
	echo !Type!>%Path%\Game%P%\%Command%\Type.txt
	goto item
)
if %Word%==chance (
	echo Old: %Chance%
	set /p Chance="New: "
	echo @!Chance!>%Path%\Game%P%\%Command%\Chance.txt
	goto item
)
if %Word%==durability (
	echo Old: %Durability%
	set /p Durability="New: "
	echo @!Durability!>%Path%\Game%P%\%Command%\Durability.txt
	goto item
)
if %Type%==smelt (
	set /p Item=<%Path%\Game%P%\%Command%\Smelt\%Mode%.txt
	echo Old: %Item%
	set /p Item="New: "
	echo @!Item!>%Path%\Game%P%\%Command%\Smelt\%Mode%.txt
	goto item
)
if %Type%==craft (
	set /p Item=<%Path%\Game%P%\%Command%\Craft\%Mode%.txt
	echo Old: %Item%
	set /p Item="New: "
	echo @!Item!>%Path%\Game%P%\%Command%\Craft\%Mode%.txt
	goto item
)
if %Type%==repair (
	set /p Item=<%Path%\Game%P%\%Command%\Repair\%Mode%.txt
	echo Old: %Item%
	set /p Item="New: "
	echo @!Item!>%Path%\Game%P%\%Command%\Repair\%Mode%.txt
	goto item
)
if %Word%==smelt (
	echo Old: %Item%
	set /p Item="New: "
	echo !Item!>%Path%\Game%P%\%Command%\Smelt\%Variable%.txt
	goto item
)
if %Word%==craft (
	echo Old: %Item%
	set /p Item="New: "
	echo !Item!>%Path%\Game%P%\%Command%\Craft\%Variable%.txt
	goto item
)
if %Word%==repair (
	echo Old: %Item%
	set /p Item="New: "
	echo !Item!>%Path%\Game%P%\%Command%\Repair\%Variable%.txt
	goto item
)
endlocal
goto item