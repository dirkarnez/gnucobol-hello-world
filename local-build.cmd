@echo off

set GNUCOB_MAIN_DIR=%USERPROFILE%\Downloads\gnucobol-portable-v3.2

set "COB_CFLAGS=-I"%GNUCOB_MAIN_DIR%\include" -static %COB_CFLAGS%"
set "COB_LDFLAGS=-L"%GNUCOB_MAIN_DIR%\lib"  %COB_LDFLAGS%"

set PATH=^
%GNUCOB_MAIN_DIR%;^
%GNUCOB_MAIN_DIR%\bin;^
%GNUCOB_MAIN_DIR%\mingw64\bin;

echo %COB_CFLAGS%
echo %COB_LDFLAGS%

%GNUCOB_MAIN_DIR%\bin\cobc.exe -conf="%GNUCOB_MAIN_DIR%\config\default.conf" -verbose -static -x main.cob
