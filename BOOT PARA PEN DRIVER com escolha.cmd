@echo off
set open=start ::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
:boot
cls
color 3f
title BOOT PARA PEN DRIVER
date /t
time /t
echo  USUARIO // %username%
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo        BOOT PARA PEN DRIVER
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    1 = FORMATAR
echo.
echo    2 = COPIAR BOOT
echo.
echo    3 = COPIAR ARQUIVOS 
echo.   
echo    4 = CRIAR PEN DRIVER BOTAVEL      
echo.
echo    5 = CRIAR O ARQUIVO
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo         DIGITE SUA ESCOLHA
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C 12345 /N
if errorlevel == 5 goto MKB
if errorlevel == 4 goto fcba
if errorlevel == 3 goto car
if errorlevel == 2 goto cpb
if errorlevel == 1 goto form

::============formatar=====================

:form
%open%
cls
mode con lines=22 cols=86
echo>list.txt
echo>list.txt list disk
echo on
diskpart -s list.txt
@echo off
ping 127.0.0.1 -n 2 >nul
del /f list.txt
echo para voltar digite ( v )
set /p disco="digite o numero do disco: " 
if %disco% == v goto boot
cls
echo ออออออออออออออออออออออออออออออออออออออออ
color 0a
echo    ESCOLHA O TIPO DE PARTI€วO
echo.
echo     (A) NTFS       (B) FAT32
echo.
echo     (C) VOLTAR     (D) SAIR
echo.
choice /c ABCD /N /T 20 /D C 

if %errorlevel%==4 exit
if %errorlevel%==3 goto boot
if %errorlevel%==2 set part=fat32
if %errorlevel%==1 set part=ntfs
echo:
(
 echo list disk
 echo select disk %disco%
 echo clean
 echo create partition primary
 echo format fs=%part% quick
 echo active
 echo assign
)>move.txt
 echo off
echo:
diskpart -s move.txt
ping -n 3 localhost>nul
del /f move.txt
msg * /w comando [formatar] ok
goto boot 

::============copiar boot=====================
:cpb
%open%
cls
echo para voltar digite ( v )
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO WINDOWS
echo อออออออออออออออออออออออออออ
set /p win="letra do Windows: "
echo:
if %win% == v goto boot 
set win=%win%:
cls

echo para voltar digite ( v )
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO PEN DRIVER
echo อออออออออออออออออออออออออออ
set /p ltpen="letra do pen driver: "
if %ltpen% == v goto boot
set ltpen=%ltpen%:
%win%
cd boot
%win%bootsect /nt60 %ltpen% bootsect
cd..
msg * /w BOOT COPIADO
goto boot
::============copiar arquivos=====================
:car
%open%
cls
echo para voltar digite ( v )
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO WINDOWS
echo อออออออออออออออออออออออออออ
set /p win="letra do Windows: "
echo:
if %win%  == v goto boot
set win=%win%:
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO PEN DRIVER
echo อออออออออออออออออออออออออออ
set /p ltpen="letra do pen driver: "
if %ltpen%  == v goto boot
set ltpen=%ltpen%:
::============mensagem=====================
msg * /w ESSE COMANDO VAI COPIAR OS ARQUIVOS DE [%win%] PARA [%ltpen%]
xcopy %win%*.* /s/e/f %ltpen%
%open%
exit /b
goto boot


slmgr -dli
slmgr -xpr
slmgr -dlv
slmgr /rearm
slmgr /ato (pra ver a chave do windows)
net stop sppsvc
cd C:\windows\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwereProtectionPlatform
rename tokens.data tokens.bar
cd C:%windir%\System32
net start sppsvc
islui.exe


