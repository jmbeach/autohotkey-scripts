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
    WinMove, A,, 10, 10, Mon1Right - 30, (Mon1Bottom / 1.5) - 100
  else
    WinMove, A,, 10, 10, Mon1Right - 10, (Mon1Bottom / 1.5) - 90
 return

; Win + Shift + R to move window to right position
#+R:: WinMove, A,, 1613, 100, 303, 800

; Win + B to move window to wide bottom position
#B::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 19, (Mon1Bottom / 2), Mon1Right - 30, (Mon1Bottom - 90) - (Mon1Bottom / 2)
  else
    WinMove, A,, 10, (Mon1Bottom / 2), Mon1Right - 10, (Mon1Bottom - 80) - (Mon1Bottom / 2)
  return

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

; Win + Shift + H to move window to left position
#+H::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 19, 10, (Mon1Right / 2) - 30, Mon1Bottom - 100
  else
    WinMove, A,, 19, 10, (Mon1Right / 2) - 30, Mon1Bottom - 90
 return

; Win + Shift + L to move window to right position
#+L::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, (Mon1Right / 2) + 10, 10, Mon1Right - 30 - (Mon1Right / 2), Mon1Bottom - 100
  else
    WinMove, A,, (Mon1Right / 2) + 10, 10, Mon1Right - 10 - (Mon1Right / 2), Mon1Bottom - 90
  return