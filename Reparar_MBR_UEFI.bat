@echo off
:mbruefi
title REBUILD MBR & UEFI
mode 35,15
color 3f
echo อออออออออออออออออออออออออออออออ
echo      INSTALA€วO MBR E UEFI
echo อออออออออออออออออออออออออออออออ
ECHO.
echo  ( A ) ATIVAR VOLUMES
echo  ( B ) REPARAR MBR
echo  ( C ) FIXAR MBR
echo  ( D ) ATRIBUIR LETRA
echo  ( R ) DEPOIS DO INICIO
echo  ( v ) VOLTAR

choice /c ABCDRV /N
 IF errorlevel=6 goto mbruefi
 IF errorlevel=5 goto ddin 
 IF errorlevel=4 goto atl
 IF errorlevel=3 goto fix
 IF errorlevel=2 goto rep
 IF errorlevel=1 goto atV
pause
ping localhost -n 2 >nul
exi
:atv
::===========================
::ativar volume
::===========================

@echo off
color 0a
mode con lines=22 cols=86
echo>list.txt
echo>list.txt list volume
echo on
diskpart -s list.txt

@echo off
ping localhost -n 2 >nul
del /f list.txt
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo. 
echo.
echo               para ativar o volumesescolha o numero corespondente a ele
echo.
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p disco="digite o vol da instal: " 
 
echo:
echo > move.txt
echo > move.txt list volume
echo >> move.txt select volume %disco%
echo >> move.txt active
echo >> move.txt exit

echo off
echo:
diskpart -s move.txt
ping localhost -n 2 >nul
ping -n 3 localhost>nul

del /f move.txt
ping localhost -n 2 >nul
goto mbruefi

:atl
TITLE ATRIBUIR LETRA

@echo off
color 0a
mode con lines=22 cols=86
echo>list.txt
echo>list.txt list volume
echo on
diskpart -s list.txt
@echo off
ping localhost -n 2 >nul
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo    DIGITE O VOLUME
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p vol="digite o volume  " 
echo>list.txt list disk
echo on
diskpart -s list.txt
ping localhost -n 2 >nul
del /f list.txt
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo    DIGITE O DISCO
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p disco="digite o disco "  
echo:
echo > move.txt
echo > move.txt select disk 0
echo >> move.txt select volume %vol%
echo >> move.txt assign letter=:%disco%
echo >> move.txt exit
echo off
echo:
diskpart -s move.txt
ping localhost -n 2 >nul
ping -n 3 localhost>nul
del /f move.txt
ping localhost -n 2 >nul
goto mbruefi

:rep
echo ===========================
echo reparar MBR
echo ===========================

set /p ltt="letra do disco: "  
cd /d %ltt%:\EFI\Microsoft\Boot\
bootrec /FixBoot
ren BCD BCD.old
ping localhost -n 2 >nul
goto mbruefi

:ddin
echo ===========================
echo depois de reiniciado 
echo ===========================
bcdboot c:\Windows /l en-us /s : All
goto mbruefi

:fix
mode 80,40
echo ===========================
echo fixar o MBR 
echo ===========================

bootrec /fixmbr
bootrec /fixboot
bootrec /rebuildbcd
msg * /w oi
goto mbruefi
