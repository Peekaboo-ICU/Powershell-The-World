$scriptPath = "C:\temp\xmrig.exe"
$shortcutPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\RunAsAdmin.lnk"

$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $scriptPath
$shortcut.Save()

# Elevate the shortcut to run as administrator
$shortcut.Properties("RunAsAdministrator").Value = 1
$shortcut.Save()