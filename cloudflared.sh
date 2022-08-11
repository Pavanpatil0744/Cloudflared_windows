
#create new directory
mkdir  c:\Cloudflared\bin

#Navigate to created directory
cd c:\cloudflared\bin

#download cloudflared package
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe -UseBasicParsing -O cloudflared.exe

#list tunnel to test 
C:\Cloudflared\bin\cloudflared.exe tunnel list

#iinstall serviice
C:\Cloudflared\bin\cloudflared.exe service install

echo "copy cloudflared login command generated url and login to zero trust and authorize"

#login to zero trust
C:\Cloudflared\bin\cloudflared.exe login

#create tunnel
C:\Cloudflared\bin\cloudflared.exe -origincert C:\Users\AJAY\.cloudflared\cert.pem tunnel create %Tunnel_Name%

#create variable for tunnel id
$tid = (Get-ChildItem "C:\Users\AJAY\.cloudflared\*.json").BaseName

#set variable to config file
(Get-Content C:\Users\AJAY\.cloudflared\config.yml) -replace "ID","$tid" | Set-Content C:\Users\AJAY\.cloudflared\config.yml

#update service registry
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Cloudflared" -Name "ImagePath" -Value "C:\Cloudflared\bin\cloudflared.exe --config=C:\Users\AJAY\.cloudflared\config.yml tunnel run"

#set startup type automatic
Set-Service -Name Cloudflared -StartupType Automatic

#add route ip subnet
C:\Cloudflared\bin\cloudflared.exe --config=C:\Users\AJAY\.cloudflared\config.yml tunnel --origincert=C:\Users\AJAY\.cloudflared\cert.pem route ip add 10.0.28.0/24 %Tunnel_Name%

#check route ip
C:\Cloudflared\bin\cloudflared.exe -origincert C:\Users\AJAY\.cloudflared\cert.pem --config=C:\Users\AJAY\.cloudflared\config.yml  tunnel route ip show

#run tunnel
C:\Cloudflared\bin\cloudflared.exe tunnel run %Tunnel_Name% 






