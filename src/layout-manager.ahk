SysGet, Mon1, Monitor, 1

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
