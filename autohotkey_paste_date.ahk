; Paste Date/time stamp as YYYYMMDDHHMMSS hash (Ctrl ;)
^;:: Send, %A_Now%
return

; Paste personally preferred formatted date/time stamp (Ctrl Shift ;)
^+;::
FormatTime,CurrentTime,%A_Now%,M/d/yyyy HH:mm:ss
Send, %CurrentTime%
return