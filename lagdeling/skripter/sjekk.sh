echo -- Sjekker: lagdeling
echo
echo - Kjører: lagdeling
docker run --rm -it lagdeling
echo
echo - Kjører: helloworld
docker run --rm -it helloworld
echo
echo - Lag for helloworld:
docker history helloworld
echo
echo - Lag for lagdeling:
docker history lagdeling

