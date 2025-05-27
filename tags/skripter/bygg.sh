source /workspaces/docker_intro/skripter/env.sh

echo -- Bygger: tags

cd $kursrot/tags/fasit
docker build . -t tags