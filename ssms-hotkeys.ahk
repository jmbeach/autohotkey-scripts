SetTitleMatchMode, REGEX

#IfWinActive, Microsoft SQL Server Management Studio$

; your hotstrings go here
^+t:: Send, declare @t varchar(200) = '<transaction name>' {enter}begin tran @t {enter}{enter}rollback tran @t
; kill connections
^+k:: Send, USE [master]{enter}DECLARE @kill varchar(8000) = ''{enter}SELECT @kill = @kill {+} 'kill ' {+} CONVERT(varchar(5), session_id){enter}FROM sys.dm_exec_sessions{enter}WHERE database_id  = db_id('MyDB'){enter}EXEC(@kill);