@echo off
set silent=off
set searchfile=searches.xml

if "%1"=="/s" (
set silent=on
) else (
if not "%1"=="" set searchfile=%1
)
if "%2"=="/s" (
set silent=on
) else (
if not "%2"=="" set searchfile=%2
)

For %%A in ("%searchfile%") do (
    rem Set Folder=%%~dpA
    Set searchFileName=%%~nxA
)

echo.
echo File is %searchfile%

if not exist "%searchfile%" (
echo.
echo file "%searchfile%" not found, aborting
goto end
)

@echo on
bin\msxsl.exe "%searchfile%" "xsl\bookmarks_html.xsl" > "bookmarks_%searchFileName%.html"

:end
pause