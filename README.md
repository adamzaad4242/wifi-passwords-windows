# Find Your Saved Wi-Fi Passwords on Windows

A tiny PowerShell script that lists every Wi-Fi network your Windows PC has saved, together with its password. It uses only the built-in `netsh` command. Nothing is uploaded or sent anywhere.

## How to use it

1. Download `Get-WifiPasswords.ps1`.
2. Right-click it and choose **Run with PowerShell**, or run it from PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\Get-WifiPasswords.ps1
```

3. It prints each saved network name and its password, one per line. Networks with no password show as open networks.

## Requirements

- Windows 10 or Windows 11
- PowerShell (already installed on Windows)
- Run it on your own PC only. It can only show passwords your own PC has saved.

## Full guide

Read the full step-by-step guide on Technology Prof, including how to find a Wi-Fi password without any script, on Android and on iPhone: [How to Find Your Wi-Fi Password](https://technologyprof.com/how-to-find-wifi-password/)
