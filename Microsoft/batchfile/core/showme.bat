@                                                                                                                                                                                                                                                                                                                       echo off


:LOOP
if "%~1" == "" exit/b
for /f usebacktokens^=* %%I in ( ` 2^>NUL where %1 ` ) do for %%i in ( "%%~I" ) do for /f usebacktokens^=*delims^=^d %%J in ( '%%~ai' ) do if "%%~J" == "%%~ai" ( explorer /select,%%i) else explorer %%i
shift /1
goto:LOOP

