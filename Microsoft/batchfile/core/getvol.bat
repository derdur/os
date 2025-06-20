@                                                                                                                                                                                                                                                                                                                       echo off


if "%~1" == "" ( 
  for /f usebacktokens^=1*delims^=^[^] %%A in ( ` fsutil volume list ^| find /v "" /n ^| findstr /i "\:\\$" ` ) do for /f usebacktokens^=* %%C in ( ` set /a dummy^= %%A - 1 ` ) do for /f usebacktokens^=1*delims^=^:^/^\ %%D in ( '%%B' ) do for /f usebacktokens^=1*delims^=^[^] %%G in ( ` fsutil volume list ^| find /v "" /n ^| findstr /i "\[%%C\]\\\\?\\" ` ) do 2>NUL >NUL dir /b %%H\ && echo %%H\%%D
)
:LOOP
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do for /f usebacktokens^=1*delims^=^[^] %%A in ( ` fsutil volume list ^| find /v "" /n ^| findstr /i "%%~di" ` ) do for /f usebacktokens^=* %%C in ( ` set /a dummy^= %%A - 1 ` ) do for /f usebacktokens^=1*delims^=^:^/^\ %%D in ( '%%~di' ) do for /f usebacktokens^=1*delims^=^[^] %%G in ( ` fsutil volume list ^| find /v "" /n ^| findstr /i "\[%%C\]\\\\?\\" ` ) do echo %%H\%%D %%H%%~pnxi
shift /1
goto:LOOP




