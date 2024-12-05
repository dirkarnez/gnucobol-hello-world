gnucobol-hello-world
====================
### Using
- https://superbol.eu/en/

```cmd
@REM working only for libcob-4.dll, not working for other built-in dependencies when gnucobol does not provide them as static libraries
set "COB_CFLAGS=-static" && cobc -verbose -static -x main.cob
```
### Notes
- For a self-contained, standalone exe, gnucobol binaries should also be built along with static libraries internally use (zlib, gmp, etc)
- > If you need to use a GCC compiler other than the one included in this package, you can use the tool gc-config to change the GCC compiler used by GnuCOBOL.
    - https://superbol.eu/en/developers/windows-aio-3.2/
### Reference
- [MartinSandstrom/cobol-hello-world](https://github.com/MartinSandstrom/cobol-hello-world)
- [Running GnuCobol on Linux. What is GnuCOBOL? | by Rucha Tare | Medium](https://ruchatare.medium.com/running-gnucobol-on-linux-2165959461d)
- [E List of Intrinsic Functions — GnuCOBOL master-with-README (5c51860 ) (2024/01/19 16:54) documentation](https://superbol.eu/gnucobol/gnucobpg/chapter17.html)
- [COBOL/C Interoperability - COBOL IT Compiler Suite](https://www.microfocus.com/documentation/cobol-it/4-11/user-guide/getting-started/interoperability-cobol-c.html)
