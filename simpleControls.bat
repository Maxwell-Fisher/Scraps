::This works a bit better now, I may do something with it
echo off
title Simple controls - @Maxwellcrafter
chcp 65001
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
mode 15, 10
echo !esc![?25l!esc![2j

set input=null
set pos_x=0
set pos_y=0


set player=!esc![31;1m▲!esc![0m

:input

echo !esc![1;1H


set space-4-4=`
set space-4-3='
set space-4-2=,
set space-4-1=.
set space-40=`
set space-41='
set space-42=,
set space-43=.
set space-44=`
set space-3-4='
set space-3-3=,
set space-3-2=.
set space-3-1=`
set space-30='
set space-31=,
set space-32=.
set space-33=`
set space-34='
set space-2-4=,
set space-2-3=.
set space-2-2=`
set space-2-1='
set space-20=,
set space-21=.
set space-22=`
set space-23='
set space-24=,
set space-1-4=.
set space-1-3=`
set space-1-2='
set space-1-1=,
set space-10=.
set space-11=`
set space-12='
set space-13=,
set space-14=.
set space0-4=`
set space0-3='
set space0-2=,
set space0-1=.
set space00=`
set space01='
set space02=,
set space03=.
set space04=`
set space1-4='
set space1-3=,
set space1-2=.
set space1-1=`
set space10='
set space11=,
set space12=.
set space13=`
set space14='
set space2-4=,
set space2-3=.
set space2-2=`
set space2-1='
set space20=,
set space21=.
set space22=`
set space23='
set space24=,
set space3-4=.
set space3-3=`
set space3-2='
set space3-1=,
set space30=.
set space31=`
set space32='
set space33=,
set space34=.
set space4-4=`
set space4-3='
set space4-2=,
set space4-1=.
set space40=`
set space41='
set space42=,
set space43=.
set space44=`

set space%pos_x%%pos_y%=%player%

echo %space-44%%space-34%%space-24%%space-14%%space04%%space14%%space24%%space34%%space44%
echo %space-43%%space-33%%space-23%%space-13%%space03%%space13%%space23%%space33%%space43%
echo %space-42%%space-32%%space-22%%space-12%%space02%%space12%%space22%%space32%%space42%
echo %space-41%%space-31%%space-21%%space-11%%space01%%space11%%space21%%space31%%space41%
echo %space-40%%space-30%%space-20%%space-10%%space00%%space10%%space20%%space30%%space40%
echo %space-4-1%%space-3-1%%space-2-1%%space-1-1%%space0-1%%space1-1%%space2-1%%space3-1%%space4-1%
echo %space-4-2%%space-3-2%%space-2-2%%space-1-2%%space0-2%%space1-2%%space2-2%%space3-2%%space4-2%
echo %space-4-3%%space-3-3%%space-2-3%%space-1-3%%space0-3%%space1-3%%space2-3%%space3-3%%space4-3%
echo %space-4-4%%space-3-4%%space-2-4%%space-1-4%%space0-4%%space1-4%%space2-4%%space3-4%%space4-4%



set input=null
choice /c wsad >nul
set input=%ERRORLEVEL%

if "%input%" == "1" if "%player%" == "!esc![31;1m▲!esc![0m" set /a pos_y = %pos_y% + 1
if "%input%" == "2" if "%player%" == "!esc![31;1m▼!esc![0m" set /a pos_y = %pos_y% - 1
if "%input%" == "3" if "%player%" == "!esc![31;1m◄!esc![0m" set /a pos_x = %pos_x% - 1
if "%input%" == "4" if "%player%" == "!esc![31;1m►!esc![0m" set /a pos_x = %pos_x% + 1

if "%input%" == "1" if not "%player%" == "!esc![31;1m▼!esc![0m" set player=!esc![31;1m▲!esc![0m
if "%input%" == "2" if not "%player%" == "!esc![31;1m▲!esc![0m" set player=!esc![31;1m▼!esc![0m
if "%input%" == "3" if not "%player%" == "!esc![31;1m►!esc![0m" set player=!esc![31;1m◄!esc![0m
if "%input%" == "4" if not "%player%" == "!esc![31;1m◄!esc![0m" set player=!esc![31;1m►!esc![0m



set %pos_x%_%pos_y% = #

goto input