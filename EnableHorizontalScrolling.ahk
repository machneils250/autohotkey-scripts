#Singleinstance Force

;Horizontal scrolling in Excel only
#IfWinActive ahk_class XLMAIN

    +WheelUp:: 
        SetScrollLockState, On 
        SendInput {Left} 
        SetScrollLockState, Off 
    Return 

    +WheelDown:: 
        SetScrollLockState, On 
        SendInput {Right} 
        SetScrollLockState, Off 
    Return 

; Horizontal scrolling in everything except Excel. 
#IfWinNotActive ahk_class XLMAIN 

    +WheelDown::WheelRight
    +WheelUp::WheelLeft