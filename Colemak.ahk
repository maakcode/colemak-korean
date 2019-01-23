; Colemak layout for AutoHotkey (Windows)
; 2018-11-01 Makeeyaf, http://colemak.com/
; MIT License

#SingleInstance force
#NoEnv
#InputLevel 1
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode 3  ; Exact matching to avoid confusing T/B with Tab/Backspace.

Capslock::toggleKbd()
RAlt::toggleKbd()

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
    Send, {VK15}
    return
}
