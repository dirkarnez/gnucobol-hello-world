set ROOT=C:\Users\19081126D\AppData\Local\GnuCOBOL
set PATH=%ROOT%;%ROOT%\bin;%ROOT%\mingw64\bin;

set COB_CFLAGS=-I%ROOT%\include -I%ROOT%\include\libcob -L%ROOT%\lib -static -l:libcob.a -lcob
set COB_LDFLAGS=-I%ROOT%\include -I%ROOT%\include\libcob -L%ROOT%\lib -static -l:libcob.a -lcob
set CFLAGS=-I%ROOT%\include -I%ROOT%\include\libcob -L%ROOT%\lib -static -l:libcob.a -lcob

cobc --info &&^
cobc -conf="%ROOT%\config\default.conf" -x -static main.cob &&^
pause