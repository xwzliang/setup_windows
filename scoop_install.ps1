# add permission to run scripts
# open powershell as administrator, first run this command, then run the script

# set-ExecutionPolicy RemoteSigned

if (!(Get-Command "scoop" -errorAction SilentlyContinue))
{
    # install scoop
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}

# Install apps
$apps = @(
    'sharpkeys',            # SharpKeys is a utility that manages a Registry key that allows Windows to remap one key to any other key
    'cmder',                # Lovely console emulator package for Windows 
    'windows-terminal',     # The new Windows Terminal and the original Windows console host, all in the same place
    'cygwin',               # a large collection of GNU and Open Source tools which provide functionality similar to a Linux distribution on Windows
    '7zip',                 # 7-Zip is a file archiver with a high compression ratio
    'autohotkey',           # AutoHotkey is a free, open-source scripting language for Windows that allows users to easily create small to complex scripts for all kinds of tasks such as: form fillers, auto-clicking, macros, etc
    'make',
    'wsl-ubuntu2004',       # Window Subsystem for Linux: Ubuntu 20.04 LTS
    'emacs'
)

scoop bucket add extras
scoop bucket add wsl https://git.irs.sh/KNOXDEV/wsl

foreach ($app in $apps) {
    echo $app
    scoop install $app
}
