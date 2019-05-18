; Colemak layout for AutoHotkey (Windows)
; 2018-2019 Makeeyaf, http://colemak.com/
; MIT License

#Persistent
#SingleInstance force
#NoEnv
#InputLevel 1
DetectHiddenWindows, On
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode 3  ; Exact matching to avoid confusing T/B with Tab/Backspace.

global now := IME_CHECK("A")
if (now <> 0)
{
    now := 0
    Send, {vk15sc138}
}

Capslock::
    KeyWait, Capslock, T0.3

	if (ErrorLevel)
        SetCapsLockState, off
	else
		toggleKbd()

    KeyWait, Capslock

    return

LCtrl::LWin
LAlt::LCtrl
LWin::LAlt

RCtrl::RWin
RAlt::RCtrl
RWin::RAlt

*e::
Send, {Blind}{f}
return

*r::
Send, {Blind}{p}
return

*t::
Send, {Blind}{g}
return

*y::
Send, {Blind}{j}
return

*u::
Send, {Blind}{l}
return

*i::
Send, {Blind}{u}
return

*o::
Send, {Blind}{y}
return

*p::
Send, {Blind}{`;}
return

*s::
Send, {Blind}{r}
return

*d::
Send, {Blind}{s}
return

*f::
Send, {Blind}{t}
return

*g::
Send, {Blind}{d}
return

*j::
Send, {Blind}{n}
return

*k::
Send, {Blind}{e}
return

*l::
Send, {Blind}{i}
return

*`;::
Send, {Blind}{o}
return

*n::
Send, {Blind}{k}
return


toggleKbd() {
    Hotkey, *e, Toggle
    Hotkey, *r, Toggle
    Hotkey, *t, Toggle
    Hotkey, *y, Toggle
    Hotkey, *u, Toggle
    Hotkey, *i, Toggle
    Hotkey, *o, Toggle
    Hotkey, *p, Toggle
    Hotkey, *s, Toggle
    Hotkey, *d, Toggle
    Hotkey, *f, Toggle
    Hotkey, *g, Toggle
    Hotkey, *j, Toggle
    Hotkey, *k, Toggle
    Hotkey, *l, Toggle
    Hotkey, *`;, Toggle
    Hotkey, *n, Toggle

    ret := IME_CHECK("A")

    if (ret = now)
    {
        if (now <> 0)
        {
            now := 0
        }
        else
        {
            now := 1
        }

        Send, {VK15sc138}
        return

    }
    else
    {
        now := ret
        return
    }

}

IME_CHECK(WinTitle)
{
    WinGet,hWnd,ID,%WinTitle%
    Return Send_ImeControl(ImmGetDefaultIMEWnd(hWnd),0x005,"")
}

Send_ImeControl(DefaultIMEWnd, wParam, lParam)
{
    DetectSave := A_DetectHiddenWindows
    DetectHiddenWindows,ON

     SendMessage 0x283, wParam,lParam,,ahk_id %DefaultIMEWnd%
    if (DetectSave <> A_DetectHiddenWindows)
        DetectHiddenWindows,%DetectSave%
    return ErrorLevel
}

ImmGetDefaultIMEWnd(hWnd)
{
    return DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
}
