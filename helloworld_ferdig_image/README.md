

# Hello World med ferdig image

Denne gangen skal vi spare oss bryet med å legge inn programmet som skriver hello world.

## Opprett Dockerfile

Opprett en fil som heter `Dockerfile`

## Angi basis image

Docker images baserer seg på basisimager. 

Angi hello-world som basis:

```
FROM hello-world
```

Dette imaget skriver ut noe tekst og avslutter. for mer info, se:
- https://hub.docker.com/_/hello-world/

For å kjøre imaget, bygg og kjør:

1. Bygg image
1. Start image (run interactive)

Hvis alt gikk bra, skal du se noe som likner på dette:

```
Hello from Docker!
This message shows that your installation appears to be working correctly.

(..)
```

Hvis du ser teksten, gikk alt bra!

Slett imaget før du går videre.