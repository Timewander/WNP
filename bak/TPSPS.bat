@echo off

echo ==========================================
echo ©°©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©´
echo ©¦  Third Part Supporting Proxy Server  ©¦
echo ©À©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©È
echo ©¦        Provided by Timewander        ©¦
echo ©¸©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¼
echo ==========================================
echo Press any key to start up...
pause>nul
cd C:\Program Files (x86)\Google\Chrome\Application
chrome
echo The TPSPS is Running...
echo Press Ctrl+C to turn off
cd C:\WNP\php7
php ../www/script.php
