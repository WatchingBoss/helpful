@echo off

rem Jetbrains IDEs
del %HOME%\.PyCharm2019.3\config\eval\*.key
echo PyCharm's trial reseted
del %HOME%\.WebStorm2019.3\config\eval\*.key
echo WebStrom's trial reseted

rem Proxifier
taskkill /f /im Proxifier.exe
reg delete "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v DefaultWANProfile /f
reg delete "HKCU\Software\Initex\ProxyChecker\Settings" /v DefaultWANProfile /f
reg delete "HKCU\Software\Initex\Proxifier\Settings" /v DefaultWANProfile /f
del %~dp0Settings.old.ini
ren %~dp0Settings.ini Settings.old.ini
type %~dp0Settings.old.ini | findstr /v DefaultWANProfile > %~dp0Settings.ini 
echo Proxifier's trial reseted

echo All Done
