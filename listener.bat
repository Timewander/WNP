@echo off

echo ==========================================
echo ������������������������������������������
echo ��             TPSPS Server             ��
echo ������������������������������������������
echo ==========================================
echo Please keep this terminal until shut down.

:main
cd c:\windows\system32
netstat -ano|findstr ".*:9000\>"|find /i /c "LISTENING" > c:\wnp\process
set /p count=<c:\wnp\process
if %count% LEQ 1 (goto restart1)
netstat -ano|findstr ".*:9009\>"|find /i /c "LISTENING" > c:\wnp\process
set /p count=<c:\wnp\process
if %count% LEQ 1 (goto restart2)
netstat -ano|findstr ".*:9090\>"|find /i /c "LISTENING" > c:\wnp\process
set /p count=<c:\wnp\process
if %count% LEQ 1 (goto restart3)
netstat -ano|findstr ".*:9900\>"|find /i /c "LISTENING" > c:\wnp\process
set /p count=<c:\wnp\process
if %count% LEQ 1 (goto restart4)
del c:\wnp\process
goto sleep

:restart1
start /b c:\wnp\cgi1.bat > nul
echo %time% cgi 9000 restart
goto sleep

:restart2
start /b c:\wnp\cgi2.bat > nul
echo %time% cgi 9009 restart
goto sleep

:restart3
start /b c:\wnp\cgi3.bat > nul
echo %time% cgi 9090 restart
goto sleep

:restart4
start /b c:\wnp\cgi4.bat > nul
echo %time% cgi 9900 restart
goto sleep

:sleep
cd c:\windows\system32
Wscript c:\wnp\sleep.vbs
goto main