@echo off

echo ==========================================
echo ©°©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©´
echo ©¦  Third Part Supporting Proxy Server  ©¦
echo ©À©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©È
echo ©¦        Provided by Timewander        ©¦
echo ©À©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©È
echo ©¦             Version 2.0              ©¦
echo ©¸©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¼
echo ==========================================
echo Press any key to start up ...
pause>nul
cd C:\WNP\php7
start /b php-cgi -b 127.0.0.1:9000 -c php.ini
start /b php-cgi -b 127.0.0.1:9009 -c php.ini
start /b php-cgi -b 127.0.0.1:9090 -c php.ini
start /b php-cgi -b 127.0.0.1:9900 -c php.ini
cd C:\WNP
start Server
cd C:\WNP\nginx
start /b nginx
cd C:\Program Files (x86)\Google\Chrome\Application
chrome --app=http://localhost/client.php
chrome --app=http://localhost/client.php
chrome --app=http://localhost/client.php
chrome --app=http://localhost/client.php
echo The TPSPS is Running now ...
echo Press any key to shut down ...
pause>nul
cd C:\WNP\nginx
nginx -s stop
cd C:\Windows\System32
taskkill /f /im chrome.exe>nul
taskkill /f /im php-cgi.exe>nul