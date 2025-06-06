

# Installasjon av programvare


## Oppsummering

I denne oppgaven skal vi se på hvordan vi installerer programvare i et docker image.

## Hensikt

Demonstrere hvordan vi

- installerer programvare i et image


## Fremgangsmåte



### Opprett image

- Opprett `Dockerfile` i katalogen `/workspaces/docker_intro/installasjon_programvare/` med følgene innhold:

```dockerfile
FROM ubuntu
RUN apt update
RUN apt install -y cowsay
CMD ["/usr/games/cowsay", "MmmooOOOoohoo iiiIIuuuUURRRR"]
```
og bygg imaget på vanlig måte.

- Forklaring:
    - linje 1
        - vi baserer oss på standard [ubuntu](../oss/hvaer_ubuntu.md)- installasjon
    - linje 2
        - vi oppdatere listen over pakker ved hjelp av [apt](../oss/hvaer_apt.md)
    - linje 3
        - vi installerer programmet [cowsay](../oss/hvaer_cowsay.md) ved hjelp av [apt](../oss/hvaer_apt.md)
            - flagget `-y` betyr at vi ikke trenger å akseptere installasjon manuelt med tasten "y"
    - linje 4
        - `cowsay` skal startes ved oppstart og gir en melding på terminalen

Du har nå et image som installerer programvaren `cowsay` under bygging og starter det når image kjøres.
### Kjør container

- Start image
    - Hvis du vil, kan du starte det i terminalen:
        - `docker run --rm -it installasjon_programvare`

- Du skal nå se en melding i terminalen som likner på dette:

```
 ______________________________
< MmmooOOOoohoo iiiIIuuuUURRRR >
 ------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

## Opprydning

- Slett image
