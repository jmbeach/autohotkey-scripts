; Win + Shift + U to move window to upper position
#+U::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 73, 10, 1535, 880
  else
    WinMove, A,, 65, 10, 1550, 880
  return

; Win + Shift + R to move window to right position
#+R:: WinMove, A,, 1613, 100, 303, 800

; Win + Shift + B to move window to bottom position
#+B:: WinMove, A,, 65, 800, 1550, 277

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