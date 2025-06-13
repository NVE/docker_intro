


# Introduksjon til docker

Under presenteres hver av seksjonene i kurset:

## Presentasjon og info

Denne seksjonen inneholder info om selve kurset.


- Se [kurspresentasjon og info for instruktører](./doc/README.md)

## Om bruk av git

Kurset bruker [git](./oss/hvaer_git.md) og [github](./oss/hvaer_github.md) for lagring av kursinnholdet. Kurset forutsetter grunnleggende kompetanse på versjonskontrollsystemer.

## Oppsett

Før vi begynner med oppgavene må vi sette opp lokalt miljø.

Følg instruksene her:


- Seksjon [Oppsett](./oppsett/README.md)

## Oppgaver

### Hello world

For å komme gang med docker starter vi med den klassiske programmeringsoppgaven: hello world

Vi skal lære å lage et [image](./oss/hvaer_image.md) nesten fra bunnen av og tar oppsatt operativsystem og bygger på med egen funksjonalitet.

- Oppgave: [Hello World](./helloworld/README.md)


### Lagdeling

Docker bruker lag for å representere endringer mellom images aller versjoner av images.

- Oppgave: [Lagdeling](./lagdeling/README.md)


### Tilkobling til terminal

Det er nyttig å koble til kjørende containere med [terminal](./oss/ny_terminal.md) for å se tilstand på de.

- Oppgave: [Tilkobling terminal](./tilkobling_terminal/README.md)

### Installasjon av programvare

En styrke med docker, er at vi kan sette opp nødvendig programvare sammen med vår egen programvare. Vi skal se på hvordan man installerer programvare i et docker image.

- Oppgave: [Installasjon av programvare](./installasjon_programvare/README.md)


### Tjener

Docker brukes ofte til til å lage forskjellige typer tjenere. Vi skal se hvordan vi kan opprette en enkel tjener.

- Oppgave: [Tjener](./tjener/README.md)


### Filkopiering

Docker trenger, utover programvare, vanligvis egne filer. I denne oppgaven ser vi på hvordan vi kopierer inn filer fra vertsmaskinen ved bygging av image.

- Oppgave: [Filkopiering](./filkopiering/README.md)


### Fildeling

I noen tilfeller ønsker vi å dele filer til containeren slik at filene endres i container når de endres på vertsmaskin. I denne oppgaven ser vi på deling av filer fra vertsmaskin til container.

- Oppgave: [Fildeling](./fildeling/README.md)


### Brukertilgang

For å oppnå sikker bruk av docker, er det en del hensyn å ta. Et vanlig problem, er at containere kjører som adminstratorbruker (kalt [root](./oss/root.md)) i containeren

- Oppgave: [Brukertilgang](./brukertilgang/README.md)

### Tags

I docker bruker vi tags for å angi varianter av docker images. I denne oppgaven skal vi sette tags og bruke dem.

- Oppgave: [Tags](./tags/README.md)

### Docker compose

Ved hjelp av Docker Compose kan vi beskrive en applikasjon som består av flere containere i én konfigurasjonsfil, og så starte alt med én kommando. Vi bruker det for å slippe manuell håndtering av individuelle `docker run`-kommandoer, noe som gir enklere oppsett, felles nettverk/[volumer](./oss/hvaer_volume.md) og forenkler opprettelse av reproduserbare miljøer.

I denne oppgaven skal vi opprette en applikasjon som kjører i et miljø med flere containere.

- Oppgave: [Docker compose](./dockercompose/README.md)


