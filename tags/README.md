

# Tags


## Oppsummering

I denne oppgaven skal vi se på hvordan vi kan bruke tags for å versjonere og angi varianter av images.


## Hensikt

Demonstrere

- hvordan vi kan bruke tags for angi versjoner av images
- at vi kan sette flere tags på samme image for versjonering som f.eks prod og dev

## Fremgangsmåte


### Opprett dockerfile

- Opprett `Dockerfile` i katalogen `/workspaces/docker_intro/tags` med følgene innhold:

```dockerfile
FROM ubuntu
ENV melding="Versjon 1"
CMD ["bash", "-c", "echo Jeg er: $melding"]
```

### Bygg image

- Høyreklikk på Dockerfile
    - Velg `Build Image...`
    - Når du blir bedt om tag, skriv:
        - `tags:v1`

- I vinduet "Docker: Images", verifiser at versjon 1 vises:

```
 --tags
   -- v1
```

### Start versjon 1

- Høyreklikk på v1
    - Velg "Run interactive"

Følgende melding skal vises i terminalen:

```
Jeg er: Versjon 1
```

### Opprett versjon 2

- Endre linje 2 i `Dockerfile` til å vise en ny melding:

```dockerfile
ENV melding="Versjon 2"
```

- Bygg image. Når du blir bedt om tag, skriv:
    - `tags:v2`
- Start `v2` interaktivt (`Run interactive`)

Følgende melding skal vises i terminalen:

```
Jeg er: Versjon 2
```

- I vinduet "Docker: Images", verifiser at versjon 2 vises:

```
 --tags
   -- v1
   -- v2
```

### Merk som prod

Vi skal nå merke versjon 2 som produksjonsversjon.

- I vinduet "Docker: Images", høyreklikk på `v2`, velg `Tag...` og angi følgende tag:
    - `tags:prod`

- Kjør image med tag "prod"
- Verifiser at den skriver ut versjon 2

### Opprett versjon 3


- Endre linje 2 i `Dockerfile` til å vi en ny melding:

```dockerfile
ENV melding="Versjon 3"
```

- Gå til oppgavekatalogen:
    - `cd /workspaces/docker_intro/tags`
- Bygg og sett tag: `tags:v3` på kommandlinjen:

```bash
docker build . -t tags:v3
```

### Merk som dev


- Sett `dev` på `v3` og kjør image med tag `dev` på kommandolinjen:

```bash
docker tag tags:v3 tags:dev
```

- Verifiser at det er versjon 3:

```bash
docker run tags:dev
```

### List ut tags

- List opp alle images med tags på kommandolinjen:

```bash
docker image ls
```

Du skal nå få en opplisting liknende denne:

```
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
tags         v3        7f90f224039c   6 hours ago   101MB
<none>       <none>    0629805818cc   10 days ago   101MB
tags         v1        1d70f80abb36   10 days ago   101MB
tags         prod      30ad835da7f4   10 days ago   101MB
tags         v2        30ad835da7f4   10 days ago   101MB
```

## Opprydning

- Slett alle containere
- Slett alle images