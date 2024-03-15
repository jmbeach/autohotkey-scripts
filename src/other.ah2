#SingleInstance force
KeyHistory 0
SetWorkingDir(A_ScriptDir)

; Disable windows feedback hub. Makes Windows key + f perform ctrl + f
#f::^f

; Disable teams hotkey. Makes windows key + c perform ctrl + c
#c::^c

; Disable widgets hotkey. Makes windows key + w perform ctrl + w in most cases
; In some cases, sends Alt + F4
#w::
{
  if _doesActiveWindowGetClosed() {
    Send "!{F4}"
  } else {
    Send "^w"
  }
}

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

; In various programs, use win + , to bring up the settings window
#,::
{
  ; Send ctrl + alt + s in IntelliJ
  if WinActive("ahk_exe idea64.exe") {
    Send "^!s"
  }
}

_doesActiveWindowGetClosed() {
  windowsToClose := ["ahk_exe alacritty.exe"]
  for index, window in windowsToClose {
    if WinActive(window) {
      return true
    }
  }
  return false
}
