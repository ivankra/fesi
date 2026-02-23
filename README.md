# FESI

JavaScript interpreter from late 1990s by Jean-Marc Lugrin, written in Java.

This repository contains source code for v1.1.5 and v1.1.8 preserved by
the Internet Archive, as well as the code of YAJI fork that added ES3 and
ES5 support to it.

Links:

  * https://web.archive.org/web/20120523224913/http://www.lugrin.ch/fesi/
  * https://web.archive.org/web/20040607013039/http://www.lugrin.ch/fesi/history.html
  * https://web.archive.org/web/20130219063729/http://www.lugrin.ch/fesi/fesisrc-1.1.5.zip
  * https://web.archive.org/web/20130219063729/http://www.lugrin.ch/fesi/install-fesi-1.1.8.jar
  * https://code.google.com/p/yaji-ecmascript-interpreter/
  * https://github.com/neades/yaji-ecmascript-interpreter/
  * https://github.com/pajp/xss/blob/7e255b7997b0d037d34cfb7cc7ec61a2833a914b/jars/fesi.jar

## Changelog

* 1.1.8 - Septembre 29, 2003
  * Include a jar for execution on JDK 1.1.8, for example on PDA or other small devices.
  * Use the Appache version (2.3) of the BSF.
  * Upgraded to latest IzPack.

* 1.1.7 - August 31, 2003
  * Support access to static fields from an object (before, the class object had to be specified).
  * Support of BSF, version 2.2 (see Bean Scripting Framwork), allowing to call FESI from a common interface used by many tools.
  * Added example for swing (examples/swing/swingev.esw) that demonstrate use of events.
  * Added getWrappedObject and getWrappedBean to the js package.
  * Upgraded to latest JavaCC and IzPack (no user visible change).

* 1.1.6a - August 22,  2003
  * Only changes to the documentation and site, included all build files in the source kit.
  * Made previous version (1.1.5) available.