::======================criar pen driver botavel====================
:fcba
cls
::=====formata=============
mode con lines=22 cols=86
echo>list.txt
echo>list.txt list disk
echo on
diskpart -s list.txt
@echo off
del /f list.txt
echo para sair digite ( v )
set /p disco="digite o numero do disco: "  
if %disco% == v goto fim
echo:
(
 echo list disk
 echo select disk %disco%
 echo clean
 echo create partition primary
 echo format fs=fat32 quick
 echo active
 echo assign
)> move.txt
echo off
echo:
diskpart -s move.txt
ping -n 3 localhost>nul
del /f move.txt
::=====copia o boot=======
%open%
echo.
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO WINDOWS
echo อออออออออออออออออออออออออออ
set /p win="letra do Windows: "
set win=%win%:
echo:
%open%
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO PEN DRIVER
echo อออออออออออออออออออออออออออ
set /p ltpen="letra do pen driver: "
set ltpen=%ltpen%:
@ECHO ON
%win%
cd boot
%win%bootsect /nt60 %ltpen% 
cd..
::=====copia os arquivos====
xcopy %win%*.* /s/e/f %ltpen%
msg *  TODOS OS ARQUIVOS DE [%win%] FORAM COPIADOS PARA [%ltpen%]
exit /b
goto boot

:fim

goto boot

:MKB

(
 echo @echo off
 echo :pen
 echo set open=start ::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
 echo color 0A
 echo title CRIAR PEN DRIVER BOOTAVEL
 echo mode con lines=22 cols=86
 echo echo^>list.txt
 echo echo^>list.txt list disk
 echo echo on
 echo diskpart -s list.txt
 echo @echo off
 echo ping -n 2 localhost^>nul
 echo del /f list.txt
 echo color 3f
 echo set /p disco="digite o numero do disco: " 
 echo cls
 echo echo ออออออออออออออออออออออออออออออออออออออออ
 echo color 0a
 echo echo    ESCOLHA O TIPO DE PARTI€วO
 echo echo.
 echo echo     (A) NTFS       (B) FAT32
 echo echo.
 echo echo     (C) VOLTAR     (D) SAIR
 echo echo.
 echo choice /c ABCD /N /T 20 /D C 
 echo echo:
 echo if %errorlevel%==4 exit
 echo if %errorlevel%==3 goto pen
 echo if %errorlevel%==2 set part=fat32
 echo if %errorlevel%==1 set part=ntfs
 echo echo:
 echo ^(
 echo  echo list disk
 echo  echo select disk %%disco%%
 echo  echo clean
 echo  echo create partition primary
 echo  echo format fs=%%part%% quick
 echo  echo active
 echo  echo assign
 echo ^)^>move.txt
 echo diskpart -s move.txt
 echo ping -n 3 localhost^>nul
 echo del /f move.txt
 echo %%open%%
 echo echo อออออออออออออออออออออออออออ
 echo echo  DIGITE A LETRA DO WINDOWS
 echo echo อออออออออออออออออออออออออออ
 echo set /p win="letra do Windows: "
 echo set win=%%win%%:
 echo CLS
 echo %%open%%
 echo echo อออออออออออออออออออออออออออ
 echo echo  DIGITE A LETRA DO PEN DRIVER
 echo echo อออออออออออออออออออออออออออ
 echo set /p ltpen="letra do pen driver: "
 echo set ltpen=%%ltpen%%:
 echo @ECHO ON
 echo %%win%%
 echo cd boot
 echo %%win%%bootsect /nt60 %%ltpen%%
 echo msg * /w BOOT COPIADO PARA [%%ltpen%%] 
 echo cd..
 echo msg * /w COPIAR TODOS OS ARQUIVOS DE [%%win%%] PARA [%%ltpen%%]?
 echo xcopy %%win%%*.* /s/e/f %%ltpen%%
 echo msg * /w TODOS OS ARQUIVOS DE [%%win%%] FORAM COPIADOS PARA [%%ltpen%%] COM SUCESSO
 echo %%open%%
)>BOOT_PARA_PEN_DRIVER.bat
msg * /w comando [criar arquivo] ok
echo exit /b




