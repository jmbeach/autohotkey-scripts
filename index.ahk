#SingleInstance Force ; The script will Reload if launched while already running
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases
#KeyHistory 0
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability

#Include %A_ScriptDir%\layout-manager.ahk
#Include %A_ScriptDir%\windows-desktop-switcher\desktop_switcher.ahk
return