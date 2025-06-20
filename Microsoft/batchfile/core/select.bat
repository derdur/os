@                                                                                                                                                                                                                                                                                                                       echo off

:LOOP
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do if exist %%i for /f usebacktokens^=*delims^=^d %%I in ( '%%~ai' ) do if "%%~I" == "%%~ai" ( explorer /select,%%i) else explorer %%i
shift /1
goto:LOOP

