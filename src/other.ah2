#SingleInstance force
KeyHistory 0
SetWorkingDir(A_ScriptDir)

; Disable windows feedback hub. Makes Windows key + f perform ctrl + f
#f::^f

; Disable teams hotkey. Makes windows key + c perform ctrl + c
#c::^c

; This isn't a hotkey, but just a reminder. If you want to disable Microsoft Office 365 shortcut,
; you can't do it with autohotkey. You can set the registry key
; "HKEY_CURRENT_USER > Software > Classes > ms-officeapp > Shell > Open > Command" to "rundll32"


CapsLock::
{
  Send "{Down}"
}

+CapsLock::
{
  Send "{Up}"
}
