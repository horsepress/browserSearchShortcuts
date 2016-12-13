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

echo.
echo File is %searchfile%
echo silent mode is %silent% (set to on with /s)

if not exist "%searchfile%" (
echo.
echo file "%searchfile%" not found, aborting
goto end
)
@echo on
bin\msxsl.exe "%searchfile%" "xsl\internetExplorer_keywords.xsl" >internetExplorer_%searchfile%.reg"
bin\msxsl.exe "%searchfile%" "xsl\chrome_keywords.xsl" >chrome_%searchfile%.sql
bin\msxsl.exe "%searchfile%" "xsl\firefox_keywords.xsl" >firefox_%searchfile%.sql

:end
@echo off
if not "%silent%"=="on" (
echo.
pause
)