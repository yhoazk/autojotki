#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; function
InputBox(Title="",Prompt="",Default="",HIDE="",Width=250,Height=180,X="",Y="",Font="",Timeout= "")
{
   InputBox, v, %Title%, %Prompt%, %HIDE%, %Width%, %Height%, %X%, %Y%, , %Timeout%, %Default%
   Return, v
}


^F12::
index := inputbox("Fill values in table","This is the prompt","this is the default tex")
val = %index%
MouseGetPos, xpos, ypos 

Loop, %index% {
    sendInput  %val%{enter}
    ypos = %ypos% + 10
    ;mouseclick, left, xpos, ypos ; click button
    val--
    Sleep 100
;    Send !{Tab}
;   send    {Alt down}{Tab}{Alt up}
    Send {Alt Down}
    Send {Tab}
    Sleep 100  ; Keep it down for five seconds.
    Send {Alt Up}
    Sleep 50  ; Keep it down for five seconds.
}
Return

