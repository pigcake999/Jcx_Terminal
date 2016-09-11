@echo off
cls
title Jcx Terminal 1.0
goto begin

:begin
color 07
echo                                      `.-:::-.                                  
echo                                 `/oyyyssssssyyys+-                             
echo                               :syooooooooooooooooyy+`                          
echo                             :ysoooooooooooooooooooooho`                        
echo                           `syoooooooooooooooooooooooosh-                       
echo                          `hsoooooooooooooooooooooooooood:                      
echo                          ysooooosyyyyyyyyyyyyyyyyyysooood.                     
echo                         -dooooooMMMMMMMMMMMMMMMMMMMMoooosy                     
echo                         oyooooooMmddmMMMMMMMMMMMMMMMsoooom                     
echo                         ssooooooMMMMMMMMMMMMMMMMMMMMsoooom                     
echo                         +yooooooMMMMMMMMMMMMMMMMMMMMsoooom                     
echo                         .mooooooMMMMMMMMMMMMMMMMMMMMsoooys                     
echo                          oyooooomMMMMMMMMMMMMMMMMMMmooood`                     
echo                           syoooooooooooooooooooooooooood.                      
echo                            +hooooooooooooooooooooooooyy`                       
echo                             .shoooooooooooooooooooosh/                         
echo                               .oyyoooooooooooooosys:                           
echo                                  -+syyyysssyyyso:`                             
echo                                       `....`                                   
echo.
echo Jcx Terminal 1.0
pause
goto menu

:menu
cls
title Menu - Jcx Terminal
color 0a
echo -- Menu --
echo.
echo 1. Begin
echo 2. About
echo 3. Quit
set /p num=

if %num% == 1 goto terminal
if %num% == 2 goto about
if %num% == 3 exit

goto menu

:terminal
color 07
cls
goto command

:command
set /p action=

if %action% == end goto menu
if %action% == system goto details
if %action% == newvar goto newvar

%action%
goto command

:about
cls
color 17
title About
echo About Jcx Terminal 1.0
echo.
echo.
echo Developed by IPLO
echo Credits to: Christian Barton Randall
echo.
echo Version: 1.0
echo Github Project
pause > nul
goto menu

:details
title About
echo Developed by IPLO
echo Credits to: Christian Barton Randall
echo.
echo Version: 1.0
echo Github Project
pause > nul
goto command

:newvar
echo var vname?
set /p name=
echo var content?
set /p setto=
set /a %vname%=%setto%