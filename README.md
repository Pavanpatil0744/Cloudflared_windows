# Cloudflared_windows

Invoke-Command -ComputerName "DESKTOP1" {
        Start-Process "C:\Users\nithi.sundar\Desktop\Test.bat"
        
        Invoke-Command -ComputerName "DESKTOP1" -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'C:test\Test.bat'"}
        
        
mkdir c:\notepad

cd c:\notepad

wget https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.4.5/npp.8.4.5.Installer.x64.exe


npp.8.4.5.Installer.x64.exe /S /v"/qn"
