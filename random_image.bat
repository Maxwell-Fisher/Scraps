::This is a highly inneficient way to create random images, I made it a while ago so it's not very optimized (at all)
@echo off
cls
set /a ping=%random%/10000
set /a ping=%ping%+1
ping 127.0.0.1 -n %ping% >nul
set /a ping=%random%/10000
set /a ping=%ping%+1
ping 127.0.0.1 -n %ping% >nul
set /a ping=%random%/10000
set /a ping=%ping%+1
ping 127.0.0.1 -n %ping% >nul
echo %random%
echo Type a number from 0 to 100:
set /p percent=
set /a divide=100/%percent%
set /a value=32768/%divide%

set number_1=.
set number_2=.
set number_3=.
set number_4=.
set number_5=.
set number_6=.
set number_7=.
set number_8=.
set number_9=.
set number_10=.
set number_11=.
set number_12=.
set number_13=.
set number_14=.
set number_15=.
set number_16=.
set number_17=.
set number_18=.
set number_19=.
set number_20=.
set number_21=.
set number_22=.
set number_23=.
set number_24=.
set number_25=.

ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_1=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_2=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_3=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_4=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_5=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_6=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_7=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_8=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_9=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_10=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_11=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_12=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_13=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_14=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_15=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_16=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_17=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_18=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_19=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_20=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_21=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_22=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_23=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_24=#
ping 127.0.0.1 -n 1 >nul
if "%random%" GEQ "%value%" set number_25=#

echo %number_1% %number_2% %number_3% %number_4% %number_5%
echo %number_6% %number_7% %number_8% %number_9% %number_10%
echo %number_11% %number_12% %number_13% %number_14% %number_15%
echo %number_16% %number_17% %number_18% %number_19% %number_20%
echo %number_21% %number_22% %number_23% %number_24% %number_25%

pause
