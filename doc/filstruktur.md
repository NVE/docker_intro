


## Filstruktur

Kurset skal legges i en mappe som heter `docker_intro`. Det er valgfritt hvor denne mappen ligger, nen mappen må ha nøyaktig det navnet.

### Oppgavekatalog

Hver oppgave i kurset ligger i hver sin katalog, f.eks:):

- `helloworld`
- `brukertilgang`
- `dockercompose`
- `fildeling`
- `filkopiering`

Alle oppgaver har filstruktur som likner denne (eksempelet er tatt fra oppgaven "tjener"):

```

└── tjener
    ├── fasit
    ├── README.md
    ├── resources
    └── skripter

```

Legg dine oppgavebesvarelser i hver oppgavekatalog.

Filene og katalogene har denne betydningen:


- `README.md` - Hoveddokument for hver oppgave. Start her.
- `resources` - ressursfiler (bilder o.l.) som brukes av `README.md`
- `fasit` - Filer som inneholder hele eller deler av fasit. Kan brukes om du står fast.
- `skripter` - skripter/ programmer som kan brukes for å teste installasjon og/ eller rydde opp. Skal inneholdet skriptet `ryddop.sh` som rydder opp containere, images m.m.

### Andre kataloger

Rotkatalogen har i tillegg andre nyttige kataloger:

- `oss` - Inneholder info/ ofte stilte spørsmål. Kan brukes for oppslagsverk.
- `generert_dokumentasjon` - inneholder dokumentasjon for kurset i formater som word, pdf o.l. Disse genereres fra Markdown.
- `doc` - Dokumentasjon om selve kurset.
- `.devcontainer` - Oppsett av utviklingsmiljø
- `nextcloud` - Valgfri oppgave/ demo for oppsett av komplett kontorstøtteapplikasjon.



