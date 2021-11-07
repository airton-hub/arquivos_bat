@echo off
:NET
Color 3F
title APAGAR ARQUIVOS DE IMPRESSAO
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  APAGAR ARQUIVOS DE IMPRESSORA
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE A OPCAO DO SISTEMA INSTALADO
echo.
echo     WINDOS 7  ( 7 )
echo.
echo     WINDOS 8  ( 8 ) 
echo.
echo     WINDOS XP  ( XP )
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p fg=
if %fg% equ 7 goto W7
if %fg% equ 8 goto W8
if %fg% equ XP goto XP
echo MsgBox " CAPS LOOK DESLIGADO COMANDO [ %fg% ] NรO ACEITO  ",vbOKOnly + vbInformation, "ERRO DE DIGITAวรO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto NET

:W7

::echo Interrompendo o Spooler
net stop spooler
::pauseecho Acessando a pasta de impressoras
cd %systemroot%\system32\spool\PRINTERS
::echo Deletando os arquivos SHD
del /f /s *.shd
::echo Deletando os arquivos SPL
del /f /s *.spl
::echo Iniciando o Spooler
net start spooler

echo MsgBox " ARQUIVOS EXCLUDOS COM SUCESSO !!!! ",vbOKOnly + vbInformation, "ARQUIVOS EXCLUIDOS" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto NET

:W8

::echo Interrompendo o Spooler
net stop spooler
::pauseecho Acessando a pasta de impressoras
cd %systemroot%\system32\spool\PRINTERS
::echo Deletando os arquivos SHD
del /f /s *.shd
::echo Deletando os arquivos SPL
del /f /s *.spl
::echo Iniciando o Spooler
net start spooler

echo MsgBox " ARQUIVOS EXCLUDOS COM SUCESSO !!!! ",vbOKOnly + vbInformation, "ARQUIVOS EXCLUIDOS" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto NET

:XP

net stop spooler
cd %systemroot%\system32\spool\PRINTERS
del /f /s *.SHD
del /f /s *.SPL
net start spooler

echo MsgBox " ARQUIVOS EXCLUDOS COM SUCESSO !!!! ",vbOKOnly + vbInformation, "ARQUIVOS EXCLUIDOS" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto NET