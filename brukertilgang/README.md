
# Brukertilgang


## Oppsummering

I denne oppgaven skal vi se på hvordan vi skal unngå å bruke [root](../oss/root.md)- bruker i docker imager for å unngå at vi kjører programvare som adminstratorbruker i container.

## Hensikt

Demonstrere

- hvordan vi skifter fra priviligert bruker ([root](../oss/root.md)) til upriviligiert bruker
- hvilken effekt dette har på brukerens tilgang


## Fremgangsmåte


### Opprett docker image med rot- tilgang

- Opprett `Dockerfile` i katalogen `/workspaces/docker_intro/brukertilgang/` med følgene innhold:

```dockerfile
FROM ubuntu
```

### Bygg og start image

- Bygg og start image interaktivt.
	- Hvis du vil, kan du gjøre det i terminal:
		- `docker build . -t brukertilgang`
		- `docker run --rm -it --name brukertilgang brukertilgang`

Du skal nå få en [prompt](../oss/prompt.md) som viser at du er logget inn med brukeren `root`:
```bash
root@73afd15771b6:/$
```

### Ødelegg container

- Kjør følgende kommandoer i terminalen:

- `cd /`
- `ls`
- `rm /usr/bin/ls`
- `ls`

Forklaring:

- Linje 1 (`cd \`)
    - her går vi opp til den øverste (rotkatalogen) i operativsystemet
- Linje 2 (`ls`)
    - vi lister ut innholdet ved hjelp av kommanoen `ls`
- Linje 3 (`rm`)
    - vi sletter kommanoen `ls`
- Linje 4 (`ls`)
    - vi forsøker å kjøre kommandoen `ls`, men den er nå slettet
    - vi får denne feilmeldingen:
        - `bash: /usr/bin/ls: No such file or directory`

Dette er et eksempel på at brukeren har fått lov til å gjøre den noen ikke burde kunne gjøre.

Hvis du vil, kan du forsøke å slette flere filer og se når operativsystemet går i stykker.

- Logg ut av containeren:
    - `exit`

### Oppdater docker image med ny bruker

- Oppdater `Dockerfile` med følgene innhold:

```dockerfile
FROM ubuntu
RUN useradd -m -s /bin/bash appuser
USER appuser
```

Forklaring:

- Linje 2 (`RUN useradd`)
    - her kjører vi kommandoen `useradd` for å opprette en ny brukerkonto
    - argumentene `-m` gjør at vi oppretter home directory for den nye brukeren og `s` spesifiserer at vi skal bruke /bin/bash shell
    - til slutt sier vi hva brukernavnet skal være: `appuser` 
- Linje 3 (`USER`)
    - her bytter vi til brukeren `appuser`

### Forsøk å ødelegge container

- Bygg image, start container og logg inn

Du skal nå få en [prompt](../oss/prompt.md) som viser at du er logget inn med brukeren `appuser`:

```bash
appuser@a7afd15771b6:/$
```

- Forsøk å slette `ls` som vist ovenfor.

Du skal nå vå en bekreftelse på at du vil slette `ls`:

```bash
rm: remove write-protected regular file '/usr/bin/ls'? 
```

- Bekreft med "y"

Du skal nå få denne feilmeldingen:

```bash
rm: cannot remove '/usr/bin/ls': Permission denied
```

Hvis du vil kan du gjerne se hvor mye skade du klarer å gjøre. Forsøk også gjerne å bytte til rotbruker med kommadoen `su -` for å se om du kan gjøre mer skade på den måten.

## Opprydning

- Slett containerene
- Slett alle image
