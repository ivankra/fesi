@echo off
@rem ======================================
@rem DOS Batch file to invoke the fesi gui
@rem ======================================

SET FESIDIR=/home/vm/FESI
start "FESI" javaw -classpath "/home/vm/FESI\lib\fesi.jar" "-DFESI.help=file:/home/vm/FESI\doc\html\index.html" FESI.Interpreter.Interpret -i -s %1 %2 %3 %4 %5 %6 %7 %8 %9

@echo on
