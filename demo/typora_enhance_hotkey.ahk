#IfWinActive ahk_exe Typora.exe
#SingleInstance force
#NoTrayIcon
#w::ExitApp
^+b::addCode("bash")
^+j::addCode("java")
^+p::py()

; ^+k::
; ^+b::
; ^+p::
; ^+j::
;     if (A_PriorHotkey = "^+k" and A_TimeSincePriorHotkey < 500) {
;         if (A_ThisHotkey = "^+b") {
;             addCode("bash")
;         }else if(A_ThisHotkey = "^+p"){
;             addCode("python")
;         }else if(A_ThisHotkey = "^+j"){
;             addCode("java")
;         }
; }

addCode(lang)
{
    Send, {Asc 096}
    Send, {Asc 096}
    Send, {Asc 096}
    Send, %lang%
    Send, {Enter}
}

py()
{
    KeyWait, y, D
    if(A_TimeSinceThisHotkey<1000) {
        addCode("python")
    }
}