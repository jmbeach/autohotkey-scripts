CapsLock::
{
  if state = D
  {
  }
  else
  {
    Send, {Down down}
    Send, {Down up}
  }
}
+CapsLock::
{
  GetKeyState, state, Shift
  if state = D
  {
    Send, {Up down}
    Send, {Up up}
  }
}
