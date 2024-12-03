#Requires AutoHotkey v2.0


; Remap CapsLock to behave as Alt+Shift+Ctrl modifier keys
CapsLock::
{
    SetCapsLockState "AlwaysOff"
    Send "{Alt down}{Shift down}{Ctrl down}"
    KeyWait "CapsLock"
    Send "{Alt up}{Shift up}{Ctrl up}"
}


; Run Windows Terminal
^!+t::
{
    Run "wt.exe"
}

; Launch or activate Zen Browser
^!+z::
{
    if WinExist("ahk_exe zen.exe")
        WinActivate "ahk_exe zen.exe"
    else
        Run "C:\Program Files\Zen Browser\zen.exe"
}

; Close window
^!+q::
{
    WinClose "A"
}
