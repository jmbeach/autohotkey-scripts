#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

endsWith(Haystack, Needle)
{
    return InStr(Haystack, Needle, 1) = StrLen(Haystack) - StrLen(Needle) + 1
}