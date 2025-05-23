dev := false

^Numpad5:: {
    if dev
        MsgBox "Triggered: Ctrl + Numpad5"

    LocalAppData := EnvGet("LocalAppData")

    apps := [
        { name: "chrome.exe",    command: A_ProgramFiles "\Google\Chrome\Application\chrome.exe" },
        { name: "firefox.exe",   command: A_ProgramFiles "\Mozilla Firefox\firefox.exe" },
        { name: "Discord.exe",   command: LocalAppData "\Discord\Update.exe --processStart Discord.exe" },
        { name: "pycharm64.exe", command: A_ProgramFiles "\JetBrains\PyCharm 2024.3.5\bin\pycharm64.exe" },
        { name: "ms-teams.exe",  command: "ms-teams" },
        { name: "olk.exe",       command: "olk" }
    ]

    for app in apps {
        if !ProcessExist(app.name) {
            if dev
                MsgBox app.name " is not running. Launching..."
            try Run app.command
            if dev
                MsgBox app.name " launch attempted."
        } else if dev {
            MsgBox app.name " is already running."
        }
    }

    if dev
        MsgBox "Script completed."
}
