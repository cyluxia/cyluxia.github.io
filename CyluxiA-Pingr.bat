@echo off
color 3
title Pinger
    
echo   .g8"""bg               MM                           db        db      
echo .dP'     `M              MM                                    ;MM:     
echo dM'       ` `7M'   `MF'  MM    MM    MM   7M     MF  7MM      ,V^MM.    
echo MM            VA   ,V    MM    MM    MM    `VA ,V'    MM     ,M  `MM    
echo MM.            VA ,V     MM    MM    MM      XMX      MM     AbmmmqMA   
echo `Mb.     ,'     VVV      MM    MM    MM    ,V' VA.    MM    A'     VML  
echo   `"bmmmd'      ,V       MML.  `Mbod"YM   AM     MA   MML  AM       MM
echo                ,V                                                       
echo              OOb"                                                        



echo                  ________ _____                          
echo                  ___  __ \___(_)_______ _______ _________
echo                  __  /_/ /__  / __  __ \__  __ `/__  ___/
echo                  _  ____/ _  /  _  / / /_  /_/ / _  /    
echo                  /_/      /_/   /_/ /_/ _\__, /  /_/     
echo                                         /____/           
echo       ==============================================================
echo             =              Control+C to Stop                =
echo       ==============================================================

set /p IP=Enter IP:
:top
PING -n 1 %Ip% | FIND "TTL="
title :: Pinging: %Ip% ::
IF ERRORLEVEL 1 (echo IP downed)
set /a num=(%Random%%%9)+1
color %num%
ping -t 1 0 10 127.0.0.1 >nul
Goto top
