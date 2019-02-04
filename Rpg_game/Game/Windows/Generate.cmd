echo off
title Generating...
cls
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
if not exist %Path%\Game\Places\Location.txt echo market>Game\Places\Location.txt
if not exist %Path%\Game\Settings mkdir Game\Settings
if not exist %Path%\Game\Settings\Difficulty.txt echo 3>Game\Settings\Difficulty.txt
if not exist %Path%\Game\Skills mkdir %Path%\Game\Skills
if not exist %Path%\Game\Skills\Smithing.txt echo 0>%Path%\Game\Skills\Smithing.txt
if not exist %Path%\Game\Skills\Crafting.txt echo 0>%Path%\Game\Skills\Crafting.txt
if not exist %Path%\Game\Skills\Repairing.txt echo 0>%Path%\Game\Skills\Repairing.txt
if not exist %Path%\Game\Inventory\Cash mkdir %Path%\Game\Inventory\Cash
if not exist %Path%\Game\Inventory\Cash\Bronze_coin.txt echo 0>%Path%\Game\Inventory\Cash\Bronze_coin.txt
if not exist %Path%\Game\Inventory\Cash\Silver_coin.txt echo 0>%Path%\Game\Inventory\Cash\Silver_coin.txt
if not exist %Path%\Game\Inventory\Cash\Gold_coin.txt echo 0>%Path%\Game\Inventory\Cash\Gold_coin.txt
if not exist %Path%\Game\Inventory\Slots mkdir %Path%\Game\Inventory\Slots
if not exist %Path%\Game\Inventory\Slots\Slots.txt echo 10>%Path%\Game\Inventory\Slots\Slots.txt
set /p Slots=<%Path%\Game\Inventory\Slots\Slots.txt
set Slot=-1
:slot
set /a Slot+=1
if not exist %Path%\Game\Inventory\Slots\%Slot%.txt echo Empty>%Path%\Game\Inventory\Slots\%Slot%.txt
if not %Slot%==%Slots% goto slot
if not exist %Path%\Game\Inventory\Equiped mkdir %Path%\Game\Inventory\Equiped
if not exist %Path%\Game\Inventory\Equiped\Head mkdir %Path%\Game\Inventory\Equiped\Head
if not exist %Path%\Game\Inventory\Equiped\Body mkdir %Path%\Game\Inventory\Equiped\Body
if not exist %Path%\Game\Inventory\Equiped\Legs mkdir %Path%\Game\Inventory\Equiped\Legs
if not exist %Path%\Game\Inventory\Equiped\Neck mkdir %Path%\Game\Inventory\Equiped\Neck
if not exist %Path%\Game\Inventory\Equiped\Hands mkdir %Path%\Game\Inventory\Equiped\Hands
if not exist %Path%\Game\Inventory\Equiped\Feet mkdir %Path%\Game\Inventory\Equiped\Feet
if not exist %Path%\Game\Inventory\Equiped\Cape mkdir %Path%\Game\Inventory\Equiped\Cape
if not exist %Path%\Game\Inventory\Equiped\Quiver mkdir %Path%\Game\Inventory\Equiped\Quiver
if not exist %Path%\Game\Inventory\Equiped\Left mkdir %Path%\Game\Inventory\Equiped\Left
if not exist %Path%\Game\Inventory\Equiped\Right mkdir %Path%\Game\Inventory\Equiped\Right
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Head) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Head\Name.txt
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Body) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Body\Name.txt
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Legs) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Legs\Name.txt
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Neck) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Neck\Name.txt
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Hands) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Hands\Name.txt
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Feet) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Feet\Name.txt
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Cape) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Cape\Name.txt
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Quiver) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Quiver\Name.txt
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Left) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Left\Name.txt
set I=-1
for %%i in (%Path%\Game\Inventory\Equiped\Right) do set /a I+=1
if %I%==0 echo Empty >%Path%\Game\Inventory\Equiped\Right\Name.txt
exit