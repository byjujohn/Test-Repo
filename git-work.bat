@ECHO OFF

REM get date and time
for /f "delims=" %%a in ('date/t') do @set mydate=%%a
for /f "delims=" %%a in ('time/t') do @set mytime=%%a
set fvar=%mydate%%mytime%

REM add all new files
call git add .
call git commit -a -m "Test Commit by on %fvar%" 