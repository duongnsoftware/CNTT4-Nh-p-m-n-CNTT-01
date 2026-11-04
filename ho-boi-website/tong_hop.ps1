# Script: tong_hop.ps1
 # Tac gia: Nguyen Hai Duong
# Ngay tao: 4/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > ./logs/tong_hop.txt
Get-Content ./logs/visit.log | Select-String "status=404" >>  ./logs/tong_hop.txt
Get-Content ./logs/visit.log | Select-String "status=500" | Measure-Object >>  ./logs/tong_hop.txt
write-Host "Hoan thanh!"