

# Fildeling


## Oppsummering

I denne oppgaven skal vi se på hvordan vi kan deler filer fra verstsmaskinen inn til containeren. Deling av filer gjøres ved hjelp av [volumer](../oss/hvaer_volume.md).


## Hensikt

Demonstrere

- hvordan vi kan dele filer til containeren
- at når vi endrer filer på vertsmaskin, endres de også i container


## Fremgangsmåte

### Opprett dockerfile

- Opprette `Dockerfile` i katalogen `/workspaces/docker_intro/fildeling` med følgende innhold:

```
FROM ubuntu
RUN apt update
RUN apt install -y python3
RUN mkdir /webroot
CMD ["python3","-m","http.server","8080", "--directory", "/webroot"]
EXPOSE 8080
```

- Forklaring:
    - Linje 4:
        - Her oppretter vi katalogen som skal deles. Katalogen blir erstattet med katalogen på vertsmaskin ved oppstart

### Opprett container

- Bygg image og gi det navnet `fildeling`
- Start ny [terminal](../oss/ny_terminal.md) eller gjenbruk eksisterende
- Gå til oppgavekatalogen:
    - `cd /workspaces/docker_intro/fildeling/`
- Start image fra [terminalen](../oss/ny_terminal.md):
    - Gå til riktig mappe:
        - `cd /workspaces/docker_intro/fildeling/`
    - Start image:
        - `docker run --rm -i -d --name fildeling -p 8080:8080/tcp -v ./webroot:/webroot fildeling`

Forklaring

- flagget `-v` angir at vi skal dele en fil eller katalog
    - første sti angir stien på versmaskin
    - stiene adskilles med `:`
    - andre sti angir stien på containeren

### Test websiden

- Åpne nettleser og gå til `localhost:8080`
    - du skal nå se en vakker hjemmeside



### Test endringer

Siden filene nå er delt, vil siden endre seg dersom du endrer på filene i katalogen webroot utenfor containeren.

- Endre på `index.html` utenfor kontaineren
    - sett f.eks ny overskrift
- bekreft at siden endres når du frisker opp nettleseren.

## Opprydning

- Slett containeren
- Slett image