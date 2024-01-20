#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include %A_ScriptDir%\std-lib\string.ahk

isWindowNonMinimized(windowId) {
    WinGet MMX, MinMax, ahk_id %windowId%
    return MMX != -1
}

isWindowVisible(id)
{
    WinGetPos, X, Y, Height, Width , ahk_id %id%
    WinGetTitle title, ahk_id %id%
    WinGet, style, style, ahk_id %id%
    WinGet ProcsName, ProcessName, ahk_id %id%
    ; Is Maximized?
    WinGet MMX, MinMax, ahk_id %windowId%
    ; Need #Include %A_ScriptDir%\std-lib\string.ahk
    return (style & 0xC00000) <> 0 && title <> "" && endsWith(ProcsName, ".exe") && Height >= 0 && Width >= 0 && X >= 0 && Y >=0 && MMX <> -1
}