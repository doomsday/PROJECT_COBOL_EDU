# CONFIGURING COBOL DEVELOPMENT ENVIRONMENT ON WINDOWS

* Install MinGW
* [Download](https://www.arnoldtrembley.com/GnuCOBOL.htm) GnuCOBOL binaries for Windows
* Unpack binaries to `C:\MinGW\share\gnucobol` (`\bin`, `\config` etc.)
* Create and place `cobol.bat` to `C:\MinGW\share\gnucobol\bin`
```bat
@echo off

rem Compile a COBOL program

set COB_MAIN_DIR=C:\MinGW\share\gnucobol
set COB_CONFIG_DIR=%COB_MAIN_DIR%\config
set COB_COPY_DIR=%COB_MAIN_DIR%\copy
set COB_CFLAGS=-I"%COB_MAIN_DIR%\include" %COB_CFLAGS%
set COB_LDFLAGS=-L"%COB_MAIN_DIR%\lib" %COB_LDFLAGS%
set COB_LIBRARY_PATH=%COB_MAIN_DIR%\extras

rem Start the compiler

cobc -x %*
```
* Add `C:\MinGW\share\gnucobol\bin` to `%PATH%`

Now you can build COBOL sources this way:
```cmd
cobol -fixed -x -O --std=ibm-strict DRAFT.COB
```

# USING 'Makefile'
```cmd
make
make DRAFT
```