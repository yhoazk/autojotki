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
tabs := inputbox("Save Tabs", "Number of tabs", "1")
notabs = %tabs%

Loop, %notabs% {
    Sleep 550  ; 
    send ^l    ;{Ctrl+l}
    Sleep 550  ; 
    send ^c ;{Ctrl+c}
    Sleep 200  ;
    Send {Alt Down}
    Sleep 200  ;
    Send {Tab}
    Sleep 200  ;
    Send {Alt Up}
    Sleep 200  ;
    send ^v
    Sleep 400  ;
    ;clipboard = ;
    Sleep 200  ;
    send {End}
    Sleep 200  ;
    send {enter}
    Sleep 200  ;
    Send {Alt Down}
    Sleep 200  ;
    Send {Tab}
    Sleep 200  ;
    Send {Alt Up}
    ; change tab

    Send {Ctrl Down}
    Sleep 300  ;
    Send {Tab}
    Sleep 200  
    Send {Ctrl Up}
}
