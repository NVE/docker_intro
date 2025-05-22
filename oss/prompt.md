### Hva er en prompt, og hvordan tolker jeg den?

Her er eksempler på prompter:

```bash
root@a5c839dac946:/#
```

```bash
gunnar@laptop:~/prosjekt
```

En Linux-prompt er teksten som vises i terminalen for å signalisere at skallet/ kommandolinjen (f.eks. bash eller zsh) er klart til å motta en kommando.

Typisk inneholder den brukernavn, vertnavn og gjeldende arbeidskatalog.

En typisk Linux-prompt er ofte (og i eksemplene ovenfor) satt sammen av flere deler:

- Brukernavn – navnet på kontoen som er logget inn.
- Alfakrøll og vertsnavn – skiller brukernavn fra navnet på maskinen du sitter på, f.eks. `@laptop`.
- Kolon og gjeldende katalog – viser hvor du befinner deg i filsystemet, som `~/prosjekt`.
- Prompt-symbol ($ eller #) – $ for vanlig bruker, # for root; signaliserer også at skallet venter på ny kommando.

Det er mulig å gjøre tilpasninger på promptet som i eksempelet som brukes i Visual Studio før du går inni en terminal:

```bash
vscode ➜ /workspaces/docker_kurs/brukertilgang/fasit (master) $
```

Her vises git branch i tillegg til `(master)`.