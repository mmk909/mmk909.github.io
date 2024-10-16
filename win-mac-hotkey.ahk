LAlt::LCtrl
LCtrl::LAlt

<^Tab:: {
Send "{Alt down}{Tab}"
KeyWait "Alt"
Send "n{Alt up}"
return
}
		
<^Space::Send "#{s}"
<^d::Send "#{d}"	
<^q::Send "!{F4}"
<^::Send "#^{Left}"
<^1::Send "#^{Right}"
<^2:: {
CoordMode "Mouse", "Screen"
MouseGetPos &xpos, &ypos
X_175scale := 1.16
Y_175scale := 1.29
if (xpos >= A_ScreenWidth){
  MouseMove (xpos-A_ScreenWidth)*1.0, ypos*(1200/1080)
} else {
  MouseMove xpos+A_ScreenWidth, ypos/(1200/1080)
}
return
}


#HotIf WinActive("ahk_exe Chrome.exe")
<^[:: {
Send "{Alt down}{Left}"
KeyWait "Alt"
Send "{Alt up}"
return			
}
#HotIf WinActive("ahk_exe Chrome.exe")
<^]:: {
Send "{Alt down}{Right}"
KeyWait "Alt"		
Send "{Alt up}"
return
}