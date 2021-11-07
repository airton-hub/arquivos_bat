@echo off
color 0a
%systemdrive%
mode con lines=22 cols=86
start ::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ    
echo              USUARIO // %username%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:
echo:
echo:
echo   VEJA QUAL A LETRA DO HD 
echo:
echo   QUE DESEJA VERICAR 
echo:
echo   E DIGITE-A NA GUIA ABAIXO
echo:
echo  COPIAR CODIGO=diskdrive get status
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p disk="LETRA DO HD PARA VERIFICAR: "
echo:
@ECHO ON
%disk%:
@echo off
ping localhost -n 2 >nul
wmic

diskdrive get status