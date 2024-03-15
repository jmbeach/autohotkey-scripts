#SingleInstance force
SetWorkingDir(A_ScriptDir)

MonitorGetWorkArea 1, &Mon1Left, &Mon1Top, &Mon1Right, &Mon1Bottom
; Update the monitor dimensions on a timer
while true {
  MonitorGetWorkArea 1, &Mon1Left, &Mon1Top, &Mon1Right, &Mon1Bottom
  Sleep 5000
}

; Center the active window
#+C:: {
  WinGetPos &X, &Y, &Width, &Height, "A"
  WinMove (Mon1Right - Width) / 2, (Mon1Bottom - Height) / 2, Width, Height, "A"
}

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
  WinMove 10 + adjustmentX, 15 + adjustmentY, Mon1Right - 20 - adjustmentWidth, (Mon1Bottom / 1.5) - 30 - adjustmentHeight, "A"
}

; Win + Shift + U to make window essentially maximized, but with margins
#+U:: {
  _getWidthHeightAdjustmentFactor(15, 10, &adjustmentWidth, &adjustmentHeight)
  _getXYAdjustmentFactor(9, 0, &adjustmentX, &adjustmentY)
  WinMove 10 + adjustmentX, 15 + adjustmentY, Mon1Right - 20 - adjustmentWidth, Mon1Bottom - 30 - adjustmentHeight, "A"
}

; Win + Shift + H to move window to left position
#+H:: {
  _getWidthHeightAdjustmentFactor(15, 10, &adjustmentWidth, &adjustmentHeight)
  _getXYAdjustmentFactor(9, 0, &adjustmentX, &adjustmentY)
  WinMove 10 + adjustmentX, 15 + adjustmentY, (Mon1Right / 2) - 10 - adjustmentWidth, Mon1Bottom - 30 - adjustmentHeight, "A"
}

; Win + Shift + L to move window to right position
#+L:: {
  _getWidthHeightAdjustmentFactor(15, 10, &adjustmentWidth, &adjustmentHeight)
  _getXYAdjustmentFactor(9, 0, &adjustmentX, &adjustmentY)
  WinMove (Mon1Right / 2) + 5 + adjustmentX, 15 + adjustmentY, (Mon1Right / 2) - 10 - adjustmentWidth, Mon1Bottom - 30 - adjustmentHeight, "A"
}

; Win + B to move window to wide bottom position
#B:: {
  _getWidthHeightAdjustmentFactor(20, 10, &adjustmentWidth, &adjustmentHeight)
  _getXYAdjustmentFactor(9, 0, &adjustmentX, &adjustmentY)
  WinMove 10 + adjustmentX, (Mon1Bottom / 1.6) + 15 + adjustmentY, Mon1Right - 20 - adjustmentWidth, Mon1Bottom - (Mon1Bottom / 1.6) - 30 - adjustmentHeight, "A"
}

_doesActiveWindowGetAdjustment() {
  windowsToAdjust := ["ahk_exe Code.exe", "ahk_exe azuredatastudio.exe", "ahk_exe FoxitPDFReader.exe"]
  for index, window in windowsToAdjust {
    if WinActive(window) {
      return true
    }
  }
  return false
}

_getWidthHeightAdjustmentFactor(adjustWidthAmount, adjustHeightAmount, &adjustmentWidth, &adjustmentHeight) {
  if _doesActiveWindowGetAdjustment() {
    adjustmentWidth := adjustWidthAmount
    adjustmentHeight := adjustHeightAmount
  } else{
    adjustmentWidth := 0
    adjustmentHeight := 0
  }
}

_getXYAdjustmentFactor(adjustXAmount, adjustYAmount, &adjustmentX, &adjustmentY) {
  if _doesActiveWindowGetAdjustment() {
    adjustmentX := adjustXAmount
    adjustmentY := adjustYAmount
  } else{
    adjustmentX := 0
    adjustmentY := 0
  }
}
