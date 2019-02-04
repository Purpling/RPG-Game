echo off
title Purpling's trainer
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
set Path=%Path:~0,-8%
:menu
cls
if not exist %Path%\Game\Game.cmd (
	echo Install the game then try again.
	pause
	goto menu
)
set /p Location=<%Path%\Game\Places\Location.txt
echo 1. Location: %Location%
set /p Difficulty=<%Path%\Game\Settings\Difficulty.txt
echo 2. Difficulty: %Difficulty%
set /p Bronze=<%Path%\Game\Inventory\Cash\Bronze_coin.txt
echo 3. Bronze Coins: %Bronze%
set /p Silver=<%Path%\Game\Inventory\Cash\Silver_coin.txt
echo 4. Silver Coins: %Silver%
set /p Gold=<%Path%\Game\Inventory\Cash\Gold_coin.txt
echo 5. Gold Coins: %Gold%
set /p Smithing=<%Path%\Game\Skills\Smithing.txt
echo 6. Smithing: %Smithing%
set /p Crafting=<%Path%\Game\Skills\Crafting.txt
echo 7. Crafting: %Crafting%
set /p Repairing=<%Path%\Game\Skills\Repairing.txt
echo 8. Repairing: %Repairing%
set Command=Blank
set /p Command=">"
if %Command%==1 (
	set /p Location="Location: "
	echo %Location%>%Path%\Game\Places\Location.txt
)
if %Command%==2 (
	set /p Difficulty="Difficulty: "
	echo #%Difficulty%>%Path%\Game\Settings\Difficulty.txt
)
if %Command%==3 (
	set /p Bronze="Bronze Coins: "
	echo $%Bronze%>%Path%\Game\Inventory\Cash\Bronze_coin.txt
)
if %Command%==4 (
	set /p Silver="Silver Coins: "
	echo $%Silver%>%Path%\Game\Inventory\Cash\Silver_coin.txt
)
if %Command%==5 (
	set /p Gold="Gold Coins: "
	echo $%Gold%>%Path%\Game\Inventory\Cash\Gold_coin.txt
)
if %Command%==6 (
	set /p Smithing="Smithing: "
	echo @%Smithing%>%Path%\Game\Skills\Smithing.txt
)
if %Command%==7 (
	set /p Crafting="Crafting: "
	echo @%Crafting%>%Path%\Game\Skills\Crafting.txt
)
if %Command%==8 (
	set /p Repairing="Repairing: "
	echo @%Repairing%>%Path%\Game\Skills\Repairing.txt
)
goto menu