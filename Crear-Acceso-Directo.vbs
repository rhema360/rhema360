' Ejecuta este archivo desde la carpeta iq-danielpaz-server
' Crea un acceso directo en el escritorio que arranca el servidor y abre el app.

Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop")
strCarpeta = WshShell.CurrentDirectory

Set oShortcut = WshShell.CreateShortcut(strDesktop & "\IQ-DANIELPAZ.lnk")
oShortcut.TargetPath    = strCarpeta & "\IniciarJournal.bat"
oShortcut.WorkingDirectory = strCarpeta
oShortcut.Description  = "IQ-DANIELPAZ — Sistema de Trading"
oShortcut.WindowStyle  = 1
oShortcut.Save

MsgBox "Acceso directo IQ-DANIELPAZ creado en el escritorio.", 64, "Listo"
