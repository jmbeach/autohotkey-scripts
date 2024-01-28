SysGet, Mon1, Monitor, 1


; Win + Shift + H to move window to left position
#+H::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, 19, 10, (Mon1Right / 2) - 35, Mon1Bottom - 100
  else
    WinMove, A,, 19, 10, (Mon1Right / 2) - 30, Mon1Bottom - 90
  return

; Win + Shift + L to move window to right position
#+L::
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe")
    WinMove, A,, (Mon1Right / 2) + 10, 10, Mon1Right - 35 - (Mon1Right / 2), Mon1Bottom - 100
  else
    WinMove, A,, (Mon1Right / 2) + 10, 10, Mon1Right - 20 - (Mon1Right / 2), Mon1Bottom - 90
  return

; Win + Shift + Alt + L to move window to the top right position
#+!L::
  WinGetActiveStats, WinTitle, WinWidth, WinHeight, WinX, WinY
  WinMove, A,, Mon1Right - WinWidth - 10, 10
  return

; Win + Shift + Ctrl + L to move window to the bottom right position
#+^L::
  WinGetActiveStats, WinTitle, WinWidth, WinHeight, WinX, WinY
  WinMove, A,, Mon1Right - WinWidth - 10, Mon1Bottom - WinHeight - 80
  return

; Win + Shift + Alt + H to move window to the top left position
#+!H::
  WinMove, A,, 10, 10
  return

; Win + Shift + Ctrl + H to move window to the bottom left position
#+^H::
  WinGetActiveStats, WinTitle, WinWidth, WinHeight, WinX, WinY
  WinMove, A,, 10, Mon1Bottom - WinHeight - 80
  return
