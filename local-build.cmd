@echo off


@REM set "COB_MAIN_DIR=%USERPROFILE%\Downloads\GnuCOBOL"

@REM :: settings for cobc
@REM set "COB_CONFIG_DIR=%COB_MAIN_DIR%\config"
@REM set "COB_COPY_DIR=%COB_MAIN_DIR%\copy"
@REM set "COB_CFLAGS=-I"%COB_MAIN_DIR%\include" %COB_CFLAGS%"
@REM set "COB_LDFLAGS=-L"%COB_MAIN_DIR%\lib" %COB_LDFLAGS%"

@REM :: settings for libcob
@REM set "COB_LIBRARY_PATH=%COB_MAIN_DIR%\extras"

@REM :: Add the bin path of GnuCOBOL (including GCC) to PATH for further references
@REM set "PATH=%COB_MAIN_DIR%\bin"

@REM :: Locales
@REM set "LOCALEDIR=%COB_MAIN_DIR%\locale"

@REM :: Timezone database
@REM if exist "%COB_MAIN_DIR%\share\zoneinfo" (
@REM   set "TZDIR=%COB_MAIN_DIR%\share\zoneinfo"
@REM )

%USERPROFILE%\Downloads\GnuCOBOL\bin\cobc.exe -x --verbose main.cob
@REM %WINDIR%\system32\robocopy "C:\Users\19081126D\Downloads\gnucobol-3.3-dev-MinGW-binaries (debug)\bin" "%cd%" libgcc_s_dw2-1.dll libgmp-10.dll libiconv-2.dll libintl-8.dll libpdcurses.dll libcob-4.dll libdb-6.0.dll
pause