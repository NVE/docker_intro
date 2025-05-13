### Hva betyr flagget --it når jeg kjører docker run?

Flagget --it i docker run er en kombinasjon av to flagg:

- `-i` (interactive): Holder standard input (stdin) åpen, slik at du kan skrive inn kommandoer.
- `-t` (tty): Allokerer et pseudo-terminal, slik at du får en "ekte" terminalopplevelse.

Sammen gjør --it det mulig å bruke terminalen interaktivt. Da får du et interaktivt shell inne i containeren. Uten --it ville det bare kjørt kommandoen og lukket seg.