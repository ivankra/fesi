@echo off
@rem ======================================
@rem DOS Batch file to invoke the fesi gui
@rem ======================================

SET FESIDIR=$INSTALL_PATH
start "FESI" javaw -classpath "$INSTALL_PATH\lib\fesi.jar" "-DFESI.help=file:$INSTALL_PATH\doc\html\index.html" FESI.Interpreter.Interpret -i -s %1 %2 %3 %4 %5 %6 %7 %8 %9

@echo on
