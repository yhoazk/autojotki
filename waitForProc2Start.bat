:: This bat file will wait for the process python to start another instance
:: to test it just run an instance of python in a terminal
::
::
::


:: wait loop
:: Set time out, each is a 5 second wait time
echo off
set TIMEOUT=96 :: 8 min 
set PROC2WAIT=catchc.exe
:CATCHCRUNNING
tasklist /fi "IMAGENAME eq %PROC2WAIT%" | findstr %PROC2WAIT% > NUL

goto STATE%ERRORLEVEL%

:STATE0 :: python is running
ping localhost /n 6 /w 1000 >NUL
set /A TIMEOUT=TIMEOUT-1
if %TIMEOUT% equ 0 (
    taskkill /f /im %PROC2WAIT%
    goto STATE1
)
echo timeout: %TIMEOUT%

goto CATCHCRUNNING

:STATE1 :: Python was not found, then continue the next process
echo on
echo ***       Finished       ***
