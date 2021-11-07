@echo off
:CONF
MODE 35,10
COLOR 3F
CLS
title CONFUGURAR INAZSTALA€วO
color 3f
echo.
echo อออออออออออออออออออออออออออออออ
echo    CONFIGURAR INSTALA€วO
echo อออออออออออออออออออออออออออออออ
ECHO.
echo  ( A ) CONFIGURA€วO INICIAL
echo  ( B ) CONFIGURA€วO FINAL
echo  ( C ) CRIAR ARQUIVOS .BAT
echo  ( D ) LIMPAR ARQUIVOS .BAT
echo  ( E ) CONFIGURA€วO MBR_UEFI
echo  ( F ) VER O QUE ESTA RODANDO
 choice /C ABCDEF /N
 IF %errorlevel%==6 goto VQER
 IF %errorlevel%==5 goto mbruefi
 IF %errorlevel%==4 goto DEL 
 IF %errorlevel%==3 goto MK
 IF %errorlevel%==2 goto END
 IF %errorlevel%==1 goto BEGIN

::=====menu finalizando instala็ใo========

@echo off
:END
MODE 35,20
COLOR 3F
CLS
title FINALIZANDO A INSTALA€วO
color 3f
echo.
echo อออออออออออออออออออออออออออออออ
echo    FINALIZANDO A INSTALA€วO 
echo อออออออออออออออออออออออออออออออ
ECHO.
echo  ( A ) BCDEDIT 
echo  ( B ) PROTECAO DO SISTEMA
echo  ( C ) GPEDIT
echo  ( D ) MSCONFIG
echo  ( E ) FIREWALL
echo  ( F ) SERVI€OS
echo  ( G ) LIMPAR
echo  ( H ) PAINEL DE CONTROLE
echo  ( I ) FAZER BKUP
echo  ( J ) INF DO SISTEMA
echo  ( K ) CRIAR ARQUIVOS.BAT
echo  ( L ) LIMPAR ARQUIVOS.BAT
echo  ( M ) VOLTAR

echo.
 choice /C ABCDEFGHIJKLM /N
 IF %errorlevel%==13 goto CONF
 IF %errorlevel%==12 goto DEL
 IF %errorlevel%==11 goto MK
 IF %errorlevel%==10 goto IN
 IF %errorlevel%==9 goto BKUP
 IF %errorlevel%==8 goto TRAV
 IF %errorlevel%==7 goto LIMP
 IF %errorlevel%==6 goto SERV
 IF %errorlevel%==5 goto FIREW
 IF %errorlevel%==4 goto MSC
 IF %errorlevel%==3 goto GPE
 IF %errorlevel%==2 goto PROTEC
 IF %errorlevel%==1 goto BCD
::aฦo
:BCD
bcdedit /set {default} recoveryenabled no 
goto END

:PROTEC
SystemPropertiesProtection
goto END

:GPE
gpedit.msc
goto END

:MSC
msconfig
goto END

:FIREW
WF.msc
goto END

:TRAV
control
goto END

:BKUP
sdclt.exe 
goto END

:SERV
services.msc 
goto END


:LIMP
START TEMP 
START %TEMP% 
START  PREFETCH 
CD C:\Windows\System32  
START cleanmgr.exe  
START defrag.exe  
goto END  


exit /b
services.msc > servicos.bat 
sdclt.exe > bkup.bat
winver.exe >versao do windws.bat

GOTO END
 
:IN
CLS
title Verificando Sistema..
setlocal enabledelayedexpansion
color 0b
if not exist "%temp%\system" (md "%temp%\system")
if not exist "%temp%\system\info.log" (
:update
cls
title Verificando Sistema...
systeminfo > "%temp%\system\info.log"
)

::BUSCAR VERSรO DO SISTEMA
findstr /c:"Nome do sistema operacional:" "%temp%\system\info.log" > "%temp%\system\log.inf"
for /f "tokens=7" %%V in (%temp%\system\log.inf) do (set ver=%%V)
for /f "tokens=8" %%V in (%temp%\system\log.inf) do (set ver2=%%V)

