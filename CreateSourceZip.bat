@ECHO OFF
REM #########################################################
REM 
REM \brief  Create source distribution.
REM
REM         Creates source distribution for windows.
REM 
REM \note   To do this you are going to need pkzipc (the command-line
REM         version of pkzip) somewhere in your path.
REM
REM \sa     CreateBinaryMsi.bat
REM         CreateBinaryZip.bat
REM
REM #########################################################

IF "%1"=="" GOTO doSyntax

ECHO Clean any existing stage area...
IF EXIST mysql-connector-odbc-%1-win-src.zip ( 
    del mysql-connector-odbc-%1-win-src.zip 
)
IF EXIST mysql-connector-odbc-%1-win-src ( 
    rmdir /S /Q mysql-connector-odbc-%1-win-src 
)

ECHO Create stage area and populate...
mkdir mysql-connector-odbc-%1-win-src 

REM Its easier to copy specific files then try 
REM to clean out garbage (in this case).
REM xcopy /E /Y * mysql-connector-odbc-%1-win-src

REM root
mkdir mysql-connector-odbc-%1-win-src 
copy ChangeLog mysql-connector-odbc-%1-win-src\ChangeLog.rtf
copy LICENSE.gpl mysql-connector-odbc-%1-win-src\LICENSE.rtf
copy LICENSE.exceptions mysql-connector-odbc-%1-win-src\EXCEPTIONS.rtf
copy Build.bat mysql-connector-odbc-%1-win-src
copy Install.bat mysql-connector-odbc-%1-win-src
copy Uninstall.bat mysql-connector-odbc-%1-win-src
copy CreateMakefiles.bat mysql-connector-odbc-%1-win-src
copy CreateVisualStudioProjects.bat mysql-connector-odbc-%1-win-src
copy config.pri mysql-connector-odbc-%1-win-src
copy defines.pri mysql-connector-odbc-%1-win-src
copy mysql.pri mysql-connector-odbc-%1-win-src
copy odbc.pri mysql-connector-odbc-%1-win-src
copy root.pro mysql-connector-odbc-%1-win-src
copy README mysql-connector-odbc-%1-win-src\README.rtf
copy BUILD mysql-connector-odbc-%1-win-src\BUILD.rtf
copy BUILD.win mysql-connector-odbc-%1-win-src\BUILD-win.rtf
copy INSTALL mysql-connector-odbc-%1-win-src\INSTALL.rtf
copy INSTALL.win mysql-connector-odbc-%1-win-src\INSTALL-win.rtf
copy resource.h mysql-connector-odbc-%1-win-src
copy VersionInfo.h mysql-connector-odbc-%1-win-src
copy mysql.bmp mysql-connector-odbc-%1-win-src

REM dltest
mkdir mysql-connector-odbc-%1-win-src\dltest
copy dltest\*.pro mysql-connector-odbc-%1-win-src\dltest
copy dltest\*.c mysql-connector-odbc-%1-win-src\dltest

REM myodbc3u
mkdir mysql-connector-odbc-%1-win-src\myodbc3u
copy myodbc3u\*.pro mysql-connector-odbc-%1-win-src\myodbc3u
copy myodbc3u\*.h mysql-connector-odbc-%1-win-src\myodbc3u
copy myodbc3u\*.c mysql-connector-odbc-%1-win-src\myodbc3u

REM myodbc3S
mkdir mysql-connector-odbc-%1-win-src\myodbc3S
copy myodbc3S\*.pro mysql-connector-odbc-%1-win-src\myodbc3S
copy myodbc3S\*.def mysql-connector-odbc-%1-win-src\myodbc3S
copy myodbc3S\*.xpm mysql-connector-odbc-%1-win-src\myodbc3S
copy myodbc3S\*.rc mysql-connector-odbc-%1-win-src\myodbc3S
copy myodbc3S\*.c mysql-connector-odbc-%1-win-src\myodbc3S
copy myodbc3S\*.cpp mysql-connector-odbc-%1-win-src\myodbc3S
copy myodbc3S\*.h mysql-connector-odbc-%1-win-src\myodbc3S

REM myodbc3i
mkdir mysql-connector-odbc-%1-win-src\myodbc3i
copy myodbc3i\*.pro mysql-connector-odbc-%1-win-src\myodbc3i
copy myodbc3i\*.c mysql-connector-odbc-%1-win-src\myodbc3i

REM myodbc3m
mkdir mysql-connector-odbc-%1-win-src\myodbc3m 
copy myodbc3m\*.pro mysql-connector-odbc-%1-win-src\myodbc3m
copy myodbc3m\*.c mysql-connector-odbc-%1-win-src\myodbc3m
copy myodbc3m\*.h mysql-connector-odbc-%1-win-src\myodbc3m

REM myodbc3c
mkdir mysql-connector-odbc-%1-win-src\myodbc3c 
copy myodbc3c\*.pro mysql-connector-odbc-%1-win-src\myodbc3c
copy myodbc3c\*.cpp mysql-connector-odbc-%1-win-src\myodbc3c

REM myodbc3
mkdir mysql-connector-odbc-%1-win-src\myodbc3
copy myodbc3\*.pro mysql-connector-odbc-%1-win-src\myodbc3
copy myodbc3\*.c mysql-connector-odbc-%1-win-src\myodbc3
copy myodbc3\*.h mysql-connector-odbc-%1-win-src\myodbc3
copy myodbc3\*.rc mysql-connector-odbc-%1-win-src\myodbc3
copy myodbc3\*.def mysql-connector-odbc-%1-win-src\myodbc3

