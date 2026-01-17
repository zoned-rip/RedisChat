@echo off
setlocal EnableExtensions

rem Minimal Gradle Wrapper launcher for Windows.
rem Runs the wrapper JAR located at gradle\wrapper\gradle-wrapper.jar

set "APP_HOME=%~dp0"
if "%APP_HOME%"=="" set "APP_HOME=."

set "WRAPPER_JAR=%APP_HOME%gradle\wrapper\gradle-wrapper.jar"
if not exist "%WRAPPER_JAR%" (
  echo Could not find Gradle Wrapper JAR: "%WRAPPER_JAR%" 1>&2
  exit /b 1
)

if defined JAVA_HOME (
  set "JAVA_EXE=%JAVA_HOME%\bin\java.exe"
) else (
  set "JAVA_EXE=java"
)

"%JAVA_EXE%" -classpath "%WRAPPER_JAR%" org.gradle.wrapper.GradleWrapperMain %*
exit /b %ERRORLEVEL%