::BUSCAR IDIOMA DO SISTEMA
findstr /c:"Localidade do sistema:" "%temp%\system\info.log" > "%temp%\system\log.inf"
for /f "tokens=4" %%I in (%temp%\system\log.inf) do (set idioma=%%I)

::BUSCAR DATA DA INSTALAวรO
findstr /c:"Data da instalaฦo original:" "%temp%\system\info.log" > "%temp%\system\log.inf"
for /f "tokens=5" %%D in (%temp%\system\log.inf) do (
set data=%%D
set data=!data:,=!
)

::BUSCAR HORA DA INSTALAวรO
findstr /c:"Data da instalaฦo original:" "%temp%\system\info.log" > "%temp%\system\log.inf"
for /f "tokens=6" %%H in (%temp%\system\log.inf) do (set hora=%%H)

::BUSCAR MEMำRIA RAM
findstr /c:"Memขria fกsica total:" "%temp%\system\info.log" > "%temp%\system\log.inf"
for /f "tokens=4" %%M in (%temp%\system\log.inf) do (
set mem=%%M
set mem=!mem:.=!
set /a ram= !mem! / 1000
)

::INFORMAวีES EXTRAS DA MEMำRIA RAM
wmic memorychip get speed > "%temp%\system\wmic"
type "%temp%\system\wmic" > "%temp%\system\log.inf"
for /f "skip=1 tokens=1" %%S in (%temp%\system\log.inf) do (set speed=%%S)
set speed=%speed: =%

::CHECAR ARQUITETURA 64/32BITS
if exist "%programfiles(x86)%" (set based=64 BITS) else (set based=32 BITS)

::BUSCAR PROCESSADOR
wmic cpu get name > "%temp%\system\wmic"
type "%temp%\system\wmic" > "%temp%\system\log.inf"
for /f "skip=1 tokens=*" %%P in (%temp%\system\log.inf) do (set cpu=%%P)

::NUCLEOS DO PROCESSADOR
wmic cpu get NumberOfCores > "%temp%\system\wmic"
type "%temp%\system\wmic" > "%temp%\system\log.inf"
for /f "skip=1 tokens=1" %%N in (%temp%\system\log.inf) do (set nucleo=%%N)

wmic cpu get NumberOfLogicalProcessors > "%temp%\system\wmic"
type "%temp%\system\wmic" > "%temp%\system\log.inf"
for /f "skip=1 tokens=1" %%N in (%temp%\system\log.inf) do (set nucleo2=%%N)

:: NฺCLEOS TOTAIS
set /a cores=nucleo + nucleo2

::SOCKET
wmic cpu get SocketDesignation > "%temp%\system\wmic"
type "%temp%\system\wmic" > "%temp%\system\log.inf"
for /f "skip=1 tokens=*" %%S in (%temp%\system\log.inf) do (set socket=%%S)

::BUSCAR FABRICANTE MOBO
wmic baseboard get manufacturer > "%temp%\system\wmic"
type "%temp%\system\wmic" > "%temp%\system\log.inf"
for /f "skip=1 tokens=*" %%m in (%temp%\system\log.inf) do (set fab=%%m)

::MODELO PLACA MรE
wmic baseboard get product > "%temp%\system\wmic"
type "%temp%\system\wmic" > "%temp%\system\log.inf"
for /f "skip=1 tokens=1" %%N in (%temp%\system\log.inf) do (set model=%%N)

:: BIOS DA MOBO
wmic bios get manufacturer > "%temp%\system\wmic"
type "%temp%\system\wmic" > "%temp%\system\log.inf"
for /f "skip=1 tokens=*" %%B in (%temp%\system\log.inf) do (set bios=%%B)

