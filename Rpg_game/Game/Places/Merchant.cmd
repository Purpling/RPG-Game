echo off
title Merchant
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
set P=\Shop
:menu
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
if exist %Path%\Game%P%\%Number%\Name.txt echo Id: %Number%
if exist %Path%\Game%P%\%Number%\Name.txt echo Name: %Name%
if exist %Path%\Game%P%\View.txt echo --------------------------
if not %Numbers%==-1 if not %Number%==%Numbers% goto loop
echo [%P%]
set Command=Blank
set /p Command=">"
if %Command%==Blank goto menu
if %Command%==back echo market>%Path%\Game\Places\Location.txt & exit
if exist %Path%\Game%P%\%Command%\Name.txt if not %Command%==.. goto item
if %Command%==.. set P=%P:Last%
set Last=%Command%
set P=%P%\%Command%
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game /b`) do set Dir=%%c
for /f "tokens=* usebackq" %%c in (`dir %Path% /b`) do set Start=%%c
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game%P% /b`) do set Link=%%c
if %Link%==%Dir% set P=\Shop
if %Link%==%Start% set P=\Shop
goto menu
:item
cls
echo --------------------------
if exist %Path%\Game%P%\%Command%\Name.txt set /p Name=<%Path%\Game%P%\%Command%\Name.txt
if exist %Path%\Game%P%\%Command%\Buy.txt set /p Buy=<%Path%\Game%P%\%Command%\Buy.txt
if exist %Path%\Game%P%\%Command%\Sell.txt set /p Sell=<%Path%\Game%P%\%Command%\Sell.txt
if exist %Path%\Game%P%\%Command%\Name.txt echo Id: %Command%
if exist %Path%\Game%P%\%Command%\Name.txt echo Name: %Name%
if exist %Path%\Game%P%\%Command%\Buy.txt echo Buy: %Buy%
if exist %Path%\Game%P%\%Command%\Sell.txt echo Sell: %Sell%
echo --------------------------
echo -       1. Buy           -
echo -       2. Sell          -
echo -       3. Back          -
echo --------------------------
set Word=Blank
set /p Word=">"
if %Word%==1 goto buy
if %Word%==2 goto sell
if %Word%==3 goto menu
goto item
:buy
set /p Slots=<%Path%\Game\Inventory\Slots\Slots.txt
set Slot=-1
set Empty=0
:buyl1
set /a Slot+=1
set /p Content=<%Path%\Game\Inventory\Slots\%Slot%.txt
if "%Content%"=="Empty" set /a Empty+=1
if not %Slot%==%Slots% goto buyl1
if %Empty%==0 (
	cls
	echo Your inventory is full.
	pause
	goto item
)
set /p Cash=<%Path%\Game\Inventory\Cash\Bronze_coin.txt
set /a Cost=%Buy%+-%Cash%
if %Cost% leq %Buy% (
	cls
	echo You need %Cost% more.
	pause
	goto item
)
set Slot=-1
:buyl2
set /a Slot+=1
set /p Content=<%Path%\Game\Inventory\Slots\%Slot%.txt
if "%Content%"=="Empty" (
	echo %Cost%>%Path%\Game\Inventory\Cash\Bronze_coin.txt
	echo %Name%>%Path%\Game\Inventory\Slots\%Slot%.txt
	cls
	echo %Name% bought for %Buy%.
	echo %Name% placed in slot %Slot%.
	pause
	goto item
)
if not %Slot%==%Slots% goto buyl2
goto item
:sell
set /p Slots=<%Path%\Game\Inventory\Slots\Slots.txt
set Slot=-1
set Empty=0
:sell1
set /a Slot+=1
set /p Content=<%Path%\Game\Inventory\Slots\%Slot%.txt
if "%Content%"=="%Name%" set /a Empty+=1
if not %Slot%==%Slots% goto sell1
if %Empty%==0 (
	cls
	echo There is no %Name% in your inventory.
	pause
	goto item
)
set Slot=-1
:sell2
set /a Slot+=1
set /p Content=<%Path%\Game\Inventory\Slots\%Slot%.txt
set /a Give=%Cash%+%Sell%
if "%Content%"=="%Name%" (
	echo Empty>%Path%\Game\Inventory\Slots\%Slot%.txt
	echo %Give%>%Path%\Game\Inventory\Cash\Bronze_coin.txt
	cls
	echo %Name% sold for %Sell%.
	echo %Name% taken from slot %Slot%.
	pause
	goto item
)
if not %Slot%==%Slots% goto sell2
goto item