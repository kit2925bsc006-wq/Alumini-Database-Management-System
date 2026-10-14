@echo off
if not exist bin mkdir bin
javac -encoding UTF-8 -cp "lib\sqlite-jdbc-3.47.1.0.jar" -d bin src\com\alumni\model\Alumni.java src\com\alumni\db\DBConnection.java src\com\alumni\dao\AlumniDAO.java src\com\alumni\service\AlumniService.java src\com\alumni\AlumniApp.java
if %ERRORLEVEL% EQU 0 (
  echo Compile successful.
) else (
  echo Compile failed.
)
