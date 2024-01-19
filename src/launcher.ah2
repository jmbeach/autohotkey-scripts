#SingleInstance force
SetWorkingDir(A_ScriptDir)
KeyHistory 0
; SendMode defaults to Input in v2 and NoEnv is enabled by default.

; Open the terminal with windows key and enter
#Enter:: {
  Run '"C:\Program Files\Alacritty\alacritty.exe" --working-directory \\wsl$\Ubuntu\home\jared'
}
