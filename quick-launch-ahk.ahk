#SingleInstance

dev := false

^Numpad5:: {
    LocalAppData := EnvGet("LocalAppData")

    apps := [
        { name: "pycharm64.exe", command: A_ProgramFiles "\JetBrains\PyCharm 2024.3.5\bin\pycharm64.exe" },
        { name: "pgAdmin4.exe",  command: A_ProgramFiles "\pgAdmin 4\runtime\pgAdmin4.exe" },
        { name: "ms-teams.exe",  command: "ms-teams" },
        { name: "chrome.exe",    command: A_ProgramFiles "\Google\Chrome\Application\chrome.exe" },
        { name: "firefox.exe",   command: A_ProgramFiles "\Mozilla Firefox\firefox.exe" },
        { name: "Discord.exe",   command: LocalAppData "\Discord\Update.exe --processStart Discord.exe" },
        { name: "olk.exe",       command: "olk" },
        { name: "Notepad.exe",   command: "notepad" }
    ]

    for app in apps {
        if dev {
            MsgBox "Chemin de " app.name ":`n" app.command
        }

        if !ProcessExist(app.name) {
            if dev
                MsgBox app.name " n'est pas en cours d'exécution. Lancement..."
            try Run app.command
            if dev
                MsgBox app.name " → tentative de lancement."
        } else if dev {
            MsgBox app.name " est déjà en cours d'exécution."
        }
    }

    if dev
        MsgBox "Script terminé."
}
