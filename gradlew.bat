@rem Gradle startup script for Windows
@if "%DEBUG%" == "" @echo off
@rem Set local scope for variables
setlocal
set DIRNAME=%~dp0
set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1 || ( echo ERROR: JAVA_HOME is not set. & exit /b 1 )
%JAVA_EXE% -classpath "%DIRNAME%gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
endlocal
