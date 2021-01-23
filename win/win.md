# AutoHotkey
C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\

# Sublime Text 3
## Configurações
%HOMEPATH%\AppData\Roaming\Sublime Text 3\Packages\User\Preferences.sublime-settings
%HOMEPATH%\AppData\Roaming\Sublime Text 3\Packages\User\Package Control.sublime-settings

### Extensões removidas
"Log Highlight",
"Log4jView",
"LogView",

## Atalhos
%HOMEPATH%\AppData\Roaming\Sublime Text 3\Packages\User\Default (Windows).sublime-keymap

# Visual Studio Code
%HOMEPATH%\AppData\Roaming\Code\User\keybindings.json

# SQL Developer
> Cada versão é de um jeito
%HOMEPATH%\AppData\Roaming\SQL Developer
[\system18.4.0.376.1900\o.ide.13.0.0.1.42.170225.201\]settings.xml

# HeidiSQL
> Não achei um arquivo de configuração
Arquivo > Exportar/Importar

# Jetbrains
> Instalados com Toolbox
https://plugins.jetbrains.com/plugin/10985-case-conversion
https://plugins.jetbrains.com/plugin/2162-string-manipulation
https://stackoverflow.com/questions/42978443/how-to-change-number-format-in-datagrip-table-editor

## IntelliJ
%HOMEPATH%\AppData\Roaming\JetBrains\IntelliJIdea2020.2\jba_config\win.keymaps\Windows copy.xml
file:///C:/Users/PC/AppData/Roaming/JetBrains/IntelliJIdea2020.2/jba_config/win.keymaps/Windows%20copy.xml

## PyCharm
%HOMEPATH%\AppData\Roaming\JetBrains\PyCharm2020.2\jba_config\win.keymaps\Windows copy.xml

## PhpStorm
%HOMEPATH%\AppData\Roaming\JetBrains\PhpStorm2020.1\keymaps\Windows copy.xml

## DataGrip

## WebStorm
"C:\Users\PC\AppData\Roaming\JetBrains\WebStorm2020.2\jba_config\win.keymaps\Windows copy.xml"

# Word
Sub PastePDFClean()
' modified 31 March 2015
Dim MyData As DataObject
Dim sTextIn As String
Dim x As Integer
Dim y As Integer

Set MyData = New DataObject
MyData.GetFromClipboard
sTextIn = MyData.GetText

' replace carriage returns with spaces
x = InStr(sTextIn, vbCr)
y = 1
While x > 0
sTextIn = Left(sTextIn, x - 1) & " " & Mid(sTextIn, x + 1)
y = x + 1
x = InStr(y, sTextIn, vbCr)
Wend

' remove line feeds following spaces
x = InStr(sTextIn, " " & vbLf)
y = 1
While x > 0
sTextIn = Left(sTextIn, x) & Mid(sTextIn, x + 2)
y = x
x = InStr(y, sTextIn, " " & vbLf)
Wend

' remove remaining line feeds
x = InStr(sTextIn, vbLf)
y = 1
While x > 0
sTextIn = Left(sTextIn, x - 1) & Mid(sTextIn, x + 1)
y = x
x = InStr(y, sTextIn, vbLf)
Wend

Selection.TypeText sTextIn
Set MyData = Nothing
End Sub

> se der erro
Open References in Word VBA
Click on Browse
Pick up this file and click Open
C:\WINDOWS\SYSTEM\FM20.DLL
or from
C:\Windows\SysWOW64\FM20.DLL

> fonte: https://wordribbon.tips.net/T011626_Processing_Information_Pasted_from_a_PDF_File
> atalho https://wordribbon.tips.net/T008058_Assigning_a_Macro_to_a_Shortcut_Key.html
    save chances in "document"