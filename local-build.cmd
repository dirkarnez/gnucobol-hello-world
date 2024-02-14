@echo off


set "COB_MAIN_DIR=%USERPROFILE%\Downloads\gnucobol-3.3-dev-MinGW-binaries (debug)"

:: settings for cobc
set "COB_CONFIG_DIR=%COB_MAIN_DIR%\config"
set "COB_COPY_DIR=%COB_MAIN_DIR%\copy"
set "COB_CFLAGS=-I"%COB_MAIN_DIR%\include" %COB_CFLAGS%"
set "COB_LDFLAGS=-L"%COB_MAIN_DIR%\lib" %COB_LDFLAGS%"

:: settings for libcob
set "COB_LIBRARY_PATH=%COB_MAIN_DIR%\extras"

:: Add the bin path of GnuCOBOL (including GCC) to PATH for further references
set "PATH=%COB_MAIN_DIR%\bin"

:: Locales
set "LOCALEDIR=%COB_MAIN_DIR%\locale"

:: Timezone database
if exist "%COB_MAIN_DIR%\share\zoneinfo" (
  set "TZDIR=%COB_MAIN_DIR%\share\zoneinfo"
)

cobc -x --verbose main.cob
%WINDIR%\system32\robocopy "C:\Users\19081126D\Downloads\gnucobol-3.3-dev-MinGW-binaries (debug)\bin" "%cd%" libgcc_s_dw2-1.dll libgmp-10.dll libiconv-2.dll libintl-8.dll libpdcurses.dll libcob-4.dll libdb-6.0.dll
pause