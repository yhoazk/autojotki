#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors
#InstallKeybdHook
#SingleInstance forc
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;; Global varible to stop the loops

stop = 0

!x::
Click right 
Sleep 300
Send {Down 14}
Sleep 100
Send {Right}
Sleep 100
Send {Down 9}
Sleep 100
Send {Enter}
; la ventana de sort esta ahora abierta
Return

!s::
Click right 
Sleep 300
Send {Down 14}
Sleep 100
Send {Right}
Sleep 100
Send {Down 8}
Sleep 100
Send {Enter}
; la ventana de sort esta ahora abierta
Return

; hacer tab y tipear short para que se selecciones shortname y enter
!d::
Send {Tab 2}
Send short
Send {Enter}
Return

;; pause a loop
Pause::Pause ; Assign the toggle-pause function to the pause Key
!p::Pause

;; Esta cosa es para hacer el sort de los PduTriggerings
!z::
index := inputbox("PduTriggerings","This is the prompt","this is the default text replace it if you wish")

Loop, %index% {
    Click right 
    Sleep 5250
    Send {Down 14}
    Sleep 5250
    Send {Right}
    Sleep 5250
    Send {Down 8}
    Sleep 5250
    Send {Enter}
    Sleep 5250
    Send {Down} 
    Sleep 5250
    Send {Tab 2}
    Sleep 5250
    Send {Down 2} 
    Sleep 5250
    Send {Enter}
    Sleep 5250
    Send {Up}
}
Return


;; Este otro es para hacer el sort de los ISignalIPdu
!a::
index := inputbox("ISignalIPdu","This is the prompt","this is the default text replace it if you wish")
Loop, %index% {
    Click right 
    Sleep 300
    Send {Down 14}
    Send {Right}
    Sleep 300
    Send {Down 8}
    Send {Enter}
    Sleep 300
    Send {Down 2}
    Send {Tab 2}
    Send {Down 5}
    Sleep 300
    Send {Enter}
    Sleep 300
    Send {Up}
    Sleep 300
}
Return


;; Este otro es para hacer el sort de los CanFrameTriggering que deben de ser por short label, no por short name
!q::
index := inputbox("CanFrameTriggering","This is the prompt","this is the default text replace it if you wish")
Loop, %index% {
Click right 
Sleep 200
Send {Down 14}
Send {Right}
Sleep 200
Send {Down 8}
Send {Enter}
Sleep 200
Send {Down 2}
Send {Tab 2}
Send {Down 3}
Sleep 200
Send {Enter}
Sleep 200
Send {Up}
Sleep 200
}
Return

!r::
index := inputbox("del 0.","This is the prompt","this is the default text replace it if you wish")
Loop, %index% {
Send {Enter}
Sleep 280
Send {END}
Sleep 280
Send {BS 2}
Sleep 280
Send {Enter}
Sleep 280
Send {DOWN}
Sleep 280
}
Return
; function
InputBox(Title="",Prompt="",Default="",HIDE="",Width=250,Height=180,X="",Y="",Font="",Timeout= "")
{
   InputBox, v, %Title%, %Prompt%, %HIDE%, %Width%, %Height%, %X%, %Y%, , %Timeout%, %Default%
   Return, v
}



;; function para llenar las secciones de CANIF con la seccion _0
;;
!ñ::
index := inputbox("Set CAN Area","This is the prompt","this is the default text replace it if you wish")
Loop, %index% {
MouseClick, left, 1895, 600 ; click button
Sleep 280
Send *_SECTION_0
Sleep 280
Send {Tab 4}
Sleep 280
Send {Enter}
Sleep 280
MouseClick, left, 1533, 270 ; go back focus to elements
Sleep 280
Send {Down}
Sleep 280
}
Return

;; llenar valores consecutivos
!f::
index := inputbox("Fill values in table","This is the prompt","this is the default text replace it if you wish")
val := %index%
Loop, %index% {
    send {enter}
    Sleep 100
    Send, %val%
    Sleep 100
    val := %val% - 1
    Sleep 100
}
Return


!b::
index := inputbox("Fill values in table","This is the prompt","this is the default text replace it if you wish")
val := %index%
Loop, %index% {
    Click, right
    Sleep 500
    Click, left
    Sleep 500
    Send {Down}
    Sleep 500
    Send {Down}
    Sleep 500
    Send {Enter}
    Sleep 500
    send ^a
    Sleep 500
    send ^c
 ;   Sleep 500
 ;   send !Tab
 ;   Sleep 500
 ;   send ^v
 ;   Sleep 500
 ;   send {end}
 ;   Sleep 500
 ;   send {Enter}
 ;   Sleep 500
 ;   send !Tab
 ;   Sleep 500
 ;   send {Esc}
 ;   Sleep 500
 ;   Send {Down}
}
Return

;; Cancel sort operation
!c::
If stop = 0
  {
   stop = 1
   return
  }
If stop = 1
  {
   stop = 0
   return
  }
return
