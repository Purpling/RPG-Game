echo off
title Loading...
cls
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
if not exist %Path%\Profile exit
if exist %Path%\Profile\Skills (
	if not exist %Path%\Game\Skills mkdir %Path%\Game\Skills
	copy %Path%\Profile\Skills\* %Path%\Game\Skills
)
if exist %Path%\Profile\Settings (
	if not exist %Path%\Game\Settings mkdir %Path%\Game\Settings
	copy %Path%\Profile\Settings\* %Path%\Game\Settings
)
if exist %Path%\Profile\Places (
	if not exist %Path%\Game\Places mkdir %Path%\Game\Places
	copy %Path%\Profile\Places\Location.txt %Path%\Game\Places
)
if exist %Path%\Profile\Inventory\Cash (
	if not exist %Path%\Game\Inventory\Cash mkdir %Path%\Game\Inventory\Cash
	copy %Path%\Profile\Inventory\Cash\* %Path%\Game\Inventory\Cash
)
if exist %Path%\Profile\Inventory\Slots (
	if not exist %Path%\Game\Inventory\Slots mkdir %Path%\Game\Inventory\Slots
	copy %Path%\Profile\Inventory\Slots\* %Path%\Game\Inventory\Slots
)
if exist %Path%\Profile\Inventory\Equiped (
	if not exist %Path%\Game\Inventory\Equiped mkdir %Path%\Game\Inventory\Equiped
	if not exist %Path%\Game\Inventory\Equiped\Head mkdir %Path%\Game\Inventory\Equiped\Head
	if not exist %Path%\Game\Inventory\Equiped\Body mkdir %Path%\Game\Inventory\Equiped\Body
	if not exist %Path%\Game\Inventory\Equiped\Legs mkdir %Path%\Game\Inventory\Equiped\Legs
	if not exist %Path%\Game\Inventory\Equiped\Hands mkdir %Path%\Game\Inventory\Equiped\Hands
	if not exist %Path%\Game\Inventory\Equiped\Feet mkdir %Path%\Game\Inventory\Equiped\Feet
	if not exist %Path%\Game\Inventory\Equiped\Neck mkdir %Path%\Game\Inventory\Equiped\Neck
	if not exist %Path%\Game\Inventory\Equiped\Cape mkdir %Path%\Game\Inventory\Equiped\Cape
	copy %Path%\Profile\Inventory\Equiped\Head\* %Path%\Game\Inventory\Equiped\Head
	copy %Path%\Profile\Inventory\Equiped\Body\* %Path%\Game\Inventory\Equiped\Body
	copy %Path%\Profile\Inventory\Equiped\Legs\* %Path%\Game\Inventory\Equiped\Legs
	copy %Path%\Profile\Inventory\Equiped\Hands\* %Path%\Game\Inventory\Equiped\Hands
	copy %Path%\Profile\Inventory\Equiped\Feet\* %Path%\Game\Inventory\Equiped\Feet
	copy %Path%\Profile\Inventory\Equiped\Neck\* %Path%\Game\Inventory\Equiped\Neck
	copy %Path%\Profile\Inventory\Equiped\Cape\* %Path%\Game\Inventory\Equiped\Cape
)
exit