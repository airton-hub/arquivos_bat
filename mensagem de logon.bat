@echo off
mode 60,10

set /p a =digite titulo da janela

set /p t =digite seu texto


reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v LegalNoticeCaption /t reg_sz /d " %a%" /F


reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v LegalNoticeText /t reg_sz /d " %t%" /F
echo.