; #Include, debug.ahk

; If ssms is active and ctrl + e is pressed, run the refresh label
Hotkey, IfWinActive, ahk_exe Ssms.exe
Hotkey, ^e, refresh
Hotkey, ^+t, transaction_hotkey
Hotkey, ^+k, kill_connection_hotkey
return

refresh:
Send {f5}
Sleep 100
Send ^r
return

transaction_hotkey:
Send, DECLARE @t VARCHAR(200) = '<transaction name>';{enter}BEGIN TRAN @t;{enter}{enter}ROLLBACK TRAN @t;
return

; kill connections
kill_connection_hotkey:
Send, USE [master]{enter}DECLARE @kill varchar(8000) = ''{enter}SELECT @kill = @kill {+} 'kill ' {+} CONVERT(varchar(5), session_id){enter}FROM sys.dm_exec_sessions{enter}WHERE database_id  = db_id('MyDB'){enter}EXEC(@kill);
return