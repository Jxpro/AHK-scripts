; --------------------------------
;       Typora 代码块输入增强
; --------------------------------

::bc::
    addCode("shell")
    return
::tc::
    addCode("text")
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