### Hva er et volume?

Et Docker-volume er en lagringsressurs som docker oppretter og vedlikeholder utenfor containerens image.

Data som lagres der, slettes ikke når containeren stoppes, oppgraderes eller fjernes, og kan deles mellom flere containere.

Dete gir vedvarende, portable og backup-vennlige data uten å binde deg til en bestemt sti på verten.

Du oppretter volumet med docker volume create og monterer det i containere via `-v` eller `--mount`-flagget.
