@echo off

cd C:\WNP\php7
start /b php-cgi -b 127.0.0.1:9900 -c php.ini
