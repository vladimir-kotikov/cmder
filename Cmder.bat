@echo off

SET CMDER_ROOT=%~dp0
if not defined CMDER_CONFIG set CMDER_CONFIG=%~dp0\config

setlocal
set CONEMU_CONFIG="%CMDER_CONFIG%\ConEmu.xml"
:: If ConEmu config not exists in user-defined location, then use default one
if not exist %CONEMU_CONFIG% set CONEMU_CONFIG="%~dp0\config\ConEmu.xml"

start %~dp0/vendor/conemu-maximus5/ConEmu.exe /Icon "%CMDER_ROOT%\icons\cmder.ico" /Title Cmder /LoadCfgFile %CONEMU_CONFIG%
endlocal
