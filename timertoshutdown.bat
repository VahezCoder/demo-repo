@echo off
mode 32,10

title Timer

:start
color Ac
title Enter time to countdown from.


cls
echo Enter time to countdown from.

set/p "time=>
set time=%time%

:loop
cls

set /a time=%time%-1
if %time%==0 goto timesup

title Counting down...

echo.
echo.

echo.
echo Countdown - [%time%]

ping localhost -n 2 > nul
goto loop

:timesup
echo Time is Up!!

ping localhost -n 2 > nul
goto shutdown

:shutdown
title Your Pc is Shutting down
ping localhost -n 2 > nul
shutdown /t 003 /s /c "Times Up"
