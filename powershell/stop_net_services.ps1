$Proc = "tor"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -ne $null) {
    Stop-Process -ProcessName "tor"
    Write-Host "Tor has stopped."
}

$Proc = "privoxy"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -ne $null) {
    Stop-Process -ProcessName "privoxy"
    Write-Host "Privoxy has stopped."
}
