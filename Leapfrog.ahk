;Codes: #Win   !Alt   ^Ctrl   +Shift   ;Comment


;MOHIN: Hot keys used in programs other than Leapfrog
;Hypersnap: Alt+r -> Region; Alt+s ->Scroll region


;#SingleInstance [force|ignore|off]
;This parameter determines what happens when a script is launched while a previous instance of itself is already running

#SingleInstance ignore

SplashImage SplashScreen.bmp
sleep 2000
SplashImage Off



;Win+Alt+Letter or Number (this combination is used to open folder)
;Win+Ctrl+Letter/Number (this combination is used to run application)


;Why is the Run command unable to launch my game or program?
;Some programs need to be started in their own directories (when in doubt, it is usually best to do so). For example:
;Run, %A_ProgramFiles%\Some Application\App.exe, %A_ProgramFiles%\Some Application
;Run, Appetizer\Appetizer.exe,Appetizer


#!C::Run c:\
#!D::Run d:\
#!E::Run e:\
#!F::Run f:\
#!G::Run g:\
#!m::Run C:\MHN
#!P::Run p:\
#!Q::Run q:\
#!R::Run r:\dqqa\branches\Current
#!S::Run s:\
#!V::Run v:\

;#!0::Run shell:mycomputerfolder (Default windows command for My Computer is Win+E)

#!0::Run %USERPROFILE%\Desktop
#!1::Run e:\Download
#!2::Run %USERPROFILE%\Downloads
;#!2::Run shell:UsersFilesFolder\Downloads
;#!2::Run shell:Downloads
#!3::Run shell:ProgramFiles
#!4::Run shell:ProgramFilesX86




#^A::Run P:\_1\Leapfrog\Appetizer\Appetizer.exe,P:\_1\Leapfrog\Appetizer
#^B::Run P:\_2\Soft\Font+Font Tools\_mhn_Bangla Typing Accessories\BKBL by Mohin\BKBL.exe
#^G::Run P:\_0_cld_gd_mmohinb\Soft4Cloud\Greenshot 1.2.8_DiR\Greenshot.exe
#^H::Run P:\_0_cld_gd_mmohinb\Soft4Cloud\HyperSnap 8.02.04_DiR\HyperSnapPortable.exe
#^J::Run P:\_2\SoftSelected\Dev_Prog_Reg\JSONedit 0.9.17_DiR\JSONedit.exe


; if a hotkey needs to execute only a single line, that line can be listed to the right of the double-colon as above and 
; "return" can be added at the end of line to indicate end of hotkey but not necessary. To execute
; multiple lines of code, the lines need to be written under the double-colon and "return" is used in the final line
; to indicate end of hotkey as below:


;#^L::
;Run C:\MHN\Login\login_auto.bat
;Run C:\MHN\Login\login_info.docx
;WinWait, Password, , 9000 ; wait 9 second for window with title Password
;IfWinExist, Password
;{
;    WinActivate  ; Automatically uses the window found above.
;    Send 921H@921{Enter}
;    return
;}
;return



#^L::Run P:\_0_cld_gd_mmohinb\DB\Login_Manager\Login_Manager.exe,P:\_0_cld_gd_mmohinb\DB\Login_Manager
#^M::Run P:\_2\Soft\Organizer\_Disc Cataloguer\MyLib 0.93_5A_DiR\MyLib.exe
#^N::Run P:\_2\SoftSelected\Text_PDF_HTML_CHM_DJVU_epub\Notepad++6.8.3_Plugins_DiR\Notepad++Portable.exe
#^O::Run c:\Program Files (x86)\Oxford\OALD8\oald8.exe
#^Q::Run P:\_1\Leapfrog\Q-Dir 5.42_5A_DiR_Unicode\Q-Dir.exe, P:\_1\Leapfrog\Q-Dir 5.42_5A_DiR_Unicode
#^R::Run P:\_2\Soft\Tool\Flash Renamer 6.71_DiR\Flash Renamer 6.71 EN Portable.exe, P:\
#^S::Run P:\_0_cld_gd_mmohinb\Soft4Cloud\TreeDBNotes Pro 4.50_DiR\TreeDBNotes.exe
#^T::Run P:\_0_cld_gd_mmohinb\Soft4Cloud\TreePad X Enterprise 384GB v7.11.7_DiR\treepadxenterprise.exe
#^U::Run P:\_0_cld_gd_mmohinb\Soft4Cloud\URL Address Book 6.05_5A_DiR\Urlbook.exe
#^W::Run P:\_0_cld_gd_mmohinb\Templates-1of2\MS Office\ClsNote_Office2013.dotm
#^1::Run C:\Program Files\Microsoft Office\Office15\ONENOTE.EXE

; Ctrl+c (Copy) is assigned to F5
F5::^c

; Ctrl+x (Cut) is assigned to F6
F6::^x

; Ctrl+v (Paste) is assigned to F7
F7::^v

F8::Run P:\



; New text (*.txt) file, rich text (*.rtf) file, word (*.doc) file, shortcut and folder creation from context menu (right mouse click)
; windows default shortcut to create new folder is ctrl+shift+n. Therefore ctrl+shift key combination is used for others.
;click mouse on a blank space before executing following commands

^+t:: Send {Click right}{w}{t}
^+r:: Send {Click right}{w}{r}
^+w:: Send {Click right}{w}{m}{enter}
^+s:: Send {Click right}{w}{s}

; Mathematics (Calculus) symbol

^Numpad0:: Send {U+00B0} ; Degree

^Numpad1:: Send {U+2264} ; Less Than or Equal
^Numpad2:: Send {U+2265} ; Greater than or equal
^Numpad3:: Send {U+2260} ; Not equal

;^Numpad4:: Send {U+25BA} ; Black right-pointing pointer
^Numpad4:: Send {U+2022} ; Bullet
^Numpad5:: Send {U+221E} ; Infinity
^Numpad6:: Send {U+2248} ; Almost equal to

^Numpad7:: Send {U+03B4} ; Greek letter small delta
^Numpad8:: Send {U+03B5} ; Greek letter small epsilon
^Numpad9:: Send {U+0192} ; Latin small letter f with hook
#^Numpad9:: Send {U+222B} ; Integral

^NumpadMult:: Send {U+00D7} ; Multiplication
^NumpadDiv:: Send {U+00F7} ; Division
^NumpadAdd:: Send {U+00B1} ;Plus-Minus
^NumpadSub:: Send {U+2212} ; Minus

;^NumpadEnter:: Send {U+21E8} ; Rightwards White Arrow 
^NumpadEnter:: Send {U+21D2} ; Rightwards White Arrow 

^':: Send {U+2032} ; Prime







