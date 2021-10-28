; --------------------------------
;          Chrome 搜索增强
; --------------------------------

~^c:: search()

search(){
    trimed:=Trim(Clipboard)
    if (A_PriorHotkey = "~^c" and A_TimeSincePriorHotkey < 400)
    {
        res:=SubStr(trimed,1,4)="http"?trimed:"https://www.baidu.com/s?&wd="+trimed
        Run, %res%
    }
}