title Dados Coletados
mode 75,40
echo.
echo     ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ             Coleta de informaไes                                 บ
echo     ศอหอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo       ณ
echo      ฺด
echo      ณภยฤ Processador (CPU): %cpu%
echo      ณ ณ
echo      ณ รฤฤฤ Cores reais: %nucleo%
echo      ณ ณ 
echo      ณ ภฤยฤ Cores totais: %cores%
echo      ณ   ณ
echo      ณ   ภฤฤฤ Socket: %socket% 
echo      ณ
echo     ฺด
echo     ณภฤยฤฤ Placa Mฦe: %fab% / Modelo: %model%
echo     ณ  ณ
echo     ณ  ภฤฤ BIOS: %bios%
echo     ณ
echo    ฺด
echo    ณภฤยฤฤ Memขria RAM: %ram%GB
echo    ณ  ณ
echo    ณ  ภฤฤ Clock: %speed%Mhz
echo    ณ
echo   ฺด  
echo   ณภฤฤฤ Versฦo Instalada: Windows %ver% %ver2% / %based%
echo   ณ
echo   ภฤฤยฤ Idioma Sistema: %idioma%
echo      ณ
echo     ฺมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
echo     ณ  Sistema instalado dia: %data%  s %hora% Horas  ณ
echo     ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
echo.
echo          PARA INSERIR AS INFORMA€ๅES NO SISTEMA
echo          EXECUTE O ARQUIVO DE REGISTRO
echo          CRIADO COMO ADIMINISTRADOR
echo.
PAUSE

CLS
:INSERT
title INSERINDO DADOS
MODE 35,10
color 3f
echo.
echo อออออออออออออออออออออออออออออออ
echo    INSERIR DADOS NO SISTEMA 
echo อออออออออออออออออออออออออออออออ
ECHO.
echo  ( A ) ALTOMตTICO 
echo  ( B ) EDITAR AS INFORM€ๅES 
echo  ( C ) VOLTAR PRO INICIO
echo.
 choice /C ABC /N

 IF %errorlevel%==3 goto END
 IF %errorlevel%==2 goto EDIT
 IF %errorlevel%==1 goto ALT

:ALT
CLS

mode 60,20
CLS
echo อออออออออออออออออออออออออออออออ
echo    %username%-PC
echo อออออออออออออออออออออออออออออออ
echo.
echo Tecnico    : AIRTON
echo.
echo Atendimento: 8:00 AS 17:00
echo.
echo Telefone   : (87) 9 9664 0162
echo.
echo Site suport: https://williamazaradoprogramas.blogspot.com/
echo.
echo อออออออออออออออออออออออออออออออ
echo    INSERIR DADOS NO SISTEMA 
echo อออออออออออออออออออออออออออออออ
ECHO.
echo  ( A ) SIM
echo  ( B ) EDITAR AS INFORM€ๅES 
echo  ( C ) VOLTAR
echo.
 choice /C ABC /N

 IF %errorlevel%==3 goto INSERT
 IF %errorlevel%==2 goto EDIT
 IF %errorlevel%==1 goto CNT
:CNT
echo Windows Registry Editor Version 5.00 >%username%.reg
echo. >>%username%.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation] >>%username%.reg
echo "Manufacturer"="%fab% / TEC.:AIRTON" >>%username%.reg
echo "Model"="%model% / MANUTENวรO: AIRTON " >>%username%.reg
echo "SupportHours"="8:00 AS 17:00 Hrs" >>%username%.reg
echo "SupportPhone"="(87) 9 99664 0162" >>%username%.reg
echo "Logo"="C:\\Users\\wyzard\\Desktop\\colocando informa็ใo no sistema\\logo.bmp" >>%username%.reg
echo "SupportURL"="https://williamazaradoprogramas.blogspot.com/" >>%username%.reg 

start %username%.reg
ping localhost -n 6 >nul
control.exe system
ping localhost -n 6 >nul
DEL /Q %username%.reg
GOTO END

