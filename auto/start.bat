@echo off
cd /d %~dp0
ubuntu1804.exe run "./start.php `echo ~/.zshrc` && source ~/.zshrc"
ping -n 2 127.0.0.1>nul
if not exist ..\bin\pulseaudio.exe (
    echo "�뽫auto�ŵ�pulseaudio�ĸ�Ŀ¼��"
) else (
    ..\bin\pulseaudio.exe
)