# Get-WifiPasswords.ps1
# Lists every Wi-Fi network your Windows PC has saved, with its password.
# Uses only the built-in netsh command. Nothing is sent anywhere.
# Run in PowerShell:  powershell -ExecutionPolicy Bypass -File .\Get-WifiPasswords.ps1

$profiles = netsh wlan show profiles | Select-String "All User Profile" | ForEach-Object {
    ($_ -split ":")[1].Trim()
}

if (-not $profiles) {
    Write-Host "No saved Wi-Fi profiles found on this PC."
    exit
}

foreach ($name in $profiles) {
    $keyLine = netsh wlan show profile name="$name" key=clear |
        Select-String "Key Content"

    if ($keyLine) {
        $password = ($keyLine -split ":")[1].Trim()
        Write-Host "$name : $password"
    } else {
        Write-Host "$name : (no password saved - open network)"
    }
}