:EDIT
color 3f
MODE 35,10
title INSERIR INFORMA€วO NO SISTEMA
echo.
echo อออออออออออออออออออออออออออออออ
echo    NOME DO TECNICO
echo อออออออออออออออออออออออออออออออ
echo.
set /p TEC="TECNICO: "
CLS
color 3f
title INSERIR INFORMA€วO NO SISTEMA
echo.
echo อออออออออออออออออออออออออออออออ
echo    HORARIO DE ATENDIMENTO
echo อออออออออออออออออออออออออออออออ
echo.
set /p HR="ATENDIMENTO: "
CLS
color 3f
title INSERIR INFORMA€วO NO SISTEMA
echo.
echo อออออออออออออออออออออออออออออออ
echo    TELEFONE PARA SUPORTE
echo อออออออออออออออออออออออออออออออ
echo.
set /p TEL="TELEFONE: "
CLS
color 3f
title INSERIR INFORMA€วO NO SISTEMA
echo.
echo อออออออออออออออออออออออออออออออ
echo    SITE PARA SUPORTE
echo อออออออออออออออออออออออออออออออ
echo.
set /p URL="SITE: "
ping localhost -n 2 >nul
mode 50,20
CLS
echo อออออออออออออออออออออออออออออออ
echo    %username%-PC
echo อออออออออออออออออออออออออออออออ
echo.
echo Tecnico    : %TEC%
echo.
echo Atendimento: %HR%
echo.
echo Telefone   : %TEL%
echo.
echo Site suport: %URL%
echo.
echo อออออออออออออออออออออออออออออออ
echo    INSERIR DADOS NO SISTEMA 
echo อออออออออออออออออออออออออออออออ
ECHO.
echo  ( A ) SIM
echo  ( B ) EDITAR AS INFORM€ๅES 
echo  ( C ) VOLTAR
echo.
 choice /C ABC /N

 IF %errorlevel%==3 goto INSERT
 IF %errorlevel%==2 goto EDIT
 IF %errorlevel%==1 goto CONT

::===============ARQUIVO REG =====================
:CONT
echo Windows Registry Editor Version 5.00  >%username%.reg
echo.  >>%username%.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation] >>%username%.reg
echo "Manufacturer"="%cpu% / TEC.:%TEC%" >>%username%.reg
echo "Model"="%model% / MANUTENวรO: %TEC%" >>%username%.reg
echo "SupportHours"="%HR%" >>%username%.reg
echo "SupportPhone"="%TEL%" >>%username%.reg
echo "Logo"="C:\Windows\System32/logo.bmp" >>%username%.reg
echo "SupportURL"="%URL%" >>%username%.reg

start %username%.reg
ping localhost -n 6 >nul
control.exe system
ping localhost -n 6 >nul
del /q %username%.reg
goto END


::=======MENU DE CONFIGURA€วO INICIAL=====

:BEGIN
@echo off
MODE 35,20
COLOR 3F

CLS
title INICIO DA INSTALA€วO
color 3f
echo.
echo อออออออออออออออออออออออออออออออ
echo    INICIO DA INSTALA€วO
echo อออออออออออออออออออออออออออออออ
ECHO.
echo  ( A ) CONTROLE WUAC
echo  ( B ) PERFORMANCE DO PC
echo  ( C ) GERENCIADOR DE DISPOSITIVOS
echo  ( D ) REDE
echo  ( E ) NOME DO PC
echo  ( F ) PROPRIEDADE AVAN€ADA
echo  ( G ) PROPRIEDADE PC
echo  ( H ) CRIAR ARQUIVOS.BAT
echo  ( I ) LIMPAR ARQUIVOS.BAT
echo  ( J ) VOLTAR

 choice /C ABCDEFGHIJ /N
 IF %errorlevel%==10 goto CONF
 IF %errorlevel%==9 goto DEL
 IF %errorlevel%==8 goto MK
 IF %errorlevel%==7 goto propc
 IF %errorlevel%==6 goto proadvanc
 IF %errorlevel%==5 goto pcname
 IF %errorlevel%==4 goto hard
 IF %errorlevel%==3 goto disp
 IF %errorlevel%==2 goto perf
 IF %errorlevel%==1 goto controle





pause
:controle

UserAccountControlSettings
goto BEGIN

:perf
SystemPropertiesPerformance
goto BEGIN

:disp
devmgmt.msc
goto BEGIN

:hard
ncpa.cpl
goto BEGIN

:pcname
SystemPropertiesComputerName
goto BEGIN

:proadvanc
SystemPropertiesAdvanced
goto BEGIN

:propc
control.exe system
goto BEGIN

:MK
IF %errorlevel%==11 goto MK2

