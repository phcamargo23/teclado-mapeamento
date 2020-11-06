; !   Alt
; ^   Ctrl
; +   Shift
; #   Winkey
; https://www.autohotkey.com/docs/KeyList.htm

; a::b ; Remapear
; :*:2::234 ; multi
; ::btw::by the way ; hot string

; Suspend AutoHotKey
;#ScrollLock::Suspend ; Win + scrollLock

; ------------------ BARRA, CONTRABARRA E PIPE ------------------
; #/::Send {Asc 0151}
; #`/::Send {Asc 0151}
; ::~/::\
; ::^/::|

; ------------------ TRAVESSÃO -----------------
::~-::{Asc 0151}

; ------------------ MÚSICAS -------------------
#PgUp::Media_Prev
#PgDn::Media_Next
;#F9::Send {Volume_Down} ; shift + numpad minus
;#F10::Send {Volume_Up} ; shift + numpad plus
;#F11::Send {Volume_Mute} ; Break key mutes

; ------------------ NOVO ARQUIVO DE TEXTO ------------------
#IfWinActive, ahk_class CabinetWClass
#n:: ;explorer - create new text file and open it with Notepad2
#IfWinActive, ahk_class ExploreWClass
#n:: ;explorer - create new text file and open it with Notepad2
vPathNotepad2 := "C:\Program Files\Sublime Text 3\sublime_text.exe"
vNameNoExt := "README"
vDotExt := ".md"
vPath := ""
WinGet, hWnd, ID, A
for oWin in ComObjCreate("Shell.Application").Windows
{
	if (oWin.HWND = hWnd)
	{
		vDir := RTrim(oWin.Document.Folder.Self.Path, "\")
		;if !DirExist(vDir)
		if !InStr(FileExist(vDir), "D")
		{
			oWin := ""
			return
		}

		Loop
		{
			vSfx := (A_Index=1) ? "" : " (" A_Index ")"
			vName := vNameNoExt vSfx vDotExt
			vPath := vDir "\" vName
			if !FileExist(vPath)
				break
		}

		;create a blank text file (ANSI/UTF-8/UTF-16)
		;FileAppend,, % "*" vPath
		FileAppend,, % "*" vPath, UTF-8
		;FileAppend,, % "*" vPath, UTF-16
		break
	}
}
oWin := ""
;if FileExist(vPath)
;	Run, C:\Program Files\Sublime Text 3\sublime_text.exe "%vPath%"
return