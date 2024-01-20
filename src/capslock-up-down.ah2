CapsLock::
{
  if !GetKeyState("Shift")
  {
    Send "{Down down}"
    Send "{Down up}"
  }
}

+CapsLock::
{
  if GetKeyState("Shift")
  {
    Send "{Up down}"
    Send "{Up up}"
  }
}
