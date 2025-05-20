
# Oppsett

## Installasjon av programvare

1. Installer WSL (Windows Subsystem for Linux)
    1. Følg instruksen "Install WSL Command" på Microsoft sine sider:
        - https://learn.microsoft.com/en-us/windows/wsl/install#install-wsl-command
1. Installer Docker Desktop fra Firmaportalen
1. Installer extention "Dev Containers" i VSCode:
    - https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

## Kloning og åpning av prosjekt

Prosjektet er laget som et versjonskontrollert prosjekt i github. 

Det kan klones med Visual Studio Code slik:

- Velg meny: `File` -> `New Window`

Nytt vindu vises. Sjekk ut prosjektet:

- Trykk `Ctrl` / `Cmd` + `P`
- Skriv:
    - `> Git clone`
- Velg Clone from github
- Logg deg inn i github hvis du blir bedt om det
- Skriv:
    - `NVE/docker_intro`
- Velg en valgfri katalog
- Vent til prosjektet er klonet
- Når du får spørsmålet "Would you like to open the cloned repository?", velger du "Open in New Window"

Når prosjektet er åpent, vises disse to meldingene:

![](./resources/open_workspace.png)

![](./resources/reopen_in_container.png)

- Velg både "Reopen i container" og "Open Workspace"

Du skal nå ha et prosjekt som ser ca. slik ut:

![](./resources/new_project.png)

- Sjekk at følgende vises i nederste venstre hjørne:

![](./resources/dev_container_connected.png)


- Sjekk at følgende Docker extension er installert:

![](./resources/docker_icon.png)

