#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^F12::
   Run, taskmgr
   winactivate, Windows Task Manager
   WinWaitActive, Windows Task Manager
   send, notes2{Del}
   Sleep, 500
   send, {Enter}
   Sleep, 500
   winactivate, Notificación de error de Lotus Notes
   WinWaitActive, Notificación de error de Lotus Notes
   send, {Enter}
   Sleep, 500
   winactivate, Cancelar los diagnósticos de Lotus Notes
   WinWaitActive, Cancelar los diagnósticos de Lotus Note
   send,     {Tab}{Enter}
   
   Sleep, 1500
   send,  {LWin Down}1{LWin Up}
   ;tosndpss 
   Sleep, 2500
   winactivate, Lotus Notes
   WinWaitActive, Lotus Notes
   Send, <passwd>{Enter} 
   winactivate, Windows Task Manager
   WinWaitActive, Windows Task Manager
   Send, {Esc}
Return

