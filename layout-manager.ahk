; Win + Shift + U to move window to upper position
#+U::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 73, 10, 1535, 880
  else
    WinMove, A,, 65, 10, 1550, 880
  return

; Win + U to move window to full upper position
#U::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 73, 10, 1836, 880
  else
    WinMove, A,, 65, 10, 1852, 880
 return

; Win + Shift + R to move window to right position
#+R:: WinMove, A,, 1613, 100, 303, 800

; Win + Shift + B to move window to bottom position
#+B:: WinMove, A,, 65, 800, 1550, 277

; Win + B to move window to wide bottom position
#B:: WinMove, A,, 65, 800, 1852, 277

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