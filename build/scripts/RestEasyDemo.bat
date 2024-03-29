@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  RestEasyDemo startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and REST_EASY_DEMO_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\RestEasyDemo.jar;%APP_HOME%\lib\hibernate-core-5.3.3.Final.jar;%APP_HOME%\lib\postgresql-42.2.4.jar;%APP_HOME%\lib\resteasy-guice-3.6.0.Final.jar;%APP_HOME%\lib\resteasy-html-3.6.0.Final.jar;%APP_HOME%\lib\resteasy-client-3.6.0.Final.jar;%APP_HOME%\lib\resteasy-jaxrs-3.6.0.Final.jar;%APP_HOME%\lib\resteasy-jackson-provider-3.6.0.Final.jar;%APP_HOME%\lib\resteasy-jaxb-provider-3.6.0.Final.jar;%APP_HOME%\lib\guice-persist-4.2.0.jar;%APP_HOME%\lib\guice-servlet-4.2.0.jar;%APP_HOME%\lib\guice-4.2.2.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.2.jar;%APP_HOME%\lib\javax.servlet-api-4.0.1.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.4.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.2.Final.jar;%APP_HOME%\lib\javax.persistence-api-2.2.jar;%APP_HOME%\lib\javassist-3.23.1-GA.jar;%APP_HOME%\lib\byte-buddy-1.8.13.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jboss-transaction-api_1.2_spec-1.1.1.Final.jar;%APP_HOME%\lib\jandex-2.0.5.Final.jar;%APP_HOME%\lib\classmate-1.3.4.jar;%APP_HOME%\lib\javax.activation-api-1.2.0.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\jboss-jaxrs-api_2.1_spec-1.0.0.Final.jar;%APP_HOME%\lib\jboss-jaxb-api_2.3_spec-1.0.0.Final.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-annotations-api_1.2_spec-1.0.0.Final.jar;%APP_HOME%\lib\activation-1.1.1.jar;%APP_HOME%\lib\httpclient-4.5.4.jar;%APP_HOME%\lib\commons-io-2.5.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\javax.json.bind-api-1.0.jar;%APP_HOME%\lib\jackson-jaxrs-1.9.13.jar;%APP_HOME%\lib\jackson-xc-1.9.13.jar;%APP_HOME%\lib\jackson-mapper-asl-1.9.13.jar;%APP_HOME%\lib\jackson-core-asl-1.9.13.jar;%APP_HOME%\lib\jaxb-core-2.3.0.jar;%APP_HOME%\lib\jaxb-impl-2.3.0.jar;%APP_HOME%\lib\httpcore-4.4.7.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\guava-25.1-android.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-compat-qual-2.0.0.jar;%APP_HOME%\lib\error_prone_annotations-2.1.3.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar

@rem Execute RestEasyDemo
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %REST_EASY_DEMO_OPTS%  -classpath "%CLASSPATH%" demo.demo %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable REST_EASY_DEMO_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%REST_EASY_DEMO_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
