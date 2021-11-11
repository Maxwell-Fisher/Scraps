echo off
mode 100, 20
chcp 65001
set inputArray=aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789€‚ƒ„…†‡ˆ‰Š‹ŒŽ‘’“”•–—˜™š›œžŸ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüý
setLocal enableDelayedExpansion
cls
:a
call choice /CS /c !inputArray! >nul
set level=%errorlevel%
set /a level=level-1
set output=!inputArray:~%level%,1!
::set output=0
cls
echo !output!
goto a