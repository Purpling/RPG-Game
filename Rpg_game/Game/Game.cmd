echo off
title Rpg game
cls
start Game\Windows\Generate.cmd
start Game\Windows\Console.cmd
:loop
set Location=market
set /p Location=<Game\Places\Location.txt
cls
if not exist Game\Places\Location.txt goto loop
if %Location%==market start /wait Game\Places\Market.cmd
if %Location%==blacksmith start /wait Game\Places\Blacksmith.cmd
if %Location%==crafter start /wait Game\Places\Crafter.cmd
if %Location%==merchant start /wait Game\Places\Merchant.cmd
if %Location%==mage start /wait Game\Places\Mage.cmd
goto loop