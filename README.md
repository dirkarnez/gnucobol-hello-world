gnucobol-hello-world
====================
```cmd
@REM working only for libcob-4.dll, not working for other built-in dependencies when gnucobol does not provide them as static libraries
set "COB_CFLAGS=-static" && cobc -verbose -static -x main.cob
```
### Notes
- For a self-contained, standalone exe, gnucobol binaries should also be built along with static libraries internally use (zlib, gmp, etc)
