@                                                                                                                                                                                                                                                                                                                       echo off

:DORF
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do for /f usebacktokens^=*delims^=^d %%I in ( '%%~ai' ) do if "%%~I" == "%%~ai" ( echo file %%i) else echo dirs %%i
shift /1
goto:DORF

