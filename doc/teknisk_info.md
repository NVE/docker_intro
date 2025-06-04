## Teknisk info

Informasjonen under er nyttig for de som skal videreutvikle kurset eller være kursholder.

### Installasjon av utviklingsverktøy

Du trenger en del programmer for å generere dokumentasjon eller utvikle på koden i kurset. For å redusere tiden det tar å sette opp miljø i devcontainer, så er en del av disse programmer utelatt fra miljøet. Nødvendig programvare installeres med dette skriptet:

```bash
/workspaces/docker_intro/skripter/installerutviklingsverktoy.sh
```


### Fellesskripter

I katalogen `skripter`under hovedkatalogen finnes følgende skripter som kan være nyttige:

- `env.sh` - Setter felles miljøvariabler. Kalles fra andre skripter
- `genererdiagrammer.sh` - Genererer diagrammer (forutsetter installasjon av utviklingsverktøy, se over)
- `genererdokumentasjon.sh`  - Genererer dokumentasjon i forskjellige formater (forutsetter installasjon av utviklingsverktøy, se over)
- `installerutviklingsverktoy.sh` - Se over
- `konverterfiler.sh` - Konverterer filer i evt. Windowsformat over til unix og setter eksekverbarflagg på skripter. Kalles automatisk ved installasjon av dev container.
- `ryddopp.sh` - Fjerner alle containere og images. Nyttig for feilsøking.
- `testalt.sh` - Kjører alle skripter for alle oppgaver. Nyttig for verifikasjon av feilsøking.
