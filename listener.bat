@echo off

echo ==========================================
echo ©°©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©´
echo ©¦             TPSPS Server             ©¦
echo ©¸©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¼
echo ==========================================
echo Please keep this terminal until shut down.

set divide=10000

:loop
set /a port=9000 / %divide% + 9000
if %divide% LEQ 10 (set divide=10000) else (set /a divide=%divide% / 10)
cd c:\windows\system32
Wscript c:\wnp\sleep.vbs
netstat -ano | findstr ".*:%port%\>" | find /i /c "LISTENING" > c:\wnp\process
set /p count=<c:\wnp\process
del c:\wnp\process
if %count% GTR 1 (goto loop)

cd C:\WNP\php7
start /b php-cgi -b 127.0.0.1:%port% -c php.ini
echo %time% cgi %port% start up
goto loop