# run-adobeReader.ps1
$exeUrl = "https://github.com/clickinformaticavillaramallo/adobe-reader/releases/download/1/AcroRdrDC2400220759_es_ES.exe"
$tmpExe = "$env:TEMP\AcroRdrDC2400220759_es_ES.exe"

Write-Host "[*] Descargando Adobe Reader DC..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $exeUrl -OutFile $tmpExe -UseBasicParsing

Unblock-File -Path $tmpExe

# Ejecutar instalador (silencioso si es compatible)
Start-Process $tmpExe -ArgumentList "/sAll", "/rs", "/l", "/msi" -Wait

Write-Host "[+] Adobe Reader DC instalado." -ForegroundColor Green