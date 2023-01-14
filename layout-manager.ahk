; Win + Shift + U to move window to upper position
SysGet, Mon1, Monitor, 1
#+U::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 19, 10, Mon1Right - 30, Mon1Bottom - 100
  else
    WinMove, A,, 10, 10, Mon1Right - 10, Mon1Bottom - 90
  return

; Win + U to move window to half upper position
#U::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 73, 10, 2480, 1180
  else
    WinMove, A,, 65, 10, 2496, 1180
 return

; Win + Shift + R to move window to right position
#+R:: WinMove, A,, 1613, 100, 303, 800

; Win + Shift + B to move window to bottom position
#+B:: WinMove, A,, 65, 800, 1550, 277

; Win + B to move window to wide bottom position
#B:: WinMove, A,, 65, 1160, 2496, 277

; Win + F to toggle maximized
#F::
  WinGet, MinMax, MinMax, A
  ; If the window is already maximized
  if MinMax = 1
    ; restore it
    WinRestore, A
  else
    ; otherwize, maximize it
    WinMaximize, A
  return

; Win + Shift + H to move window to top left position
#+H::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 73, 10, 918, 880
  else
    WinMove, A,, 65, 10, 926, 880
 return

; Win + Shift + L to move window to top right position
#+L::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 989, 10, 918, 880
  else
    WinMove, A,, 988, 10, 926, 880
 return