echo off
title Editor
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
:catagory
cls
echo -----------------------
echo -      Catagory:      -
echo -----------------------
echo -      1. Armor       -
echo -      2. Bars        -
echo -      3. Crafts      -
echo -      4. Minerals    -
echo -      5. Ores        -
echo -      6. Tools       -
echo -      7. Weapons     -
echo -----------------------
set Command=Blank
set /p Command=">"
if %Command%==1 goto armor
if %Command%==2 goto bar
if %Command%==3 goto craft
if %Command%==4 goto mineral
if %Command%==5 goto ore
if %Command%==6 goto tool
if %Command%==7 goto weapon
goto catagory
:armor
cls
echo -----------------------
echo -        Armor:       -
echo -----------------------
echo -      1. Head        -
echo -      2. Body        -
echo -      3. Legs        -
echo -      4. Hands       -
echo -      5. Feet        -
echo -      6. Neck        -
echo -      7. Cape        -
echo -      8. Back        -
echo -----------------------
set Command=Blank
set /p Command=">"
if %Command%==1 goto head
if %Command%==2 goto body
if %Command%==3 goto legs
if %Command%==4 goto hands
if %Command%==5 goto feet
if %Command%==6 goto neck
if %Command%==7 goto cape
if %Command%==8 goto catagory
goto armor
:head
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Armors\Head\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Defence=25
set /p Defence="Defence: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Armors\Head\%Item%
mkdir %Path%\Game\Shop\Armors\Head\%Item%\Craft
mkdir %Path%\Game\Shop\Armors\Head\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Armors\Head\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Armors\Head\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Armors\Head\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Armors\Head\%Item%\Durability.txt
echo %Defence% >%Path%\Game\Shop\Armors\Head\%Item%\Defence.txt
echo %cLevel% >%Path%\Game\Shop\Armors\Head\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Armors\Head\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Armors\Head\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Armors\Head\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:1loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Head\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Head\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 1loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:2loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Head\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Head\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 2loop
endlocal
goto catagory
:body
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Armors\Body\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Defence=25
set /p Defence="Defence: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Armors\Body\%Item%
mkdir %Path%\Game\Shop\Armors\Body\%Item%\Craft
mkdir %Path%\Game\Shop\Armors\Body\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Armors\Body\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Armors\Body\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Armors\Body\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Armors\Body\%Item%\Durability.txt
echo %Defence% >%Path%\Game\Shop\Armors\Body\%Item%\Defence.txt
echo %cLevel% >%Path%\Game\Shop\Armors\Body\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Armors\Body\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Armors\Body\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Armors\Body\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:3loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Body\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Body\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 3loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:4loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Body\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Body\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 4loop
endlocal
goto catagory
:legs
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Armors\Legs\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Defence=25
set /p Defence="Defence: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Armors\Legs\%Item%
mkdir %Path%\Game\Shop\Armors\Legs\%Item%\Craft
mkdir %Path%\Game\Shop\Armors\Legs\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Armors\Legs\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Armors\Legs\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Armors\Legs\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Armors\Legs\%Item%\Durability.txt
echo %Defence% >%Path%\Game\Shop\Armors\Legs\%Item%\Defence.txt
echo %cLevel% >%Path%\Game\Shop\Armors\Legs\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Armors\Legs\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Armors\Legs\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Armors\Legs\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:5loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Legs\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Legs\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 5loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:6loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Legs\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Legs\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 6loop
endlocal
goto catagory
:hands
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Armors\Hands\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Defence=25
set /p Defence="Defence: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Armors\Hands\%Item%
mkdir %Path%\Game\Shop\Armors\Hands\%Item%\Craft
mkdir %Path%\Game\Shop\Armors\Hands\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Armors\Hands\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Armors\Hands\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Armors\Hands\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Armors\Hands\%Item%\Durability.txt
echo %Defence% >%Path%\Game\Shop\Armors\Hands\%Item%\Defence.txt
echo %cLevel% >%Path%\Game\Shop\Armors\Hands\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Armors\Hands\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Armors\Hands\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Armors\Hands\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:7loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Hands\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Hands\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 7loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:8loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Hands\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Hands\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 8loop
endlocal
goto catagory
:feet
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Armors\Feet\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Defence=25
set /p Defence="Defence: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Armors\Feet\%Item%
mkdir %Path%\Game\Shop\Armors\Feet\%Item%\Craft
mkdir %Path%\Game\Shop\Armors\Feet\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Armors\Feet\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Armors\Feet\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Armors\Feet\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Armors\Feet\%Item%\Durability.txt
echo %Defence% >%Path%\Game\Shop\Armors\Feet\%Item%\Defence.txt
echo %cLevel% >%Path%\Game\Shop\Armors\Feet\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Armors\Feet\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Armors\Feet\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Armors\Feet\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:9loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Feet\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Feet\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 9loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:10loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Feet\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Feet\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 10loop
endlocal
goto catagory
:neck
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Armors\Neck\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Defence=25
set /p Defence="Defence: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Armors\Neck\%Item%
mkdir %Path%\Game\Shop\Armors\Neck\%Item%\Craft
mkdir %Path%\Game\Shop\Armors\Neck\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Armors\Neck\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Armors\Neck\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Armors\Neck\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Armors\Neck\%Item%\Durability.txt
echo %Defence% >%Path%\Game\Shop\Armors\Neck\%Item%\Defence.txt
echo %cLevel% >%Path%\Game\Shop\Armors\Neck\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Armors\Neck\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Armors\Neck\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Armors\Neck\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:11loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Neck\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Neck\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 11loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:12loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Neck\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Neck\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loop% goto 12loop
endlocal
goto catagory
:cape
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Armors\Cape\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Defence=25
set /p Defence="Defence: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Armors\Cape\%Item%
mkdir %Path%\Game\Shop\Armors\Cape\%Item%\Craft
mkdir %Path%\Game\Shop\Armors\Cape\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Armors\Cape\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Armors\Cape\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Armors\Cape\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Armors\Cape\%Item%\Durability.txt
echo %Defence% >%Path%\Game\Shop\Armors\Cape\%Item%\Defence.txt
echo %cLevel% >%Path%\Game\Shop\Armors\Cape\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Armors\Cape\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Armors\Cape\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Armors\Cape\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:13loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Cape\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Cape\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 13loop
set Loop=-1
set /a Loops=%Armmount%+-1
:14loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Armors\Cape\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Armors\Cape\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loop% goto 14loop
endlocal
goto catagory
:bar
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Bars\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Level=0
set /p Level="Smithing: "
set Ammount=1
set /p Ammount="Requirement: "
mkdir %Path%\Game\Shop\Bars\%Item%
mkdir %Path%\Game\Shop\Bars\%Item%\Smelt
echo %Name% >%Path%\Game\Shop\Bars\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Bars\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Bars\%Item%\Sell.txt
echo %Level% >%Path%\Game\Shop\Bars\%Item%\Smelt\Level.txt
echo %Ammount% >%Path%\Game\Shop\Bars\%Item%\Smelt\Ammount.txt
set Loop=-1
set /a Loops=%Ammount%+-1
:15loop
set /a Loop+=1
set D=0
set /p D="(Smith) Item path: "
set M=1
set /p M="(Smith) Ammount: "
echo %D% >%Path%\Game\Shop\Bars\%Item%\Smelt\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Bars\%Item%\Smelt\%Loop%.txt
if not %Loop%==%Loops% goto 15loop
endlocal
goto catagory
:craft
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Crafts\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Level=0
set /p Level="Crafting: "
set Ammount=1
set /p Ammount="Requirement: "
mkdir %Path%\Game\Shop\Crafts\%Item%
mkdir %Path%\Game\Shop\Crafts\%Item%\Craft
echo %Name% >%Path%\Game\Shop\Crafts\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Crafts\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Crafts\%Item%\Sell.txt
echo %Level% >%Path%\Game\Shop\Crafts\%Item%\Craft\Level.txt
echo %Ammount% >%Path%\Game\Shop\Crafts\%Item%\Craft\Ammount.txt
set Loop=-1
set /a Loops=%Ammount%+-1
:16loop
set /a Loop+=1
set D=0
set /p D="(Smith) Item path: "
set M=1
set /p M="(Smelt) Ammount: "
echo %D% >%Path%\Game\Shop\Crafts\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Crafts\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 16loop
endlocal
goto catagory
:mineral
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Minerals\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
mkdir %Path%\Game\Shop\Minerals\%Item%
echo %Name% >%Path%\Game\Shop\Minerals\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Minerals\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Minerals\%Item%\Sell.txt
endlocal
goto catagory
:ore
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Ores\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Level=0
set /p Level="Smithing: "
set Type=Wood
set /p Type="Type: "
set Chance=75
set /p Chance="Chance: "
mkdir %Path%\Game\Shop\Ores\%Item%
echo %Name% >%Path%\Game\Shop\Ores\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Ores\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Ores\%Item%\Sell.txt
echo %Level% >%Path%\Game\Shop\Ores\%Item%\Level.txt
echo %Type% >%Path%\Game\Shop\Ores\%Item%\Type.txt
echo %Chance% >%Path%\Game\Shop\Ores\%Item%\Chance.txt
endlocal
goto catagory
:tool
cls
echo -----------------------
echo -        Tool:        -
echo -----------------------
echo -      1. Pickaxe     -
echo -      2. Axe         -
echo -      3. Back        -
echo -----------------------
set Command=Blank
set /p Command=">"
if %Command%==1 goto pickaxe
if %Command%==2 goto axe
if %Command%==3 goto catagory
goto tool
:pickaxe
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Tools\Pickaxes\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Tools\Pickaxes\%Item%
mkdir %Path%\Game\Shop\Tools\Pickaxes\%Item%\Craft
mkdir %Path%\Game\Shop\Tools\Pickaxes\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Durability.txt
echo %cLevel% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:17loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 17loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:18loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Tools\Pickaxes\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 18loop
endlocal
goto catagory
:axe
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Tools\Axes\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Tools\Axes\%Item%
mkdir %Path%\Game\Shop\Tools\Axes\%Item%\Craft
mkdir %Path%\Game\Shop\Tools\Axes\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Tools\Axes\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Tools\Axes\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Tools\Axes\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Tools\Axes\%Item%\Durability.txt
echo %cLevel% >%Path%\Game\Shop\Tools\Axes\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Tools\Axes\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Tools\Axes\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Tools\Axes\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:19loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Tools\Axes\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Tools\Axes\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 19loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:20loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Tools\Axes\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Tools\Axes\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 20loop
endlocal
goto catagory
:weapon
cls
echo -----------------------
echo -        Weapon:      -
echo -----------------------
echo -      1. Melee       -
echo -      2. Ranged      -
echo -      3. Magic       -
echo -      4. Back        -
echo -----------------------
set Command=Blank
set /p Command=">"
if %Command%==1 goto melee
if %Command%==2 goto ranged
if %Command%==3 goto magic
if %Command%==4 goto catagory
goto weapon
:melee
cls
echo -----------------------
echo -        Melee:       -
echo -----------------------
echo -      1. Sword       -
echo -      2. Battleaxe   -
echo -      3. Back        -
echo -----------------------
set Command=Blank
set /p Command=">"
if %Command%==1 goto sword
if %Command%==2 goto battleaxe
if %Command%==3 goto weapon
goto melee
:sword
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Weapons\Melee\Sword\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Damage=50
set /p Damage="Damage: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Weapons\Melee\Sword\%Item%
mkdir %Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Craft
mkdir %Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Durability.txt
echo %Damage% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Damage.txt
echo %cLevel% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:21loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 21loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:22loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 22loop
endlocal
goto catagory
:battleaxe
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Weapons\Melee\Battleaxe\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Damage=50
set /p Damage="Damage: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%
mkdir %Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Craft
mkdir %Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Durability.txt
echo %Damage% >%Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Damage.txt
echo %cLevel% >%Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Weapons\Melee\Battleaxe\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:23loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 23loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:24loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Melee\Sword\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 24loop
endlocal
goto catagory
:ranged
cls
echo -----------------------
echo -        Ranged:      -
echo -----------------------
echo -      1. Bow         -
echo -      2. Quiver      -
echo -      3. Back        -
echo -----------------------
set Command=Blank
set /p Command=">"
if %Command%==1 goto bow
if %Command%==2 goto quiver
if %Command%==3 goto weapon
goto ranged
:bow
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Weapons\Ranged\Bow\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Damage=50
set /p Damage="Damage: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Weapons\Ranged\Bow\%Item%
mkdir %Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Craft
mkdir %Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Durability.txt
echo %Damage% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Damage.txt
echo %cLevel% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:24loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 24loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:25loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Ranged\Bow\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 25loop
endlocal
goto catagory
:quiver
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Weapons\Ranged\Quiver\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Storage=10
set /p Storage="Storage: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%
mkdir %Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Craft
mkdir %Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Durability.txt
echo %Storage% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Storage.txt
echo %cLevel% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:26loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 26loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:27loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Ranged\Quiver\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 27loop
endlocal
goto catagory
:magic
cls
echo -----------------------
echo -        Magic:       -
echo -----------------------
echo -      1. Staff       -
echo -      2. Spellbook   -
echo -      3. Back        -
echo -----------------------
set Command=Blank
set /p Command=">"
if %Command%==1 goto staff
if %Command%==2 goto spellbook
if %Command%==3 goto weapon
goto magic
:staff
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Weapons\Magic\Staff\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Damage=50
set /p Damage="Damage: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Weapons\Magic\Staff\%Item%
mkdir %Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Craft
mkdir %Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Durability.txt
echo %Damage% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Damage.txt
echo %cLevel% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:28loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 28loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:29loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Magic\Staff\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 29loop
endlocal
goto catagory
:spellbook
setlocal enableextensions
set Item=0
for /D %%x in (%Path%\Game\Shop\Weapons\Magic\Spellbook\*) do set /a Item+=1
cls
set Name=Test
set /p Name="Name: "
set Buy=100
set /p Buy="Buy: "
set Sell=50
set /p Sell="Sell: "
set Durability=100
set /p Durability="Durability: "
set Damage=50
set /p Damage="Damage: "
set cLevel=0
set /p cLevel="Crafting: "
set cAmmount=1
set /p cAmmount="(Craft) Requirement: "
set rLevel=0
set /p rLevel="Repair: "
set rAmmount=1
set /p rAmmount="(Repair) Requirement: "
mkdir %Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%
mkdir %Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Craft
mkdir %Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Repair
echo %Name% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Name.txt
echo %Buy% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Buy.txt
echo %Sell% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Sell.txt
echo %Durability% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Durability.txt
echo %Damage% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Damage.txt
echo %cLevel% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Craft\Level.txt
echo %cAmmount% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Craft\Ammount.txt
echo %rLevel% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Repair\Level.txt
echo %rAmmount% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Repair\Ammount.txt
set Loop=-1
set /a Loops=%cAmmount%+-1
:30loop
set /a Loop+=1
set D=0
set /p D="(Craft) Item path: "
set M=1
set /p M="(Craft) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Craft\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Craft\%Loop%.txt
if not %Loop%==%Loops% goto 30loop
set Loop=-1
set /a Loops=%rAmmount%+-1
:31loop
set /a Loop+=1
set D=0
set /p D="(Repair) Item path: "
set M=1
set /p M="(Repair) Ammount: "
echo %D% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Repair\%Loop%p.txt
echo %M% >%Path%\Game\Shop\Weapons\Magic\Spellbook\%Item%\Repair\%Loop%.txt
if not %Loop%==%Loops% goto 31loop
endlocal
goto catagory