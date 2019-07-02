#Persistent
SetTimer, CloseHP, 250
return

CloseHP:
if WinExist("HP System Information")
    WinClose
return