@echo off
color D

title A Custom IP Pinger

:greeting
cls

ECHO Made by Rushzei            


set /p IP=Enter IP To Ping:
:top
PING -n 1 %IP% | FIND "TTL="
title :: Pinging: %IP% ::
IF ERRORLEVEL 1 (echo Why you no reply???)
set /a num=(%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top