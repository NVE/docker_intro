source /workspaces/docker_intro/skripter/env.sh
echo -- Bygger: brukertilgang

cd $kursrot/brukertilgang/fasit
docker build . -t brukertilgang