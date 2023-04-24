; Windows key shortcuts
#w::Run "https://www.google.com/"
#t::
{
  if WinExist("mmares@MMARES01")
    WinActivate
  else {
    Run "wt"
    WinWait("mmares@MMARES01")
    WinActivate "mmares@MMARES01"
  }
}

#b::Run "wt wsl.exe /usr/bin/bc -l"
#j::Send "{Media_Next}"
#k::Send "{Media_Prev}"

; Linux AltGr
<^>!m::Send "{^}{Space}"
<^>!;::Send "``{Space}"
<^>!+;::Send "~"
; Numbers
<^>!č::Send "$"
<^>!ž::Send "{^}{Space}"
<^>!á::Send "*"