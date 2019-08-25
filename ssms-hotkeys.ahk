; #Include, debug.ahk

; If ssms is active and ctrl + e is pressed, run the refresh label
Hotkey, IfWinActive, ahk_exe Ssms.exe
Hotkey, ^e, refresh
return

refresh:
Send {f5}
Sleep 100
Send ^r
return