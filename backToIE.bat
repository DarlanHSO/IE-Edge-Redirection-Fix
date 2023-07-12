@echo off
setlocal enabledelayedexpansion

set "target_file=ie_to_edge_bho.dll"
set "search_directory=C:\Program Files (x86)\Microsoft\Edge\Application\"

for /f "delims=" %%A in ('dir /s /b /a-d "%search_directory%\%target_file%"') do (
    echo Arquivo encontrado: "%%A"
    set "new_name=_%%~nxA"
    setlocal enabledelayedexpansion
    ren "%%A" "!new_name!"
    endlocal
)

endlocal
