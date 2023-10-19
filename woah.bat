@echo off
cls
mode 120, 60
setLocal enableDelayedExpansion

for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"

for /l %%z in (0, 0, 0) do (

	::red
	for /l %%y in (1, 1, 60) do (
		for /l %%x in (1, 2, 120) do (
			set /a dist=60-%%x/2+%%y-1
			if !dist! LEQ 60 (
				<%0 set/p=%esc%[%%y;%%xH%esc%[48;5;1m  
			)
		)
	)

	::green
	for /l %%y in (1, 1, 60) do (
		for /l %%x in (119, -2, 0) do (
			set /a dist=%%x/2+%%y
			if !dist! GEQ 60 (
				<%0 set/p=%esc%[%%y;%%xH%esc%[48;5;2m  
			)
		)
	)

	::blue
	for /l %%y in (60, -1, 0) do (
		for /l %%x in (119, -2, 0) do (
			set /a dist=60-%%x/2+%%y-1
			if !dist! GEQ 60 (
				<%0 set/p=%esc%[%%y;%%xH%esc%[48;5;4m  
			)
		)
	)

	::magenta
	for /l %%y in (60, -1, 0) do (
		for /l %%x in (1, 2, 120) do (
			set /a dist=%%x/2+%%y
			if !dist! LEQ 60 (
				<%0 set/p=%esc%[%%y;%%xH%esc%[48;5;5m  
			)
		)
	)
	
)
pause > nul