REM MYODBCCls
mkdir mysql-connector-odbc-%1-win-src\MYODBCCls
copy MYODBCCls\*.pro mysql-connector-odbc-%1-win-src\MYODBCCls

mkdir mysql-connector-odbc-%1-win-src\MYODBCCls\include
copy MYODBCCls\include\*.h mysql-connector-odbc-%1-win-src\MYODBCCls\include

mkdir mysql-connector-odbc-%1-win-src\MYODBCCls\MYODBCClsLib
copy MYODBCCls\MYODBCClsLib\*.pro mysql-connector-odbc-%1-win-src\MYODBCCls\MYODBCClsLib
copy MYODBCCls\MYODBCClsLib\*.cpp mysql-connector-odbc-%1-win-src\MYODBCCls\MYODBCClsLib

mkdir mysql-connector-odbc-%1-win-src\MYODBCCls\MYODBCClsApp
copy MYODBCCls\MYODBCClsApp\*.pro mysql-connector-odbc-%1-win-src\MYODBCCls\MYODBCClsApp
copy MYODBCCls\MYODBCClsApp\*.cpp mysql-connector-odbc-%1-win-src\MYODBCCls\MYODBCClsApp
copy MYODBCCls\MYODBCClsApp\*.h mysql-connector-odbc-%1-win-src\MYODBCCls\MYODBCClsApp

REM MYQTODBCCls
mkdir mysql-connector-odbc-%1-win-src\MYQTODBCCls
copy MYQTODBCCls\*.pro mysql-connector-odbc-%1-win-src\MYQTODBCCls

mkdir mysql-connector-odbc-%1-win-src\MYQTODBCCls\include
copy MYQTODBCCls\include\*.h mysql-connector-odbc-%1-win-src\MYQTODBCCls\include
copy MYQTODBCCls\include\*.xpm mysql-connector-odbc-%1-win-src\MYQTODBCCls\include

mkdir mysql-connector-odbc-%1-win-src\MYQTODBCCls\MYQTODBCClsLib
copy MYQTODBCCls\MYQTODBCClsLib\*.pro mysql-connector-odbc-%1-win-src\MYQTODBCCls\MYQTODBCClsLib
copy MYQTODBCCls\MYQTODBCClsLib\*.cpp mysql-connector-odbc-%1-win-src\MYQTODBCCls\MYQTODBCClsLib

mkdir mysql-connector-odbc-%1-win-src\MYQTODBCCls\MYQTODBCClsApp
copy MYQTODBCCls\MYQTODBCClsApp\*.pro mysql-connector-odbc-%1-win-src\MYQTODBCCls\MYQTODBCClsApp
copy MYQTODBCCls\MYQTODBCClsApp\*.cpp mysql-connector-odbc-%1-win-src\MYQTODBCCls\MYQTODBCClsApp
copy MYQTODBCCls\MYQTODBCClsApp\*.h mysql-connector-odbc-%1-win-src\MYQTODBCCls\MYQTODBCClsApp

REM MYODBCBrw
mkdir mysql-connector-odbc-%1-win-src\MYODBCBrw
copy MYODBCBrw\*.pro mysql-connector-odbc-%1-win-src\MYODBCBrw

mkdir mysql-connector-odbc-%1-win-src\MYODBCBrw\include
copy MYODBCBrw\include\*.h mysql-connector-odbc-%1-win-src\MYODBCBrw\include
copy MYODBCBrw\include\*.xpm mysql-connector-odbc-%1-win-src\MYODBCBrw\include

mkdir mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwLib
copy MYODBCBrw\MYODBCBrwLib\*.pro mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwLib
copy MYODBCBrw\MYODBCBrwLib\*.cpp mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwLib

mkdir mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwApp
copy MYODBCBrw\MYODBCBrwApp\*.pro mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwApp
copy MYODBCBrw\MYODBCBrwApp\*.cpp mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwApp
copy MYODBCBrw\MYODBCBrwApp\*.h mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwApp
copy MYODBCBrw\MYODBCBrwApp\*.xpm mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwApp
copy MYODBCBrw\MYODBCBrwApp\*.ico mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwApp
copy MYODBCBrw\MYODBCBrwApp\*.rc mysql-connector-odbc-%1-win-src\MYODBCBrw\MYODBCBrwApp

REM doc
mkdir mysql-connector-odbc-%1-win-src\doc
copy doc\* mysql-connector-odbc-%1-win-src\doc

ECHO Zipping...
pkzipc -add -maximum -recurse -path=current mysql-connector-odbc-%1-win-src.zip mysql-connector-odbc-%1-win-src/*.*
IF EXIST mysql-connector-odbc-%1-win-src ( 
    rmdir /S /Q mysql-connector-odbc-%1-win-src
)

ECHO ****
ECHO * Hopefully things went well and you have a fresh new source distribution
ECHO * in the source root directory. 
ECHO ****

EXIT /B 0

:doSyntax
ECHO CreateSourceZip
ECHO ===============
ECHO .
ECHO Usage:
ECHO .
ECHO %0 VERSION
ECHO .
ECHO   VERSION      must be; a 3 number version code
ECHO .
ECHO   Examples:
ECHO .
ECHO   %0 3.51.12

