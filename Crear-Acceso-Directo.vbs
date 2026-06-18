Dim ws, shortcut, desktopPath

Set ws = WScript.CreateObject("WScript.Shell")
desktopPath = ws.SpecialFolders("Desktop")

Set shortcut = ws.CreateShortcut(desktopPath & "\IQ Journal.lnk")
shortcut.TargetPath = "C:\Users\pazde\iq-danielpaz-server\IniciarJournal.bat"
shortcut.WorkingDirectory = "C:\Users\pazde\iq-danielpaz-server"
shortcut.WindowStyle = 7
shortcut.Description = "IQ Daniel Paz - Trade Journal"
shortcut.Save

WScript.Echo "Acceso directo creado en el escritorio: IQ Journal"
