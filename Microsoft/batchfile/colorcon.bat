@                                                                                                                                                                                                                                                                                                                       echo off

for %%$ in ( "HKLM\Software\0\Colorcon" ) do for /f usebacktokens^=3* %%A in ( ` 2^>NUL reg query %%$ ^|^| echo one two 2 3 6 8 9 A B E ` ) do for /f usebacktokens^=* %%C in ( ` reg add %%$ -d "%%B %%A" -f ` ) do color %%A

