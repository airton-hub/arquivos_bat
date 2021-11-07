@Echo off
:MIG
set l=echo мммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм
CLS
MODE 40,15
COLOR 3F
title CRIAR MENUS
color 3f
%l:~0,45%
echo           TITULO DA JANELA
%l:~0,45%
echo  здддддддд©
echo  Ё INICIO Ё
echo  цддддддддабддддбддддддддбддддддд©
echo  Ё TAMANHO Ё DA Ё JANELA Ё 40X15 Ё
echo  цдддбдддддаддбдадддддбддаддддддды
echo  Ё A Ё JANELA Ё 50X20 Ё
echo  Ё B Ё JANELA Ё 60X30 Ё
echo  Ё C Ё JANELA Ё 70X40 Ё
echo  Ё D Ё JANELA Ё 80X50 Ё
echo  юдддаддддддддаддддддды
choice /C ABCDE /N /T 20 /D E
 IF errorlevel=5 EXIT
 IF errorlevel=4 goto ATVADM
 IF errorlevel=3 goto DESATVADM
 IF errorlevel=2 goto COPY
 IF errorlevel=1 goto REMOV

:REMOV
CLS
MODE 50,20
COLOR 3F

title JANELA (A) TAMANHO 50X20
color 3f
%l:~0,55%
echo               TITULO DA JANELA
%l:~0,55%
echo  зддддддддбд©
echo  Ё JANELA ЁAЁ
echo  цддддддддабадддбддддддддбддддддд©
echo  Ё TAMANHO Ё DA Ё JANELA Ё 50X20 Ё
echo  цдддбдддддаддбдадддддбддаддддддды
echo  Ё A Ё JANELA Ё 50X20 Ё
echo  Ё B Ё JANELA Ё 60X30 Ё
echo  Ё C Ё JANELA Ё 70X40 Ё
echo  Ё D Ё JANELA Ё 80X50 Ё
echo  юдддаддддддддаддддддды
echo  ( E ) VOLTAR
echo  ( F ) OP6
echo  ( G ) OP7
echo  ( H ) VOLTA
echo.

 choice /C ABCDEFGH /N /T 20 /D E
 IF errorlevel=5 goto MIG
 IF errorlevel=4 goto ATVADM
 IF errorlevel=3 goto DESATVADM
 IF errorlevel=2 goto COPY
 IF errorlevel=1 goto REMOV

:COPY
CLS
MODE 60,30
COLOR 3F
title JANELA (B) TAMANHO 60X30
color 3f
%l:~0,65%
echo                     TITULO DA JANELA
%l:~0,65%
echo  зддддддддбд©
echo  Ё JANELA ЁBЁ
echo  цддддддддабадддбддддддддбддддддд©
echo  Ё TAMANHO Ё DA Ё JANELA Ё 60X30 Ё
echo  цдддбдддддаддбдадддддбддаддддддды
echo  Ё A Ё JANELA Ё 50X20 Ё
echo  Ё B Ё JANELA Ё 60X30 Ё
echo  Ё C Ё JANELA Ё 70X40 Ё
echo  Ё D Ё JANELA Ё 80X50 Ё
echo  юдддаддддддддаддддддды
echo  ( E ) VOLTAR
echo  ( F ) OP6
echo  ( G ) OP7
echo  ( H ) OP8
echo  ( I ) OP9
echo  ( J ) OP10
echo  ( K ) OP11
echo  ( L ) OP12
echo  ( M ) OP13
echo  ( N ) OP14
echo  ( O ) OP15
echo  ( P ) OP16
echo  ( Q ) OP17
ECHO.

 choice /C ABCDEFGHIJKLMNOPQ /N /T 20 /D E
 IF errorlevel=5 goto MIG
 IF errorlevel=4 goto ATVADM
 IF errorlevel=3 goto DESATVADM
 IF errorlevel=2 goto COPY
 IF errorlevel=1 goto REMOV

