;Inspired by thread:http://www.autohotkey.com/board/topic/103338-best-way-for-debug/?hl=%2Bconsole+%2Blog#entry638264
;Based on script by user Hachi.
;Edit by Jared Beach.
;
;	#include this script in a script you want to debug. 
;	"#Include, ./debug.ahk"
;   
;   Add debug messages by writing `debug("your message here");
;
;	See live debug messages by running:
;		AutoHotkey myscript.ahk debug | Write-Host
;	Exit the script by pressing Win + x.
;//////////////////////////////////////////////////////////////////


;	Determine if this is a debug session
Gosub, SubCheckDebugArgs

;	Works regardless if debug argument is passed in.
debug(string) {
	string .= "`n" 
    FileAppend %string%,* ;* goes to stdout
}

; win + x ends script so you can see output in command-line
#x::
{
	if (isDebug = true) {
		Gosub, SubExit
	}
	Return
}

SubExit:
{
	ExitApp ;Terminate for debug
}
SubCheckDebugArgs:
{
	isDebug := false
   	i := 0
	Loop %0% { ; for all commandline arguments
	  param = %A_Index%
	  if (%param% = "debug") {
	  	isDebug := true
	  }
	} 
	Return
}