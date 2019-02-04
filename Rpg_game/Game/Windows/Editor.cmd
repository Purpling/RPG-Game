echo off
title Editor
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
if exist %Path%\Game%P%\View.txt echo ------------------
:loop
set /a Number+=1
if exist %Path%\Game%P%\%Number%\Name.txt set /p Name=<%Path%\Game%P%\%Number%\Name.txt
if exist %Path%\Game%P%\%Number%\Name.txt echo Id: %Number%
if exist %Path%\Game%P%\%Number%\Name.txt echo Name: %Name%
if exist %Path%\Game%P%\View.txt echo ------------------
if not %Numbers%==-1 if not %Number%==%Numbers% goto loop
if exist %Path%\Game%P%\View.txt echo -      Add       -
if exist %Path%\Game%P%\View.txt echo -      Delete    -
if exist %Path%\Game%P%\View.txt echo -      Back      -
if exist %Path%\Game%P%\View.txt echo ------------------
echo [%P%]
set Command=Blank
set /p Command=">"
if %Command%==Blank goto shop
if exist %Path%\Game%P%\View.txt if %Command%==add goto add
if exist %Path%\Game%P%\View.txt if %Command%==delete goto del
if exist %Path%\Game%P%\View.txt if %Command%==back set Command=..
if %Command%==.. set P=%P:Last%
set Last=%Command%
set P=%P%\%Command%
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game /b`) do set Dir=%%c
for /f "tokens=* usebackq" %%c in (`dir %Path% /b`) do set Start=%%c
for /f "tokens=* usebackq" %%c in (`dir %Path%\Game%P% /b`) do set Link=%%c
if %Link%==%Dir% set P=\Shop
if %Link%==%Start% set P=\Shop
goto shop
:add
cls
set Name=Blank
set Buy=Blank
set Sell=Blank
set Durability=Blank
set Defence=Blank
set Damage=Blank
set Type=Blank
set Chance=Blank
set Smelt=Blank
set Smeltc=Blank
set Craftc=Blank
set Repairc=Blank
set Smeltl=Blank
set Craftl=Blank
set Repairl=Blank
set /p Name="Name: "
set /p Buy="Buy: "
set /p Sell="Sell: "
if %P%==\Shop\Armors\Head set /p Durability="Durability: "
if %P%==\Shop\Armors\Head set /p Defence="Defence: "
if %P%==\Shop\Armors\Head set /p Craftc="Craft require: "
if %P%==\Shop\Armors\Head set /p Repairc="Repair require: "
if %P%==\Shop\Armors\Head set /p Craftl="Craft level: "
if %P%==\Shop\Armors\Head set /p Repairl="Repair level: "
if %P%==\Shop\Armors\Body set /p Durability="Durability: "
if %P%==\Shop\Armors\Body set /p Defence="Defence: "
if %P%==\Shop\Armors\Body set /p Craftc="Craft require: "
if %P%==\Shop\Armors\Body set /p Repairc="Repair require: "
if %P%==\Shop\Armors\Body set /p Craftl="Craft level: "
if %P%==\Shop\Armors\Body set /p Repairl="Repair level: "
if %P%==\Shop\Armors\Legs set /p Durability="Durability: "
if %P%==\Shop\Armors\Legs set /p Defence="Defence: "
if %P%==\Shop\Armors\Legs set /p Craftc="Craft require: "
if %P%==\Shop\Armors\Legs set /p Repairc="Repair require: "
if %P%==\Shop\Armors\Legs set /p Craftl="Craft level: "
if %P%==\Shop\Armors\Legs set /p Repairl="Repair level: "
if %P%==\Shop\Armors\Hands set /p Durability="Durability: "
if %P%==\Shop\Armors\Hands set /p Defence="Defence: "
if %P%==\Shop\Armors\Hands set /p Craftc="Craft require: "
if %P%==\Shop\Armors\Hands set /p Repairc="Repair require: "
if %P%==\Shop\Armors\Hands set /p Craftl="Craft level: "
if %P%==\Shop\Armors\Hands set /p Repairl="Repair level: "
if %P%==\Shop\Armors\Feet set /p Durability="Durability: "
if %P%==\Shop\Armors\Feet set /p Defence="Defence: "
if %P%==\Shop\Armors\Feet set /p Craftc="Craft require: "
if %P%==\Shop\Armors\Feet set /p Repairc="Repair require: "
if %P%==\Shop\Armors\Feet set /p Craftl="Craft level: "
if %P%==\Shop\Armors\Feet set /p Repairl="Repair level: "
if %P%==\Shop\Armors\Neck set /p Durability="Durability: "
if %P%==\Shop\Armors\Neck set /p Defence="Defence: "
if %P%==\Shop\Armors\Neck set /p Craftc="Craft require: "
if %P%==\Shop\Armors\Neck set /p Repairc="Repair require: "
if %P%==\Shop\Armors\Neck set /p Craftl="Craft level: "
if %P%==\Shop\Armors\Neck set /p Repairl="Repair level: "
if %P%==\Shop\Armors\Cape set /p Durability="Durability: "
if %P%==\Shop\Armors\Cape set /p Defence="Defence: "
if %P%==\Shop\Armors\Cape set /p Craftc="Craft require: "
if %P%==\Shop\Armors\Cape set /p Repairc="Repair require: "
if %P%==\Shop\Armors\Cape set /p Craftl="Craft level: "
if %P%==\Shop\Armors\Cape set /p Repairl="Repair level: "
if %P%==\Shop\Bars set /p Smeltc="Smelt require: "
if %P%==\Shop\Bars set /p Smeltl="Smelt level: "
if %P%==\Shop\Crafts set /p Craftc="Craft require: "
if %P%==\Shop\Crafts set /p Craftl="Craft level: "
if %P%==\Shop\Ores set /p Type="Type: "
if %P%==\Shop\Ores set /p Chance="Chance: "
if %P%==\Shop\Ores set /p Smelt="Smelt level: "
if %P%==\Shop\Tools\Pickaxes set /p Type="Type: "
if %P%==\Shop\Tools\Pickaxes set /p Durability="Durability: "
if %P%==\Shop\Tools\Pickaxes set /p Craftc="Craft require: "
if %P%==\Shop\Tools\Pickaxes set /p Repairc="Repair require: "
if %P%==\Shop\Tools\Pickaxes set /p Craftl="Craft level: "
if %P%==\Shop\Tools\Pickaxes set /p Repairl="Repair level: "
if %P%==\Shop\Tools\Axes set /p Type="Type: "
if %P%==\Shop\Tools\Axes set /p Durability="Durability: "
if %P%==\Shop\Tools\Axes set /p Craftc="Craft require: "
if %P%==\Shop\Tools\Axes set /p Repairc="Repair require: "
if %P%==\Shop\Tools\Axes set /p Craftl="Craft level: "
if %P%==\Shop\Tools\Axes set /p Repairl="Repair level: "
if %P%==\Shop\Weapons\Melee\Sword set /p Damage="Damage: "
if %P%==\Shop\Weapons\Melee\Sword set /p Craftc="Craft require: "
if %P%==\Shop\Weapons\Melee\Sword set /p Repairc="Repair require: "
if %P%==\Shop\Weapons\Melee\Sword set /p Craftl="Craft level: "
if %P%==\Shop\Weapons\Melee\Sword set /p Repairl="Repair level: "
if %P%==\Shop\Weapons\Melee\Battleaxe set /p Damage="Damage: "
if %P%==\Shop\Weapons\Melee\Battleaxe set /p Craftc="Craft require: "
if %P%==\Shop\Weapons\Melee\Battleaxe set /p Repairc="Repair require: "
if %P%==\Shop\Weapons\Melee\Battleaxe set /p Craftl="Craft level: "
if %P%==\Shop\Weapons\Melee\Battleaxe set /p Repairl="Repair level: "
if %P%==\Shop\Weapons\Ranged\Bow set /p Damage="Damage: "
if %P%==\Shop\Weapons\Ranged\Bow set /p Craftc="Craft require: "
if %P%==\Shop\Weapons\Ranged\Bow set /p Repairc="Repair require: "
if %P%==\Shop\Weapons\Ranged\Bow set /p Craftl="Craft level: "
if %P%==\Shop\Weapons\Ranged\Bow set /p Repairl="Repair level: "
if %P%==\Shop\Weapons\Ranged\Quiver set /p Damage="Damage: "
if %P%==\Shop\Weapons\Ranged\Quiver set /p Craftc="Craft require: "
if %P%==\Shop\Weapons\Ranged\Quiver set /p Repairc="Repair require: "
if %P%==\Shop\Weapons\Ranged\Quiver set /p Craftl="Craft level: "
if %P%==\Shop\Weapons\Ranged\Quiver set /p Repairl="Repair level: "
if %P%==\Shop\Weapons\Magic\Staff set /p Damage="Damage: "
if %P%==\Shop\Weapons\Magic\Staff set /p Craftc="Craft require: "
if %P%==\Shop\Weapons\Magic\Staff set /p Repairc="Repair require: "
if %P%==\Shop\Weapons\Magic\Staff set /p Craftl="Craft level: "
if %P%==\Shop\Weapons\Magic\Staff set /p Repairl="Repair level: "
if %P%==\Shop\Weapons\Magic\Spellbook set /p Damage="Damage: "
if %P%==\Shop\Weapons\Magic\Spellbook set /p Craftc="Craft require: "
if %P%==\Shop\Weapons\Magic\Spellbook set /p Repairc="Repair require: "
if %P%==\Shop\Weapons\Magic\Spellbook set /p Craftl="Craft level: "
if %P%==\Shop\Weapons\Magic\Spellbook set /p Repairl="Repair level: "
if not %Number%==0 set /a Number+=1
mkdir %Path%\Game%P%\%Number%
if not "%Name%"=="Blank" echo %Name%>%Path%\Game%P%\%Number%\Name.txt
if not "%Buy%"=="Blank" echo $%Buy%>%Path%\Game%P%\%Number%\Buy.txt
if not "%Sell%"=="Blank" echo $%Sell%>%Path%\Game%P%\%Number%\Sell.txt
if not "%Durability%"=="Blank" echo @%Durability%>%Path%\Game%P%\%Number%\Durability.txt
if not "%Defence%"=="Blank" echo @%Defence%>%Path%\Game%P%\%Number%\Defence.txt
if not "%Damage%"=="Blank" echo @%Damage%>%Path%\Game%P%\%Number%\Damage.txt
if not "%Smeltc%"=="Blank" if not exist %Path%\Game%P%\%Number%\Smelt mkdir %Path%\Game%P%\%Number%\Smelt
if not "%Craftc%"=="Blank" if not exist %Path%\Game%P%\%Number%\Craft mkdir %Path%\Game%P%\%Number%\Craft
if not "%Repairc%"=="Blank" if not exist %Path%\Game%P%\%Number%\Repair mkdir %Path%\Game%P%\%Number%\Repair
if not "%Smeltc%"=="Blank" echo @%Smeltc%>%Path%\Game%P%\%Number%\Smelt\Ammount.txt
if not "%Craftc%"=="Blank" echo @%Craftc%>%Path%\Game%P%\%Number%\Craft\Ammount.txt
if not "%Repairc%"=="Blank" echo @%Repairc%>%Path%\Game%P%\%Number%\Repair\Ammount.txt
if not "%Smeltl%"=="Blank" echo @%Smeltl%>%Path%\Game%P%\%Number%\Smelt\Level.txt
if not "%Craftl%"=="Blank" echo @%Craftl%>%Path%\Game%P%\%Number%\Craft\Level.txt
if not "%Repairl%"=="Blank" echo @%Repairl%>%Path%\Game%P%\%Number%\Repair\Level.txt
if not "%Type%"=="Blank" echo %Type%>%Path%\Game%P%\%Number%\Type.txt
if not "%Chance%"=="Blank" echo @%Chance%>%Path%\Game%P%\%Number%\Chance.txt
if not "%Smelt%"=="Blank" echo @%Smelt%>%Path%\Game%P%\%Number%\Level.txt
set Temp=-1
:smelt
set /a Temp+=1
if %P%==\Shop\Bars set /p Smeltp="Smelt path: "
if %P%==\Shop\Bars set /p Smelta="Smelt ammount: "
if %P%==\Shop\Bars echo @%Smeltp%>%Path%\Game%P%\%Number%\Smelt\%Temp%p.txt
if %P%==\Shop\Bars echo @%Smelta%>%Path%\Game%P%\%Number%\Smelt\%Temp%.txt
set /a Smeltc+=-1
if not %Smeltc%==-1 if not %Temp%==%Smeltc% goto smelt
set Temp=-1
:craft
set /a Temp+=1
if %P%==\Shop\Armors\Head set /p Craftp="Craft path: "
if %P%==\Shop\Armors\Head set /p Crafta="Craft ammount: "
if %P%==\Shop\Armors\Head echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Armors\Head echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Armors\Body set /p Craftp="Craft path: "
if %P%==\Shop\Armors\Body set /p Crafta="Craft ammount: "
if %P%==\Shop\Armors\Body echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Armors\Body echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Armors\Legs set /p Craftp="Craft path: "
if %P%==\Shop\Armors\Legs set /p Crafta="Craft ammount: "
if %P%==\Shop\Armors\Legs echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Armors\Legs echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Armors\Hands set /p Craftp="Craft path: "
if %P%==\Shop\Armors\Hands set /p Crafta="Craft ammount: "
if %P%==\Shop\Armors\Hands echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Armors\Hands echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Armors\Feet set /p Craftp="Craft path: "
if %P%==\Shop\Armors\Feet set /p Crafta="Craft ammount: "
if %P%==\Shop\Armors\Feet echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Armors\Feet echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Armors\Neck set /p Craftp="Craft path: "
if %P%==\Shop\Armors\Neck set /p Crafta="Craft ammount: "
if %P%==\Shop\Armors\Neck echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Armors\Neck echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Armors\Cape set /p Craftp="Craft path: "
if %P%==\Shop\Armors\Cape set /p Crafta="Craft ammount: "
if %P%==\Shop\Armors\Cape echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Armors\Cape echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Crafts set /p Craftp="Craft path: "
if %P%==\Shop\Crafts set /p Crafta="Craft ammount: "
if %P%==\Shop\Crafts echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Crafts echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Tools\Pickaxes set /p Craftp="Craft path: "
if %P%==\Shop\Tools\Pickaxes set /p Crafta="Craft ammount: "
if %P%==\Shop\Tools\Pickaxes echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Tools\Pickaxes echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Tools\Axes set /p Craftp="Craft path: "
if %P%==\Shop\Tools\Axes set /p Crafta="Craft ammount: "
if %P%==\Shop\Tools\Axes echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Tools\Axes echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Weapons\Melee\Sword set /p Craftp="Craft path: "
if %P%==\Shop\Weapons\Melee\Sword set /p Crafta="Craft ammount: "
if %P%==\Shop\Weapons\Melee\Sword echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Weapons\Melee\Sword echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Weapons\Melee\Battleaxe set /p Craftp="Craft path: "
if %P%==\Shop\Weapons\Melee\Battleaxe set /p Crafta="Craft ammount: "
if %P%==\Shop\Weapons\Melee\Battleaxe echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Weapons\Melee\Battleaxe echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Weapons\Ranged\Bow set /p Craftp="Craft path: "
if %P%==\Shop\Weapons\Ranged\Bow set /p Crafta="Craft ammount: "
if %P%==\Shop\Weapons\Ranged\Bow echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Weapons\Ranged\Bow echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Weapons\Ranged\Quiver set /p Craftp="Craft path: "
if %P%==\Shop\Weapons\Ranged\Quiver set /p Crafta="Craft ammount: "
if %P%==\Shop\Weapons\Ranged\Quiver echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Weapons\Ranged\Quiver echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Weapons\Magic\Staff set /p Craftp="Craft path: "
if %P%==\Shop\Weapons\Magic\Staff set /p Crafta="Craft ammount: "
if %P%==\Shop\Weapons\Magic\Staff echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Weapons\Magic\Staff echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
if %P%==\Shop\Weapons\Magic\Spellbook set /p Craftp="Craft path: "
if %P%==\Shop\Weapons\Magic\Spellbook set /p Crafta="Craft ammount: "
if %P%==\Shop\Weapons\Magic\Spellbook echo %Craftp%>%Path%\Game%P%\%Number%\Craft\%Temp%p.txt
if %P%==\Shop\Weapons\Magic\Spellbook echo @%Crafta%>%Path%\Game%P%\%Number%\Craft\%Temp%.txt
set /a Craftc+=-1
if not %Craftc%==-1 if not %Temp%==%Craftc% goto craft
set Temp=-1
:repair
set /a Temp+=1
if %P%==\Shop\Armors\Head set /p Repairp="Repair path: "
if %P%==\Shop\Armors\Head set /p Repaira="Repair ammount: "
if %P%==\Shop\Armors\Head echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Armors\Head echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Armors\Body set /p Repairp="Repair path: "
if %P%==\Shop\Armors\Body set /p Repaira="Repair ammount: "
if %P%==\Shop\Armors\Body echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Armors\Body echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Armors\Legs set /p Repairp="Repair path: "
if %P%==\Shop\Armors\Legs set /p Repaira="Repair ammount: "
if %P%==\Shop\Armors\Legs echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Armors\Legs echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Armors\Hands set /p Repairp="Repair path: "
if %P%==\Shop\Armors\Hands set /p Repaira="Repair ammount: "
if %P%==\Shop\Armors\Hands echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Armors\Hands echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Armors\Feet set /p Repairp="Repair path: "
if %P%==\Shop\Armors\Feet set /p Repaira="Repair ammount: "
if %P%==\Shop\Armors\Feet echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Armors\Feet echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Armors\Neck set /p Repairp="Repair path: "
if %P%==\Shop\Armors\Neck set /p Repaira="Repair ammount: "
if %P%==\Shop\Armors\Neck echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Armors\Neck echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Armors\Cape set /p Repairp="Repair path: "
if %P%==\Shop\Armors\Cape set /p Repaira="Repair ammount: "
if %P%==\Shop\Armors\Cape echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Armors\Cape echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Tools\Pickaxes set /p Repairp="Repair path: "
if %P%==\Shop\Tools\Pickaxes set /p Repaira="Repair ammount: "
if %P%==\Shop\Tools\Pickaxes echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Tools\Pickaxes echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Tools\Axes set /p Repairp="Repair path: "
if %P%==\Shop\Tools\Axes set /p Repaira="Repair ammount: "
if %P%==\Shop\Tools\Axes echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Tools\Axes echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Weapons\Melee\Sword set /p Repairp="Repair path: "
if %P%==\Shop\Weapons\Melee\Sword set /p Repaira="Repair ammount: "
if %P%==\Shop\Weapons\Melee\Sword echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Weapons\Melee\Sword echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Weapons\Melee\Battleaxe set /p Repairp="Repair path: "
if %P%==\Shop\Weapons\Melee\Battleaxe set /p Repaira="Repair ammount: "
if %P%==\Shop\Weapons\Melee\Battleaxe echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Weapons\Melee\Battleaxe echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Weapons\Ranged\Bow set /p Repairp="Repair path: "
if %P%==\Shop\Weapons\Ranged\Bow set /p Repaira="Repair ammount: "
if %P%==\Shop\Weapons\Ranged\Bow echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Weapons\Ranged\Bow echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Weapons\Ranged\Quiver set /p Repairp="Repair path: "
if %P%==\Shop\Weapons\Ranged\Quiver set /p Repaira="Repair ammount: "
if %P%==\Shop\Weapons\Ranged\Quiver echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Weapons\Ranged\Quiver echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Weapons\Magic\Staff set /p Repairp="Repair path: "
if %P%==\Shop\Weapons\Magic\Staff set /p Repaira="Repair ammount: "
if %P%==\Shop\Weapons\Magic\Staff echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Weapons\Magic\Staff echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
if %P%==\Shop\Weapons\Magic\Spellbook set /p Repairp="Repair path: "
if %P%==\Shop\Weapons\Magic\Spellbook set /p Repaira="Repair ammount: "
if %P%==\Shop\Weapons\Magic\Spellbook echo %Repairp%>%Path%\Game%P%\%Number%\Repair\%Temp%p.txt
if %P%==\Shop\Weapons\Magic\Spellbook echo @%Repaira%>%Path%\Game%P%\%Number%\Repair\%Temp%.txt
set /a Repairc+=-1
if not %Repairc%==-1 if not %Temp%==%Repairc% goto repair
goto shop
:del
cls
if exist %Path%\Game%P%\View.txt echo ------------------
set Number=-1
:list
set /a Number+=1
if exist %Path%\Game%P%\%Number%\Name.txt set /p Name=<%Path%\Game%P%\%Number%\Name.txt
if exist %Path%\Game%P%\%Number%\Name.txt echo Id: %Number%
if exist %Path%\Game%P%\%Number%\Name.txt echo Name: %Name%
if exist %Path%\Game%P%\View.txt echo ------------------
if not %Numbers%==-1 if not %Number%==%Numbers% goto list
set Command=Blank
set /p Command="Id to delete: "
if %Command%==back goto shop
if %Command%==Blank goto del
if not %Command%==Blank for /f "delims=abcdefghijklmnopqrstuvwxyz" %%i in ("%Command%") do set Cmd=%%i
if not defined Cmd goto del
if %Cmd% gtr %Numbers% goto del
if %Cmd% lss 0 goto del
cls
if exist %Path%\Game%P%\%Cmd%\Name.txt set /p Name=<%Path%\Game%P%\%Cmd%\Name.txt
if exist %Path%\Game%P%\%Cmd%\Name.txt echo Id: %Cmd%
if exist %Path%\Game%P%\%Cmd%\Name.txt echo Name: %Name%
set Command=Blank
set /p Command="(y/n)Delete this id: "
if not %Command%==y goto del
rmdir /S /Q %Path%\Game%P%\%Cmd%
goto shop