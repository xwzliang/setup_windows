# Create shortcut in startup folder
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\Users\$env:UserName\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\keyboard_setup_mac_keyboard.ahk.lnk")
$Shortcut.TargetPath = "$PSScriptRoot\keyboard_setup_mac_keyboard.ahk"
$Shortcut.Save()

autohotkey.exe .\keyboard_setup_mac_keyboard.ahk
