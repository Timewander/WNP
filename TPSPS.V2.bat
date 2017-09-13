@echo off

echo ==========================================================================
echo #                                                                        #
echo #      *        ©°©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©´       ***     #
echo #     * *       ©¦  Third Part Supporting Proxy Server  ©¦       * *     #
echo #    *   *      ©À©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©È       * *     #
echo #   *** ***     ©¦        Provided by Timewander        ©¦     *** ***   #
echo #     * *       ©À©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©È      *   *    #
echo #     * *       ©¦             Version 2.5              ©¦       * *     #
echo #     ***       ©¸©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¼        *      #
echo #                                                                        #
echo ==========================================================================
echo Press any key to start up ...
pause>nul
cd C:\WNP\php7
start /b php-cgi -b 127.0.0.1:9000 -c php.ini
start /b php-cgi -b 127.0.0.1:9009 -c php.ini
start /b php-cgi -b 127.0.0.1:9090 -c php.ini
start /b php-cgi -b 127.0.0.1:9900 -c php.ini
echo FastCGI setup ready.
cd C:\WNP
start /b KeepAlive.exe
echo WScript.sleep 2000 > sleep.vbs
cd C:\Windows\System32
Wscript C:\WNP\sleep.vbs
echo Chrome setup ready.
cd C:\WNP
echo WScript.sleep 200 > sleep.vbs
start Server
cd C:\WNP\nginx
start /b nginx
echo Server setup ready.
cd C:\Program Files (x86)\Google\Chrome\Application
chrome --app=http://localhost/client.php
chrome --app=http://localhost/client.php
chrome --app=http://localhost/client.php
chrome --app=http://localhost/client.php
echo Client setup ready.
echo The TPSPS is Running now ...
echo Press any key to shut down ...
pause>nul
cd C:\WNP\nginx
nginx -s stop
cd C:\Windows\System32
taskkill /f /im chrome.exe>nul
taskkill /f /im KeepAlive.exe>nul
taskkill /f /im php-cgi.exe>nul