echo control.exe system > propriedades_pc.bat
echo SystemPropertiesAdvanced > propridades_avancadas.bat 
echo SystemPropertiesComputerName > nome_do_pc.bat
echo ncpa.cpl > rede.bat
echo devmgmt.msc > gereciador_de_dispositivo.bat
echo SystemPropertiesPerformance > performance.bat
echo UserAccountControlSettings > controle_WUAC.bat
echo SystemPropertiesRemote > assistencia_remota.bat
echo SystemPropertiesDataExecutionPrevention > prevenฦo.bat
::limpar
echo del /q assistencia_remota.bat >limpar.bat
echo del /q propriedades_pc.bat >>limpar.bat
echo del /q controle_WUAC.bat >>limpar.bat
echo del /q gereciador_de_dispositivo.bat >>limpar.bat
echo del /q rede.bat >>limpar.bat
echo del /q nome_do_pc.bat >>limpar.bat
echo del /q performance.bat >>limpar.bat
echo del /q prevenฦo.bat >>limpar.bat
echo del /q propridades_avancadas.bat >>limpar.bat
echo del /q limpar.bat >>limpar.bat

IF %errorlevel%==3 goto MK2
goto BEGIN


:MK2

echo control.exe system >PROPRIEDADES_PC.bat
echo bcdedit /set {default} recoveryenabled no>BCDEDI.bat
echo SystemPropertiesProtection >PROTEGER_SISTEMA.bat
echo gpedit.msc>GPEDIT.bat
echo msconfig>MSCONF.bat
echo WF.msc>firewall.bat
echo control>painel.bat
echo sdclt.exe >bkup.bat
echo services.msc>servios.bat
echo winver.exe >versฦo_do_windws.bat
::limpesa_do_pc
echo @echo off >limpesa_do_pc.bat
echo START TEMP >>limpesa_do_pc.bat 
echo START %TEMP%  >>limpesa_do_pc.bat
echo START  PREFETCH >>limpesa_do_pc.bat 
echo CD C:\Windows\System32 >>limpesa_do_pc.bat  
echo START cleanmgr.exe >>limpesa_do_pc.bat  
echo START defrag.exe  >>limpesa_do_pc.bat 
echo exit /b   >>limpesa_do_pc.bat

::limpar
echo del /q PROPRIEDADES_PC.bat >>limpar.bat
echo del /q BCDEDI.bat >>limpar.bat
echo del /q PROTEGER_SISTEMA.bat >>limpar.bat
echo del /q GPEDIT.bat >>limpar.bat
echo del /q MSCONF.bat >>limpar.bat
echo del /q firewall.bat >>limpar.bat
echo del /q painel.bat >>limpar.bat
echo del /q bkup.bat >>limpar.bat
echo del /q versฦo_do_windws.bat >>limpar.bat
echo del /q limpesa_do_pc.bat >>limpar.bat
echo del /q servios.bat >>limpar.bat
echo del /q limpar.bat >>limpar.bat
echo exit /b >>limpar.bat

IF %errorlevel%==3 goto CONF
goto END


:DEL

del /q propriedades_pc.bat
del /q assistencia_remota.bat
del /q controle_WUAC.bat
del /q gereciador_de_dispositivo.bat
del /q rede.bat
del /q nome_do_pc.bat
del /q performance.bat
del /q prevenฦo.bat
del /q propridades_avancadas.bat
del /q limpar.bat

IF %errorlevel%==4 goto DEL2

goto BEGIN


:DEL2
del /q PROPRIEDADES_PC.bat
del /q BCDEDI.bat
del /q PROTEGER_SISTEMA.bat 
del /q GPEDIT.bat 
del /q MSCONF.bat 
del /q firewall.bat 
del /q painel.bat 
del /q bkup.bat
del /q versฦo_do_windws.bat
del /q limpesa_do_pc.bat
del /q servios.bat
del /q limpar.bat

IF %errorlevel%==4 goto CONF 
GOTO END
 
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
 IF %errorlevel%==6 goto CONF
 IF %errorlevel%==5 goto ddin 
 IF %errorlevel%==4 goto atl
 IF %errorlevel%==3 goto fix
 IF %errorlevel%==2 goto rep
 IF %errorlevel%==1 goto atV
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
echo ===========================
echo fixar o MBR 
echo ===========================

bootrec /fixmbr
bootrec /fixboot
bootrec /rebuildbcd

goto mbruefi
:VQER
color 0a
mode con lines=50 cols=86
echo date /t >executando.txt
tasklist >>executando.txt
type executando.txt
del /f /q executando.txt
pause>nul
goto CONF

goto END