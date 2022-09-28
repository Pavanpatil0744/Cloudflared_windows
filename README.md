# Cloudflared_windows

Invoke-Command -ComputerName "DESKTOP1" {
        Start-Process "C:\Users\nithi.sundar\Desktop\Test.bat"
        
        Invoke-Command -ComputerName "DESKTOP1" -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'C:test\Test.bat'"}
        
        
mkdir c:\notepad

cd c:\notepad

wget https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.4.5/npp.8.4.5.Installer.x64.exe


npp.8.4.5.Installer.x64.exe /S /v"/qn"


https://techexpert.tips/powershell/powershell-copy-files-remote-computers/#:~:text=Tutorial%20Powershell%20-%20Copy%20files%20to%20remote%20computers,a%20file%20to%20the%20remote%20computer%20using%20Powershell.


# create warp folder
mkdir c:\warp

#move to warp folder
cd c:\warp

#download warp package
wget 1111-releases.cloudflareclient.com/windows/Cloudflare_WARP_Release-x64.msi

#install warp silently
msiexec /i c:\warp\Cloudflare_WARP_Release-x64.msi /quiet /qn /norestart /log c:\warp\warp.log PROPERTY1=value1 PROPERTY2=value2

PsExec.exe \\10.0.27.14 -u DESKTOP1\Vinit -p vinit@8329 cmd Get-Service
