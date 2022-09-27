# Cloudflared_windows

Invoke-Command -ComputerName "DESKTOP1" {
        Start-Process "C:\Users\nithi.sundar\Desktop\Test.bat"
        
        Invoke-Command -ComputerName "DESKTOP1" -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'C:test\Test.bat'"}
