#IfWinActive ahk_exe Typora.exe
#SingleInstance force
#NoTrayIcon
#w::ExitApp
::bc::
    addCode("bash")
    return
::jc::
    addCode("java")
    return
::pyc::
    addCode("python")
    return
::jsc::
    addCode("javascript")
    return

addCode(lang)
{
    Send, {Asc 096}
    Send, {Asc 096}
    Send, {Asc 096}
    Send, %lang%
    Send, {Enter}
}