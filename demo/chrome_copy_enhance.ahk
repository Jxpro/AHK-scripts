#IfWinActive ahk_exe Chrome.exe
#SingleInstance force
#NoTrayIcon
#w::ExitApp

; 双击 Ctrl+C 使用百度搜索剪切板内容
~^c::

;两次按下时间间隔太长, 所以这不是双击
if (A_PriorHotkey <> "~^c" or A_TimeSincePriorHotkey > 400)
{
    return
}

; 数据预处理
trimed:=Trim(Clipboard)

; 如果是链接则直接打开
if (SubStr(trimed,1,4)="http")
{
    Run, %trimed%
    return
}

; 不是链接进行搜索
Run, https://www.baidu.com/s?&wd=%trimed%
return