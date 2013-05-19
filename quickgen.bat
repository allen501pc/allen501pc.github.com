@echo off
if "%1"=="isolate" GOTO ISOLATE
if "%1"=="help" GOTO HELP
if ["%1"]==[] GOTO NORMAL

:NORMAL
echo "START GENERATE"
set LANG=zh_TW.UTF-8
set LC_ALL=zh_TW.UTF-8
rake generate

:ISOLATE
set LANG=zh_TW.UTF-8
set LC_ALL=zh_TW.UTF-8
rake isolate[%2]
rake integrate

:HELP
echo COMMAND: quickgen [option]
echo options:
echo    help: To show the help
echo    isolate: To isolate your post and mark the other posts to be not regenerated.
echo    You can type that 'quickgen isolate "Your Post Article" Then this program will just only generate your post html.
echo This bat file is generated by Allen(allen501pc@gmail.com)