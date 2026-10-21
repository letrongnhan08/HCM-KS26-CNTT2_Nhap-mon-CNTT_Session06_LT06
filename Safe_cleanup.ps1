#safe_cleanup
Set-Location -Path "D:\Lanfarm\Logs"
Select-String -Path "system.log" -Pattern "WARNING" | Select-Object -ExpandProperty Line > issues.txt
Remove-Item -Path "D:\Lanfarm\Logs\*" -Filter "*.tmp" -Force
