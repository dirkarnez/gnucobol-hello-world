@echo off

set GNUCOB_MAIN_DIR=%USERPROFILE%\Downloads\gnucobol-portable-v3.2

set PATH=^
%GNUCOB_MAIN_DIR%;^
%GNUCOB_MAIN_DIR%\bin;^
%GNUCOB_MAIN_DIR%\mingw64\bin;

echo %COB_CFLAGS%
echo %COB_LDFLAGS%

%GNUCOB_MAIN_DIR%\bin\cobc.exe -conf="%GNUCOB_MAIN_DIR%\config\default.conf" -x --verbose main.cob
