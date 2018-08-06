@echo off

rem Specify the java home directory 
rem set JAVA_HOME=C:\Program Files\Java\jdk1.6.0_30

rem build the java command 
set JAVA=java
if not "%JAVA_HOME%" == "" set JAVA=%JAVA_HOME%\bin\java

rem This will be the run directory
set RUN_DIR=%cd%
rem Move up...
cd ..
rem This will be the base directory
set BASE_DIR=%cd%

set JAVA_OPTS="-XX:PermSize=2048m -XX:MaxPermSize=2048m -Dosiris.run.dir=%RUN_DIR% -Dosiris.base.dir=%BASE_DIR%"

for /F "tokens=2-4 delims=/ " %%i in ('date /t') do (
    set mm=%%i
    set dd=%%j
    set yy=%%k
)

rem get time
for /F "tokens=5-8 delims=:. " %%i in ('echo.^| time ^| find "current" ') do (
    set hh=%%i
    set mm=%%j
)

set timestamp=%yy%%mm%%dd%

echo. -Xmx3072m -Xms3072m 
echo.========================================================================
echo.
echo   Osiris3 Server (ETRACS) 
echo.
echo   JAVA        : %JAVA%
echo   JAVA_HOME   : %JAVA_HOME%
echo   JAVA_OPTS   : %JAVA_OPTS%
echo.
echo.========================================================================
echo.

"%JAVA%" "%JAVA_OPTS%" -cp lib/*;. com.rameses.main.bootloader.MainBootLoader
pause
