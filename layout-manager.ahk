#+L::
  if WinActive("ahk_exe Code.exe")
    WinMove, A,, 72, 10, 1535, 880
  else
    WinMove, A,, 65, 10, 1550, 880
  return
#+R:: WinMove, A,, 1613, 100, 303, 800
#+B:: WinMove, A,, 65, 800, 1550, 277