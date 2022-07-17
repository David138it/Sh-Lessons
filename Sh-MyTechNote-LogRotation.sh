#/bin/bash
#Создать bat скрипт для ротации логов, и не только логов, но и любых файлов. Автоматическое переименование и удаление осуществляется, если файл достигнет заданного размера
@echo off
set file=query.log
set path=»c:\logs\»
set maxbytesize=268436480
set filescount=7
cd %path%
for /F «usebackq» %%A in (‘%file%’) do set size=%%~zA
if %size% LSS %maxbytesize% (
echo «we should do nothing»
) else (
-----setlocal ENABLEDELAYEDEXPANSION
-----set /a j=%filescount%-1
-----del /f /q %file%.%filescount%
-----for /l %%i in (!j!,-1,0) do (
----------set /a k=%%i+1
----------ren %file%.%%i %file%.!k!
-----)
-----endlocal
-----ren %file% %file%.0
)