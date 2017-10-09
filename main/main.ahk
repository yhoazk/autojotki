#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Media controls
; press shift+ctrl+a to next
+^a::
Send {Media_Next}
return
; press shift+ctrl+s to pause
+^s::
Send {Media_Play_Pause}
return

; press shift+contorl+<- to decrease volume

; press shift+contorl+-> to increase volume

+^Left::
Send {Volume_Down 5}
return
+^Right::
Send {Volume_Up}
return



; Keep window above
; Press alt+space and the selected window will remain on-top
^SPACE::  Winset, Alwaysontop, , A
