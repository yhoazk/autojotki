# autojotki
autojotki (AuthoHotKey)


### Keep window above others
```shell
  #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent staarting directory.
^SPACE::  Winset, Alwaysontop, , A
```

### Copy from a window and paste in the contiguous
```shell
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^F11::
   Sleep, 700
   send, ^x ; copy
   Sleep, 700
   Send, {ALT DOWN}{TAB}{ALT UP} ; switch window
   Sleep, 700
   send, ^v ; paste
   Sleep, 700
   send, {DOWN} ; move to next element
   Sleep, 700
   Send, {ALT DOWN}{TAB}{ALT UP} ; return to soruce window
Return
```


### Open window 
