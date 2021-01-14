# Create shortcut in startup folder
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\Users\$env:UserName\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\keyboard_setup.ahk.lnk")
$Shortcut.TargetPath = "$PSScriptRoot\keyboard_setup.ahk"
$Shortcut.Save()

autohotkey.exe .\keyboard_setup.ahk
