::This was never meant to be useful — it's just a test of the bell character printing on a loop with a slightly longer delay each iteration.
echo off
setLocal enableDelayedExpansion
mode 30, 5
cls
:beginning
set /a y=!y!+1
title Loop: !y!
echo  %= This makes the sound =%
for /l %%x in (1, 1, %y%) do ping 127.1 -n 1 >nul
goto beginning