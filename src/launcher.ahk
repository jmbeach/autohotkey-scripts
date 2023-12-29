#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Open the terminal with windows key and enter
#Enter::
EnvGet, localAppData, LOCALAPPDATA
Run %localAppData%\Microsoft\WindowsApps\wt.exe
return

; windows key + "C" opens calculator
#c:: Run calc