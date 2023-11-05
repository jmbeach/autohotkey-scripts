#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Open the terminal with windows key and space bar
#space::
EnvGet, localAppData, LOCALAPPDATA
Run %localAppData%\Microsoft\WindowsApps\wt.exe
return