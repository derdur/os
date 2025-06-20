@                                                                                                                                                                                                                                                                                                                       echo off

:LOOP
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do if exist %%i for /f usebacktokens^=*delims^=^d %%I in ( '%%~ai' ) do ( if "%%~I" == "%%~ai" ( del /q /f %%i) else rmdir /q %%i ) 2>NUL >NUL
shift /1
goto:LOOP
