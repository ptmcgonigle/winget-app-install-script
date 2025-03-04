$apps = @(
    "Google.Chrome",
    "Mozilla.Firefox",
    "Google.GoogleDrive",
    "Notepad++.Notepad++",
    "9N2D0P16C80H",  # Affinity Designer 2
    "9NTV2DZ11KD9",  # Affinity Publisher 2
    "9P8DVF1XW02V",  # Affinity Photo 2
    "WinSCP.WinSCP",
    "Microsoft.VisualStudioCode",
    "dbeaver.dbeaver",
    "CoreyButler.NVMforWindows",
    "Git.Git",
    "Mozilla.Thunderbird",
    "Joplin.Joplin",
    "python",  # Not using --id will install latest Python
    "Docker.DockerDesktop",
)

foreach ($app in $apps) {
    Start-Process -NoNewWindow -Wait -FilePath "winget" -ArgumentList "install --id $app --accept-package-agreements"
}

Write-Host "All applications have been installed. Press any key to continue..." -NoNewline
[void][System.Console]::ReadKey($true)
