@echo off

echo.
echo Checking permissions...
echo.

net session >NUL 2>NUL
if ERRORLEVEL 1 (
echo.
echo FATAL: You must run this script with administrator permission.
echo.

goto exit
)

cls

echo.
echo Checking if your Windows supports NFS...
echo.

dism /online /get-features /format:table | find "NFS"

if ERRORLEVEL 1 (

echo.
echo FATAL: Your Windows distribution doesn't provide NFS.
echo.

goto exit

)

echo.
echo Trying to disable NFS on your system...
echo.

dism /online /disable-feature /featurename:ServicesForNFS-ClientOnly /norestart
dism /online /disable-feature /featurename:ClientForNFS-Infrastructure /norestart
dism /online /disable-feature /featurename:NFS-Administration /norestart

echo.
echo.
echo --------------------------------------------------------------------------------
echo.
echo Uninstall finished. Check for output above for state.
echo.

:exit

echo.
pause
