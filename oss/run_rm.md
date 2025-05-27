### Hva betyr flagget --rm når jeg kjører docker run?

Flagget --rm gjør at Docker automatisk sletter containeren når den stopper. Du slipper å rydde opp med docker rm etterpå. Det er nyttig for midlertidige tester og engangskjøring. Uten --rm blir containeren liggende selv etter at den er ferdig. Med --rm forsvinner den med én gang den avsluttes.