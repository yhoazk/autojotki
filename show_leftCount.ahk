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


index = 0;
^l::
index := inputbox("Count left","This is the prompt","10")

CustomColor = FF0000  ; Can be any RGB color (it will be made transparent below).
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %CustomColor%
Gui, Font, s32  ; Set a large font size (32-point).
Gui, Add, Text, vMyText cLime, XXXXX YYYYY  ; XX & YY serve to auto-size the window.
; Make all pixels of this color transparent and make the text itself translucent (150):
WinSet, TransColor, %CustomColor% 170
;SetTimer, UpdateOSD, 200
;Gosub, UpdateOSD  ; Make the first update immediate rather than waiting for the timer.
;pos_x :=  %A_ScreenWidth% /2
Gui, Show, x1024 y0 NoActivate  ; NoActivate avoids deactivating the currently active window.

Loop, %index% {
    Sleep 150
    Send {Left}
    GuiControl,, MyText, Count: %A_Index%
}
Sleep 1000
GuiControl,, MyText, Done
Sleep 2000
Gui, Destroy
Return



; Border less window
; For the first gui

;;Gui,1:-border 
;;Gui, 1:Add, Text,, Some text to display. 
;;Gui, 1:Show
