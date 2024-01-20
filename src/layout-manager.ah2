#SingleInstance force
; AutoHotkey v2 script
SetWorkingDir(A_ScriptDir)

MonitorGet 1, &Mon1Left, &Mon1Top, &Mon1Right, &Mon1Bottom

; Center the active window and shrink it to a quarter of the screen size
#+^c:: {
  _getAdjustmentFactor(&adjustmentX, &adjustmentY)
  quarterWidth := Mon1Right / 4
  quarterHeight := Mon1Bottom / 4
  halfWidth := Mon1Right / 2
  halfHeight := Mon1Bottom / 2
  ; moves left-most part of the window to the center of the screen and then shifts it left a quarter of the screen.
  newX := halfWidth - quarterWidth
  newY := halfHeight - quarterHeight
  WinMove newX, newY, halfWidth + adjustmentX, halfHeight + adjustmentY, "A"
}

_getAdjustmentFactor(&adjustmentX, &adjustmentY) {
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe") {
    adjustmentX := 15
    adjustmentY := 10
  } else{
    adjustmentX := 0
    adjustmentY := 0
  }
}