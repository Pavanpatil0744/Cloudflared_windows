# Cloudflared_windows

#To install software using powershell script
Invoke-Command -ComputerName desktop1 -ScriptBlock {powershell.exe c:\Scripts\git.ps1} 

#To install software using batch script
Invoke-Command -ComputerName desktop1 -ScriptBlock {cmd.exe /c c:\Scripts\test.bat} 

Invoke-Command -ComputerName desktop1 -ScriptBlock {winget install --accept-source-agreements -e -h --id Git.Git}


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

Invoke-Command -ComputerName Server01, Server02 -FilePath c:\Scripts\DiskCollect.ps1



Copy-Item -Path \\serverb\c$\programs\temp\test.txt -Destination \\servera\c$\programs\temp\test.txt;



# Source URL
$url = "https://github.com/git-for-windows/git/releases/download/v2.36.1.windows.1/Git-2.36.1-64-bit.exe"

# Destation file
$dest = "c:\git\Git-2.36.1-64-bit.exe"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $dest

#install file
$install_args = "/SP- /VERYSILENT /SUPPRESSMSGBOXES /NOCANCEL /NORESTART /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS"
Start-Process -FilePath "c:\git\Git-2.36.1-64-bit.exe" -ArgumentList $install_args -Wait

Import-Module ActiveDirectory
$User = Get-ADUser ole.roemer -Properties proxyAddresses
$User.proxyAddresses.Add("smtp:o.roemer@observatory.dk")
Set-ADUser -instance $User



cd c:\gi

wget https://github.com/git-for-windows/git/releases/download/v2.36.1.windows.1/Git-2.36.1-64-bit.exe

msiexec /i c:\gi\Git-2.36.1-64-bit.exe /quiet /qn /norestart /log c:\warp\warp.log PROPERTY1=value1 PROPERTY2=value2
