echo off
title Saving...
cls
for /f "tokens=* usebackq" %%c in (`cd`) do set Path=%%c
if not exist %Path%\Profile mkdir %Path%\Profile
if exist %Path%\Game\Skills (
	mkdir %Path%\Profile\Skills
	copy %Path%\Game\Skills\* %Path%\Profile\Skills
)
if exist %Path%\Game\Settings (
	mkdir %Path%\Profile\Settings
	copy %Path%\Game\Settings\* %Path%\Profile\Settings
)
if exist %Path%\Game\Places (
	mkdir %Path%\Profile\Places
	copy %Path%\Game\Places\Location.txt %Path%\Profile\Places
)
if exist %Path%\Game\Inventory\Cash (
	mkdir %Path%\Profile\Inventory\Cash
	copy %Path%\Game\Inventory\Cash\* %Path%\Profile\Inventory\Cash
)
if exist %Path%\Game\Inventory\Slots (
	mkdir %Path%\Profile\Inventory\Slots
	copy %Path%\Game\Inventory\Slots\* %Path%\Profile\Inventory\Slots
)
if exist %Path%\Game\Inventory\Equiped (
	mkdir %Path%\Profile\Inventory\Equiped
	mkdir %Path%\Profile\Inventory\Equiped\Head
	mkdir %Path%\Profile\Inventory\Equiped\Body
	mkdir %Path%\Profile\Inventory\Equiped\Legs
	mkdir %Path%\Profile\Inventory\Equiped\Hands
	mkdir %Path%\Profile\Inventory\Equiped\Feet
	mkdir %Path%\Profile\Inventory\Equiped\Neck
	mkdir %Path%\Profile\Inventory\Equiped\Cape
	copy %Path%\Game\Inventory\Equiped\Head\* %Path%\Profile\Inventory\Equiped\Head
	copy %Path%\Game\Inventory\Equiped\Body\* %Path%\Profile\Inventory\Equiped\Body
	copy %Path%\Game\Inventory\Equiped\Legs\* %Path%\Profile\Inventory\Equiped\Legs
	copy %Path%\Game\Inventory\Equiped\Hands\* %Path%\Profile\Inventory\Equiped\Hands
	copy %Path%\Game\Inventory\Equiped\Feet\* %Path%\Profile\Inventory\Equiped\Feet
	copy %Path%\Game\Inventory\Equiped\Neck\* %Path%\Profile\Inventory\Equiped\Neck
	copy %Path%\Game\Inventory\Equiped\Cape\* %Path%\Profile\Inventory\Equiped\Cape
)
exit