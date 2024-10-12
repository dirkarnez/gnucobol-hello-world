gnucobol-hello-world
====================
```
set "COB_CFLAGS=-static" && cobc -verbose -static -x main.cob
```
### Notes
- For a self-contained, standalone exe, gnucobol binaries should also be built along with static libraries internally use (zlib, gmp, etc)
