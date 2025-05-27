

# Tilkobling med terminal


## Oppsummering

I denne oppgaven skal vi se på hvordan vi kan koble oss til en kjøre docker container og utføre kommandoer

## Hensikt

Demonstrere

- hvordan vi starter en container med interaktiv terminal
- hvordan vi kobler oss opp mot en kjørende container


## Fremgangsmåte

### Opprett image

- Opprett `Dockerfile` med følgene innhold:

```
FROM ubuntu
```
### Bygg og start image

- Bygg image basert på `Dockerfile`:
    - høyreklikk på fil og velg `Build image`
    - angi følgende navn: `tilkobling_terminal`

### Koble til interaktive terminal

- Start image i interaktiv modus
    - I vindu "Docker: Images":
        - høyreklikk på image `tilkobling_terminal`
        - velg "Run interactive"


Visual Studio viser nå en [prompt](../oss/prompt.md) (kommandolinje) i et terminalvindu:

```bash
root@3a2899245da9:/#
```

- ***Tips:*** Du kan også starte et interaktivt skall direkte fra terminalen:
    - `docker run --rm -it tilkobling_terminal`


### Utfør kommandoer

- Du kan nå kjøre forskjellige kommandoer:
    - Vis liste over filer og kataloger med kommandoen `dir`
    - Bytt katalog med kommandoen `cd`, f.eks:
        - `cd /home/ubuntu/`
    - Skriv ut en melding på konsollet kommandoen `echo`, f.eks:
        - `echo Hello IUR!`

- Du kan gjerne også teste ut [andre kommandoer](../oss/vanlige_kommandoer_i_bash.md)
    - Merk at noen av de krever at programmer er installert (f.eks `nano`). Det docker imaget vi har brukt er minimert for å redusere størrelsen.

### Installer og kjør programvare manuelt

- Vi skal nå installere noen programmer på imaget.
    - Først må vi oppdatere liste over tilgjengelige pakker.
        - Skriv `apt update`
    - Installer programmet `cowsay` og `fortune`:
        - For å installere programmer i Linux bruker man operativsystemets integrerte package manager. For Ubuntu er dette `apt`
        - Skriv `apt install cowsay` -> du får spørsmål `Do you want to continue? [Y/n]` aksepter med `enter` eller `y`
        - Gjør det samme for `fortune`

- Test programmet `fortune`:
    - `/usr/games/fortune`
    - Du skal nå få en oppmuntrende melding, f.eks:

```bash
root@dba090c7e0ec:/# /usr/games/fortune 
Give your very best today.  Heaven knows it's little enough.
```

- Test programmet `cowsay`:
    - `/usr/games/cowsay Moooo IUR!`
    - Du skal nå få en ku med melding:

```bash
root@dba090c7e0ec:/# /usr/games/cowsay Moooo IUR!
 ____________
< Moooo IUR! >
 ------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

### Logg ut

- Logg deg ut av terminalen:
    - `exit`

## Opprydning

- Slett containeren:
    - I vindu "Docker: Containers":
        - Høyreklikk på container `tilkobling_terminal`
        - velg `Remove...` og aksepter advarsel

- Slett image