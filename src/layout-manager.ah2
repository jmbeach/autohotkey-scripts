#SingleInstance force
; AutoHotkey v2 script
SetWorkingDir(A_ScriptDir)

MonitorGet 1, &Mon1Left, &Mon1Top, &Mon1Right, &Mon1Bottom

; Center the active window and shrink it to a quarter of the screen size
#+^c:: {
  _getWidthHeightAdjustmentFactor(15, 10, &adjustmentWidth, &adjustmentHeight)
  quarterWidth := Mon1Right / 4
  quarterHeight := Mon1Bottom / 4
  halfWidth := Mon1Right / 2
  halfHeight := Mon1Bottom / 2
  ; moves left-most part of the window to the center of the screen and then shifts it left a quarter of the screen.
  newX := halfWidth - quarterWidth
  newY := halfHeight - quarterHeight
  WinMove newX, newY, halfWidth + adjustmentWidth, halfHeight + adjustmentHeight, "A"
}

; Win + U to move window to half upper position
#U:: {
  _getWidthHeightAdjustmentFactor(20, 10, &adjustmentWidth, &adjustmentHeight)
  _getXYAdjustmentFactor(10, 0, &adjustmentX, &adjustmentY)
  WinMove 10 + adjustmentX, 10 + adjustmentY, Mon1Right - 20 - adjustmentWidth, (Mon1Bottom / 1.5) - 90 - adjustmentHeight, "A"
}


_getWidthHeightAdjustmentFactor(adjustWidthAmount, adjustHeightAmount, &adjustmentWidth, &adjustmentHeight) {
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe") {
    adjustmentWidth := adjustWidthAmount
    adjustmentHeight := adjustHeightAmount
  } else{
    adjustmentWidth := 0
    adjustmentHeight := 0
  }
}

_getXYAdjustmentFactor(adjustXAmount, adjustYAmount, &adjustmentX, &adjustmentY) {
  if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe azuredatastudio.exe") {
    adjustmentX := adjustXAmount
    adjustmentY := adjustYAmount
  } else{
    adjustmentX := 0
    adjustmentY := 0
  }
}