* 1.1.6 - August 4 2003
  * Upgraded to JDK 1.4 (including RegExp library), latest versions of JavaCC, ORO and GNU RegExp.
  * Corrected an important bug in scope chain and 'this' (thanks to Michael Schneider).
  * Added command @modules to load using the classpath (now @load uses the file loader).
  * Moved to www.lugrin.ch/fesi.
  * Use IzPack installer.
  * --
  * Avoid a useless backtrack in lexical parsing.
  * Corrected a bug in scope chain and prototype, added test in validation suite (thanks to Michael Schneider).
  * Corrected a bug in 'this' for called functions (thanks to
  * Michael Schneider and a few others).
  * Corrected a bug in getTimezoneOffset (thank to Wendell T. Hicken)
  * Added substr from Wendell T. Hicken (not sure if in standard)
  * Added command @module to load module, use @load to load files
  * Normalized import statements (using Eclipse)
  * Use latest version of ORO and GNU regexpt libraries, removed deprecated methods used for OROlib.
  * Use latest version (3.1, open source, renamed the reader) of JavaCC
  * Use IzPack installer (http://www.izforge.com/izpack/)
  * Use ANT to control the code and site generation.
  * Currently removed the FesiFTP example (lack of time to integrate).

* 1.1.5 - July 29, 2000
  * Corrected bug when calling a function with less arguments than the number of real parameters. Now correctly returns 'undefined' for missing parameters (thanks to Rob Noble and Sergey Borisov).
  * Use 'undefined' when attempting to use no value at all (for example using the returned value of an function which ends with an empty statement). Previously this created a null pointer exception.
  * Hack (adding a new line) to work around a parsing limitation which generated an error when a single line program was terminated by a // comment.

* 1.1.4 - January 30, 2000
  * Added the GnuRegExp (Thanks to Mike Dillon), allowing LGPL support of RegExp.
  * Better documentation of Windows Installation.

* 1.1.3 - December 25, 1999
  * LICENSED UNDER THE LGPL .Thanks to the Debian and FSF people who encouraged me to use a more standard license. NOTE: To avoid any licensing ambiguity, the ORO regular expression library is not included anymore, you must download it from http://www.savarese.org .
  * Use javaCC 1.1.
  * Corrected bug in getting path separator (for Linux).
  * Pass call to functions to the prototype even if prototype is a native object.
  * Add extensions of initialized objects (from Christophe Marton).
  * new Date() correctly initialize to current time.
  * Corrected bug in parseInt of large numbers.
  * Corrected bug when RegExp matched but one group did not match.
  * The limitation on calling public methods of non public classe is documented (thanks to Jason Mathews).
  * The LINK.HTML page has been updated.

* 1.1.2 - May 8, 1999
  * Avoid converting BigInteger to builtin numbers (thanks to Denis Bohm).
  * Add support to sort function in Array.sort (thanks to Hannes Wallnoefer)
  * Corrected bug in normalize value to support arrays (thanks to Kurt Westerfeld)
  * Corrected bug in array enumeration when non indexed properties were present.
  * Transformed parameters of JSFunction to JSObject when possible.

* 1.1.1 - March 15, 1999
  * Cleaned up web documentation
  * Checked on Linux (the AWT GUI doubles all characters... sorry)
  * Very minor cleanup of code

* 1.1 - March 7, 1999 (not announced)
  * WARNING: Use Swing 1.1 (javax.swing) in the swinggui if used with JDK1.1.7 !
  * A new option -e allows to load extensions from the command line.
  * The Interpreter structure has well as the gui classes have been changed to ease subclassing and allow compilation without the Swinf and ORO classes.
  * Validated under Java 1.2, includes Java 1.2 compatible ORO classes.
  * Added access to CORBA style properties (routines without set/get prefix)
  * From Kurt Westerfeld:
    * Fix around Console to support the MS environment
    * Bug correction in ESObject, avoiding an endless loop if an object which does not have a valid default string value is converted to string.
    * Added getMetaData() to connection and rowset in the Database extension.

* 1.0.2 - January 16, 1999
  * tryEval now return the evaluated value (rather than the first parameter), as is documented and useful (from Kurt Westerfeld).
  * Added getVersion and getWelcomeText to the JSUtil package.
  * Corrected bug in @listAll of java arrays (from Kurt Westerfeld.
  * MathObject initialization moved around to help JBuilder users.
  * Corrected bug in EcmaScriptException printing (from Kurt Westerfeld).
  * Routine doWork in Interpreter made public (to ease embedding the interpreter in user code).
  * Enhancement in routine lookup in inside class of interfaces (based on an idea of Rich Kadel)

* 1.0.1 - not released to the general public
  * Use FESI_HOME in batch files (from Matt Humphrey).
  * Corrected bug on Date(date) constructor (from Hannes Wallnoefer).
  * getWelcomeText made public on evaluator.

* 1.0 - October 17, 1998 - A small correction in for loop handling. Added ORO libraries to binary distribution.

* Beta 4 - Added SetFullYear, corrected bug in new Date() function. Corrected bug in continue used in for and while loops.

* Beta 2 - Bug in recursive call of the interpreter corrected. A simple editing environment has been added to the Swing version

* Beta 3 - Package was renamed Packages for compatibility with Netscape. The Swing development environment was enhanced.

* Beta 1 - Some errors in java access of interface routines corrected. FesiForm example added.

* Release 0.9 alpha adds:
  * (Now works with the "jit", which double the performance (good, but a far cry from the marketing hype!)
  * (1): Possibility to catch the original error when a JSException was generated.
  * (2): Corrected bug with enumeration of non string returning java objects.
  * (3): Corrected bug with indexed access to the arguments special variable, getOriginalException, typeof undefined, added command @pwd, the Database access mechanism.
  * (4): Completion of the database interface, addition of evalAsFunction , and some explanation of the option -T in the interpreter .
  * (5): Minor internal enhancements to the database interface, regular expression and the tryEval capability. FesiFTP example added.
  * (6): Better support for with(javaObject), enhanced FesiFTP example, new File().readAll convenience function, small internal code enhancements. Beware: getLastError in the database extension has been changed to return null (instead of undefined) if there is no error.
  * (7): Bug corrections: Close the loaded file or stream in all cases (even in case of error), indicate that that the ProgrammingError exception is caused by FESI internal errors. Enhancements in @describe and @listall commands. Accept empty statements in more places (especially function(){}). Added xml parser example using the ibm xml4j package. Added function makeObjectWrapper(object) to JSGlobalObject, allowing to use any object as an JSObject (for example with the eval function, making the object the "this" of the evaluation sequence). Added support for evaluating any string as if it was a function with parameters. Added support for Swing in the interpreter (-s) and as an alternate extension ( BasicIOs ).
  * (8): Corrected a bug in calling some interface class objects. Corrected a buh in the Swing console mode. Added throwError .
  * (9): Display value for FIELD and PROPS in @describe. @load and load() now look in FESI.path or (if not present) in the classpath to find the module. This can include jar and zip files. A command @path display the load path in use. Updated the installation notes.

* The version 0.8 adds:
  * Support for bean properties as EcmaScript properties even for objects not declared as bean.
  * Possibility to give an EcmaScript Array as a parameter for indexed properties or when a native Java array is required.
  * Many enhancements in the jslib, including a way to create EcmaScript objects and arrays, to declare objects as beans and to build functions looking as EcmaScript functions, to get original exception hidden behing JSException. See the FesiPop example too.
  * Command @clear added, and commands can be specified by any unique prefix.
  * There was some confusion with the numbering of 0.8 and 0.9. From 0.9 the patch levels are between parentheses, as in 0.9(2).

* The version 0.7 adds:
  * Support for bean properties as EcmaScript properties.
  * A load routine (as part of BasicIO).
  * Speed enhancement (especially for java access).
  * Corrected various bugs.

* The version 0.6 adds:
  * A general event handling capability.
  * Loading Java classes from a dynamically specified directory or jar file and dynamic loading of beans (including applets and gif images).
  * Various examples of loading beans and event handling.
  * The new command describe

* The version 0.5 adds:
  * AWT event handling. It is therefore possible to build and experiment with user interface with FESI.

* (initial release)

## License

Original license statement:

```
FESI Copyright (c) Jean-Marc Lugrin, 1997-2003
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Lesser General
Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

See GNU Lesser General Public License or the file License.txt
which is part of the kit.

Please note that you are still encouraged to send me any modification or
extension so that they can be integrated in the disributed package. You
are encouraged to distribute your packages under the GPL if possible. I
used the LGPL to avoid penalizing people who did develop commercial
packaged with FESI with the previous license. The intention is that the
new license is at least as liberal as the old one.

Some files are largely extracted from books or other examples, and it
was explictely allowed to use them. In those cases I left the original
copyright in the files.

Some packages used to compile FESI are LGPL or equivallent. They include
the ORO library, the GNU regular expression library and the JavaCC
compiler tools. They are not included in this distribution package so
refer to the original source for copyright information.
```
