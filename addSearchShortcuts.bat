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
echo silent mode is %silent% (set to on with /s)

if not exist "%searchfile%" (
echo.
echo file "%searchfile%" not found, aborting
goto end
)

if not "%silent%"=="on" (
echo.
Echo Chrome and Firefox will be closed
Echo and permission will be required to add items 
Echo to the registry for Internet Explorer shortcuts.
echo.
Echo Close this window to abort or...
pause
@echo on

@rem kill chrome
taskkill /f /im chrome.exe
taskkill /f /im firefox.exe
ping 1.1.1.1 -n 1 -w 1500 > nul
)

@rem localappdata isn't defined on windows xp, so we can set it appropriately
if not defined localappdata set localappdata=%userprofile%\local settings\application data

@rem run on Internet Explorer
@echo on
bin\msxsl.exe "%searchfile%" "xsl\internetExplorer_keywords.xsl" >"%temp%\internetExplorer_keywords.reg"
regedit /S "%temp%\internetExplorer_keywords.reg"
del "%temp%\internetExplorer_keywords.reg"

@echo on
@rem Run on chrome
bin\msxsl.exe "%searchfile%" "xsl\chrome_keywords.xsl" | "sqlite3.exe" "%localappdata%\google\chrome\user data\default\web data"

@echo off
@rem sort out Mozilla directory...
set workingdir=%cd%
cd /d "%appdata%\mozilla\firefox\profiles\*.default*"
set placesdir=%cd%
cd /d "%workingdir%"

@echo on
bin\msxsl.exe "%searchfile%" "xsl\firefox_keywords.xsl" | "sqlite3.exe" "%placesdir%\places.sqlite"

@echo on
bin\msxsl.exe "%searchfile%" "xsl\searchList.xsl" -o "searchList_%searchFileName%.html"

:end
@echo off
if not "%silent%"=="on" (
echo.
pause
)
