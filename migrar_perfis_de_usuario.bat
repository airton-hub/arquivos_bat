@echo off
:MIG
set l=echo อออออออออออออออออออออออออออออออ
CLS
MODE 40,10
COLOR 3F
title MIGRAR PERFIL DE USUARIO
color 3f
echo.
%l%
echo    MIGRAR PERFIL DE USUตRIO
%l%
echo.
echo  ( A ) ATIVAR CONTA ADM
echo  ( B ) DESATIVAR CONTA ADM
echo  ( C ) COPIAR ARQUIVOD DE USUARIO
echo  ( D ) REMOVER OS ARQUIVOS DO USUARIO

 choice /C ABCD /N
 IF errorlevel=4 goto REMOV
 IF errorlevel=3 goto COPY
 IF errorlevel=2 goto DESATVADM
 IF errorlevel=1 goto ATVADM


::===============================================
::COMANDOS MS DOS PARA MIGRAR PERFIL DE USUARIO
::===============================================
::1:ATIVAR ADM DO PC

:ATVADM
CLS
MODE 40,10
COLOR 3F
net user
title MIGRAR PERFIL DE USUARIO
color 3f
echo.
%l%
echo    ATIVAR ADM DO PC
%l%
echo.
echo  ( A ) ATIVAR COMO ADMINISTRADOR
echo  ( B ) ATIVAR COMO ADMINISTRATOR
echo  ( C ) VOLTAR
 choice /C ABC /N
 IF errorlevel=3 goto MIG
 IF errorlevel=2 goto ADMTT
 IF errorlevel=1 goto ADMTD
:ADMTD
net user administrador /active:yes
pause >nul
echo net user >ADMINISTRADOR.bat
start ADMINISTRADOR.bat
ping localhost -n 4 >nul
del ADMINISTRADOR.bat /s /q
goto ATVADM
:ADMTT
net user administrator /active:yes
PAUSE >NUL
echo net user >ADMINISTRATOR.bat
start ADMINISTRADOR.bat
ping localhost -n 4 >nul
del ADMINISTRADOR.bat /s /q
goto ATVADM


::=======================================================
::2:copiar arquivos de usuarios
::=======================================================
:COPY
CLS
MODE 40,10
COLOR 3F
%l%
echo  COPIAR OS AQUIVOS DO USUARIO
%l%
echo  ESSE COMANDO VAI
echo  COPIAR TODOS OS ARQUIVOS DO
echo  USUARIO EM "C:\" PARA "D:\" 
echo  QUER PROSSEGUIR ? 
echo. 
echo  (S) SIM  (N) NAO

choice /C SN /N
 IF errorlevel=2 goto MIG
 IF errorlevel=1 goto ROBOCOP

::ENTRA NO PERFIL DE ADM ATIVADO
::ABRE "CMD" 
:ROBOCOP
robocopy "C:\Users" "D:\Users" /I /COPYALL /XJ /R:0
goto MIG

@echo off >Editar_Regedit.txt
echo =======================================================
echo EDITAR O REGEDITE
echo =======================================================
%l%
echo EDITANDO O REGEDIT
%l%
echo ABRA O REGEDIT
echo LOCALIZA A CHAVE PROFILE LIST
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList] 
echo MODIFICA AS CHAVES
echo Dfault
echo ProfileDirectory
echo ProgrameData
echo Public 
echo muda tudo de "c:" para "D:"

pause >nul
::=======================================================
::3:DESATIVAR ADM DO PC
::=======================================================
:DESATVADM
CLS
MODE 40,10
COLOR 3F
title MIGRAR PERFIL DE USUARIO
color 3f
echo.
%l%
echo    DESATIVAR ADM DO PC
%l%
echo.
echo  ( A ) DESATIVAR COMO ADMINISTRADOR
echo  ( B ) DESATIVAR COMO ADMINISTRATOR
echo  ( C ) VOLTAR
 choice /C ABC /N
 IF errorlevel=3 goto MIG
 IF errorlevel=2 goto DESADMTT
 IF errorlevel=1 goto DESADMTD
:DESADMTD
net user administrador /active:NO
pause >nul
echo net user >ADMINISTRADOR.bat
start ADMINISTRADOR.bat
goto DESATVADM
:DESADMTT
net user administrator /active:NO
PAUSE >NUL
echo net user >ADMINISTRATOR.bat
start ADMINISTRATOR.bat
goto DESATVADM
::=======================================================
::REMOVER ARQUIVOS DO USUARIO
::=======================================================
:REMOV
CLS
MODE 40,10
COLOR 3F
%l%
echo  REMOVER OS AQUIVOS DO USUARIO
%l%
echo  ESSE COMANDO VAI
echo  REMOVER TODOS OS ARQUIVOS DO
echo  USUARIO EM "C:\USER" 
echo  QUER PROSSEGUIR ? 
echo. 
echo  (S) SIM  (N) NAO
choice /C SN /N
 IF errorlevel=2 goto MIG
 IF errorlevel=1 goto REM
::=======================================================
::ENTRA NO PERFIL DE ADM ATIVADO
::ABRE "CMD" 
:REM
rmdir "C:\Users" /s /q
goto MIG





