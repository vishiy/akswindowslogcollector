#Write-Host "First Generating the certificates"

#dir

#.\ConsoleApp1.exe

#dir

Write-Host "Starting fluent bit for windows..."

C:\fluent-bit\bin\fluent-bit.exe -c "C:\omsagentwindows\fluent-bit.conf" -e "C:\omsagentwindows\out_oms.so"

#Start-Job -ScriptBlock { Start-Process -NoNewWindow -FilePath "C:\fluent-bit\bin\fluent-bit.exe" -ArgumentList @("-c", "C:\omsagentwindows\fluent-bit.conf", "-e", "C:\omsagentwindows\out_oms.so") }