:DESATVADM
CLS
MODE 70,40
COLOR 3F
title  JANELA (C) TAMANHO 70X40
color 3f
%l:~0,75%
echo                     TITULO DA JANELA
%l:~0,75%
echo  зддддддддбд©
echo  Ё JANELA ЁCЁ
echo  цддддддддабадддбддддддддбддддддд©
echo  Ё TAMANHO Ё DA Ё JANELA Ё 70X40 Ё
echo  цдддбдддддаддбдадддддбддаддддддды
echo  Ё A Ё JANELA Ё 50X20 Ё
echo  Ё B Ё JANELA Ё 60X30 Ё
echo  Ё C Ё JANELA Ё 70X40 Ё
echo  Ё D Ё JANELA Ё 80X50 Ё
echo  юдддаддддддддаддддддды
echo  ( E ) VOLTAR
echo  ( F ) OP6
echo  ( G ) OP7
echo  ( H ) OP8
echo  ( I ) OP9
echo  ( J ) OP10
echo  ( K ) OP11
echo  ( L ) OP12
echo  ( M ) OP13
echo  ( N ) OP14
echo  ( O ) OP15
echo  ( P ) OP16
echo  ( Q ) OP17
echo  ( R ) OP18
echo  ( S ) OP19
echo  ( T ) OP20
echo  ( U ) OP21
echo  ( V ) OP22
echo  ( W ) OP23
echo  ( X ) OP24
echo  ( Y ) OP25
echo  ( Z ) OP26
echo.

 choice /C ABCDEFGHIJKLMNOPQRSTUVWXYZ /N /T 20 /D E
 IF errorlevel=5 goto MIG
 IF errorlevel=4 goto ATVADM
 IF errorlevel=3 goto DESATVADM
 IF errorlevel=2 goto COPY
 IF errorlevel=1 goto REMOV

:ATVADM
CLS
MODE 80,50
COLOR 3F
title  JANELA (D) TAMANHO 80X50
color 3f
%l:~0,90%
echo                     TITULO DA JANELA
%l%
echo  зддддддддбд©
echo  Ё JANELA ЁDЁ
echo  цддддддддабадддбддддддддбддддддд©
echo  Ё TAMANHO Ё DA Ё JANELA Ё 80X50 Ё
echo  цдддбдддддаддбдадддддбддаддддддды
echo  Ё A Ё JANELA Ё 50X20 Ё
echo  Ё B Ё JANELA Ё 60X30 Ё
echo  Ё C Ё JANELA Ё 70X40 Ё
echo  Ё D Ё JANELA Ё 80X50 Ё
echo  юдддаддддддддаддддддды
echo  ( E ) VOLTAR
echo  ( F ) OP6
echo  ( G ) OP7
echo  ( H ) OP8
echo  ( I ) OP9
echo  ( J ) OP10
echo  ( K ) OP11
echo  ( L ) OP12
echo  ( M ) OP13
echo  ( N ) OP14
echo  ( O ) OP15
echo  ( P ) OP16
echo  ( Q ) OP17
echo  ( R ) OP18
echo  ( S ) OP19
echo  ( T ) OP20
echo  ( U ) OP21
echo  ( V ) OP22
echo  ( W ) OP23
echo  ( X ) OP24
echo  ( Y ) OP25
echo  ( Z ) OP26
echo.

 choice /C ABCDEFGHIJKLMNOPQRSTUVWXYZ /N /T 20 /D E
 IF errorlevel=5 goto MIG
 IF errorlevel=4 goto ATVADM
 IF errorlevel=3 goto DESATVADM
 IF errorlevel=2 goto COPY
 IF errorlevel=1 goto REMOV

echo.
echo имммкммм╩  зддбдд©
echo ╨   ╨   ╨  Ё  Ё  Ё
echo лмммнммм╧  цддедд╢
echo ╨   ╨   ╨  Ё  Ё  Ё
echo хмммйммм╪  юддадды
echo JANELA B
echo.