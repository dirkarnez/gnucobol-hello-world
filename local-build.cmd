@echo off

set GNUCOB_MAIN_DIR=^
%USERPROFILE%\Downloads\gnucobol-portable-v3.2

@REM set "COB_CFLAGS=  -Wl,-Bstatic -lcob %COB_CFLAGS%"
@REM set "COB_LDFLAGS=-L"%GNUCOB_MAIN_DIR%\lib" -Wl,-Bstatic -lcob  %COB_LDFLAGS%"

@REM  set COB_LIBRARY_PATH=%GNUCOB_MAIN_DIR%\lib

@REM set CFLAGS=-I"%GNUCOB_MAIN_DIR%\include"  -Wl,-Bstatic -lcob %COB_CFLAGS%
@REM set LDFLAGS=-L"%GNUCOB_MAIN_DIR%\lib" -Wl,-Bstatic -lcob %COB_LDFLAGS%

@REM echo %CFLAGS%
@REM echo %LDFLAGS%

set PATH=^
%GNUCOB_MAIN_DIR%;^
%GNUCOB_MAIN_DIR%\bin;^
%USERPROFILE%\Downloads\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin;


@REM cob-config --ldflags
@REM cob-config --cflags

cobc -conf="%GNUCOB_MAIN_DIR%\config\default.conf" -I%GNUCOB_MAIN_DIR%\include -I%GNUCOB_MAIN_DIR%\include\libcob -L%GNUCOB_MAIN_DIR%\lib -l:libcob.a  -x -C -static main.cob


pause
@REM cobc -conf="%GNUCOB_MAIN_DIR%\config\default.conf" -I%GNUCOB_MAIN_DIR%\include -I%GNUCOB_MAIN_DIR%\include\libcob -x -c main.cob
@REM cobc -conf="%GNUCOB_MAIN_DIR%\config\default.conf" -L"%GNUCOB_MAIN_DIR%\lib" -static -x -o main main.o

gcc.exe -I%~dp0 -I%GNUCOB_MAIN_DIR%\include -I%GNUCOB_MAIN_DIR%\include\libcob -L%GNUCOB_MAIN_DIR%\lib -l:libcob.a -c main.c -o main.o
gcc.exe main.o -L%GNUCOB_MAIN_DIR%\lib -l:libcob.a -o main.exe -static

@REM gcc.exe main.o -I%GNUCOB_MAIN_DIR%\include -I%GNUCOB_MAIN_DIR%\include\libcob -L%GNUCOB_MAIN_DIR%\lib -l:libcob.a  -o helloworld.exe -static

@REM gcc -c -I "C:\Users\19081126D\Downloads\gnucobol-portable-v3.2\include" -pipe -Wno-unused -fsigned-char -Wno-pointer-sign hello.c
@REM $ cobc -c -static say.cob
@REM $ cobc -x -o hello hello.o say.o
@REM $ ./hello
@REM Hello, world!

@REM @REM echo %COB_CFLAGS%
@REM @REM echo %COB_LDFLAGS%

@REM cobc.exe -conf="%GNUCOB_MAIN_DIR%\config\default.conf" -I"%GNUCOB_MAIN_DIR%\include" -L"%GNUCOB_MAIN_DIR%\lib" -verbose -x main.cob &&^
pause
