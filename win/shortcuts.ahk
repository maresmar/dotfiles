#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force ; Replaces the old instance on script automatically
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Windows key shortcuts
#w::Run https://www.google.com/
#t::Run wt
#b::Run wt wsl.exe /usr/bin/bc -l
#j::Send {Media_Next}
#k::Send {Media_Prev}

; Linux AltGr
<^>!m::Send {^}{Space}
<^>!;::Send ``{Space}
<^>!+;::Send ~
; Numbers
<^>!č::Send $
<^>!ž::Send {^}{Space}
<^>!á::Send *