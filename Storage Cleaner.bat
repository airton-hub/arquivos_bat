echo Desocultando todos arquivos e pastas.
attrib -h -r -s /s /d
echo Deleteando arquivos indesejaveis.
del /F /S /Q  *.inf
echo Deletando os atalhos gerados.
del /F /S /Q  *.lnk
echo Concluido a Limpeza.
PAUSE