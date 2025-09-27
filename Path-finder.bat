@ECHO OFF

:: ----------------------------------------------
:: Path Finder by Guacamoleboy (Admin Update)
:: ----------------------------------------------

NET SESSION >NUL 2>&1

IF %ERRORLEVEL% NEQ 0 (
    ECHO.
    ECHO *** Administrator rettigheder kræves - forsøger at genstarte i admin mode...
    ECHO.

    :: Resets and turns on Admin Mode (Admin Prompt)
    powershell -Command "Start-Process '%~f0' -ArgumentList '%*' -Verb RunAs"
    EXIT /B
)

color 3

ECHO.
ECHO Path Finder by Guacamoleboy [ADMIN MODE]
ECHO.
ECHO ---------------------------

ECHO.
ECHO Useful Commands:
ECHO.
ECHO dir = List of items in directory..
ECHO cd = Changes the directory..
ECHO mkdir = Make 1 or more directories..
ECHO.
ECHO ---------------------------

ECHO.
ECHO Setting Path To The Dragged File: %1
cd /d "%~dp1"
ECHO.

cmd /k

:: Program by Guacamoleboy