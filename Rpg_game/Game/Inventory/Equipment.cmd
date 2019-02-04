echo off
title Equipment
cls
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
:menu
cls
set /p Item=<%Path%\Game\Inventory\Equiped\Head\Name.txt
echo Head: %Item%
set /p Item=<%Path%\Game\Inventory\Equiped\Body\Name.txt
echo Body: %Item%
set /p Item=<%Path%\Game\Inventory\Equiped\Legs\Name.txt
echo Legs: %Item%
set /p Item=<%Path%\Game\Inventory\Equiped\Neck\Name.txt
echo Neck: %Item%
set /p Item=<%Path%\Game\Inventory\Equiped\Hands\Name.txt
echo Hands: %Item%
set /p Item=<%Path%\Game\Inventory\Equiped\Feet\Name.txt
echo Feet: %Item%
set /p Item=<%Path%\Game\Inventory\Equiped\Cape\Name.txt
echo Cape: %Item%
set /p Item=<%Path%\Game\Inventory\Equiped\Quiver\Name.txt
echo Quiver: %Item%
set /p Item=<%Path%\Game\Inventory\Equiped\Left\Name.txt
echo Left: %Item%
set /p Item=<%Path%\Game\Inventory\Equiped\Right\Name.txt
echo Right: %Item%
echo ------------------------
echo -        Equip         -
echo -       Unequip        -
echo -       Refresh        -
echo ------------------------
set Command=Blank
set /p Command=">"
if %Command%==equip goto equip
if %Command%==unequip goto unequip
if %Command%==inspect goto inspect
if %Command%==refresh goto menu
goto menu
:equip
set Type=Blank
set /p Type="Item: "
if %Type%==head (
	set Type=Head
	goto pass
)
if %Type%==body (
	set Type=Body
	goto pass
)
if %Type%==legs (
	set Type=Legs
	goto pass
)
if %Type%==neck (
	set Type=Neck
	goto pass
)
if %Type%==hands (
	set Type=Hands
	goto pass
)
if %Type%==feet (
	set Type=Feet
	goto pass
)
if %Type%==cape (
	set Type=Cape
	goto pass
)
if %Type%==quiver (
	set Type=Quiver
	goto pass
)
if %Type%==left (
	set Type=Left
	goto pass
)
if %Type%==right (
	set Type=Right
	goto pass
)
goto menu
:pass
set /p Item=<%Path%\Game\Inventory\Equiped\%Type%\Name.txt
if not %Item%==Empty (
	echo You have something already equipped.
	pause
	goto menu
)
set /p Slot="Slot: "
set /p Content=<%Path%\Game\Inventory\Slots\%Slot%.txt
if %Content%==Empty (
	echo That slot is empty.
	pause
	goto menu
)
set /p Item=<%Path%\Game\Inventory\Slots\%Slot%.txt
echo Empty >%Path%\Game\Inventory\Slots\%Slot%.txt
echo %Item% >%Path%\Game\Inventory\Equiped\%Type%\Name.txt
goto menu
:unequip
set Type=Blank
set /p Type="Item: "
if %Type%==head (
	set Type=Head
	goto pass
)
if %Type%==body (
	set Type=Body
	goto pass
)
if %Type%==legs (
	set Type=Legs
	goto pass
)
if %Type%==neck (
	set Type=Neck
	goto pass
)
if %Type%==hands (
	set Type=Hands
	goto pass
)
if %Type%==feet (
	set Type=Feet
	goto pass
)
if %Type%==cape (
	set Type=Cape
	goto pass
)
if %Type%==quiver (
	set Type=Quiver
	goto pass
)
if %Type%==left (
	set Type=Left
	goto pass
)
if %Type%==right (
	set Type=Right
	goto pass
)
goto menu
:pass
set /p Item=<%Path%\Game\Inventory\Equiped\%Type%\Name.txt
if %Item%==Empty (
	echo You have nothing equiped in that slot.
	pause
	goto menu
)
set Count=0
set Number=-1
for %%s in (%Path%\Game\Inventory\Slots\*.txt) do (
	set /p Item=<%Path%\Game\Inventory\Slots\%Count%.txt
	if %Item%==Empty set /a Number+=1
	set /a Count+=1
)
if %Number%==0 (
	echo You have no space in your inventory.
	pause
	goto menu
)
set Count=0
for %%s in (%Path%\Game\Inventory\Slots\*.txt) do (
	set /p Item=<%Path%\Game\Inventory\Slots\%Count%.txt
	if %Item%==Empty goto out
	set /a Count+=1
)
:out
set /p Item=<%Path%\Game\Inventory\Equiped\%Type%\Name.txt
echo Empty >%Path%\Game\Inventory\Equiped\%Type%\Name.txt
echo %Item% >%Path%\Game\Inventory\Slots\%Count%.txt
goto menu
:inspect