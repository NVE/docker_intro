source /workspaces/docker_intro/skripter/env.sh
echo -- Bygger: filkopiering

cd $kursrot/filkopiering/fasit
cp -r ../webroot/ .
docker build . -t filkopiering
rm -rf ./webroot