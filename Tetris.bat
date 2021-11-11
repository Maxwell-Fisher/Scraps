::I'm going to finish this later, but for now it's just a concept thing
title Tetris - @Maxwellcrafter
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
::set inputArray=aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789€‚ƒ„…†‡ˆ‰Š‹ŒŽ‘’“”•–—˜™š›œžŸ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüý
set inputArray=aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789
mode con: cols=26 lines=28
chcp 65001
echo !esc![?25l
set score=0
set lines=0
set playerX=5
set playerY=5
echo off
cls

set width=10
set height=20
cls
set /a height=!height!+4
set /a width=!width!+2
set /a up=!width!+1
set /a doubleUp=!width!+2
set /a height=!height!-1
set /a heightDown=!height!-1
cls

set cyan=!esc![48;5;87m!esc![38;5;87m !esc![48;5;243m!esc![38;5;15m
set blue=!esc![48;5;21m!esc![38;5;21m !esc![48;5;243m!esc![38;5;15m
set yellow=!esc![48;5;226m!esc![38;5;226m !esc![48;5;243m!esc![38;5;15m
set orange=!esc![48;5;208m!esc![38;5;208m !esc![48;5;243m!esc![38;5;15m
set green=!esc![48;5;82m!esc![38;5;82m !esc![48;5;243m!esc![38;5;15m
set purple=!esc![48;5;165m!esc![38;5;165m !esc![48;5;243m!esc![38;5;15m
set red=!esc![48;5;196m!esc![38;5;196m !esc![48;5;243m!esc![38;5;15m

set playerColour=!blue!

for /l %%w in (2, 1, !height!) do (
	for /l %%x in (2, 1, !doubleUp!) do (
		echo !esc![%%w;%%xH!esc![48;5;253m!esc![38;5;235m+!esc![0m
	)
)

echo !esc![1;7H!esc![48;5;232m!esc![38;5;238m@Maxwellcrafter!esc![0m



:clear
for /l %%w in (3, 1, !heightDown!) do (
	for /l %%x in (3, 1, !up!) do (
		echo !esc![%%w;%%xH!esc![48;5;243m!esc![38;5;15m !esc![0m
	)
)

:loop

if !score! LSS 420 set /a "score=score+1"
if !lines! LSS 69 set /a "lines=lines+1"


set printScore=00000!score!
echo !esc![2;17H!esc![48;5;232m!esc![38;5;15mScore:!esc![0m
echo !esc![3;17H!esc![48;5;232m!esc![38;5;15m!printScore:~-6!!esc![0m

set printLines=00000!lines!
echo !esc![5;17H!esc![48;5;232m!esc![38;5;15mLines:!esc![0m
echo !esc![6;17H!esc![48;5;232m!esc![38;5;15m!printLines:~-6!!esc![0m

echo !esc![18;3H!purple! !yellow!!yellow!
echo !esc![19;3H!purple!!purple!!yellow!!red!!yellow!!yellow!
echo !esc![20;3H!purple!!orange!!yellow!!red!!yellow!!yellow!
echo !esc![21;3H!orange!!orange!!red!!red!!green!!green!
echo !esc![22;3H!orange!!blue!!blue!!blue!!blue!!green!!green!
::goto clear

choice /CS /T 1 /D !inputArray:~52,1! /c !inputArray! >nul
set level=%errorlevel%
set /a level=level-1
set output=!inputArray:~%level%,1!

if "!output!" == "w" if !playerY! GTR 3 set /a playerY=playerY-1
if "!output!" == "s" if !playerY! LSS 22 set /a playerY=playerY+1
if "!output!" == "a" if !playerX! GTR 3 set /a playerX=playerX-1
if "!output!" == "d" if !playerX! LSS 13 set /a playerX=playerX+1

echo !esc![0m!esc![2;24H!output!
echo !esc![0m!esc![3;24H!playerX!
echo !esc![0m!esc![4;24H!playerY!
echo !esc![!playerY!;!playerX!H!playerColour!


goto loop

pause
exit

