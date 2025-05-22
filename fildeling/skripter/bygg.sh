source /workspaces/docker_intro/skripter/env.sh

echo -- Bygger: fildeling

cd $kursrot/fildeling/fasit
cp -r ../webroot/ .

docker build . -t fildeling