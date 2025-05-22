source /workspaces/docker_intro/skripter/env.sh
echo -- Bygger: installasjon_programvare
cd $kursrot/installasjon_programvare/
docker build ./fasit/. -t installasjon_programvare
