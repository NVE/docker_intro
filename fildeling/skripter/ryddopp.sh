source /workspaces/docker_intro/skripter/env.sh
echo -- Rydder opp: fildeling

cd $kursrot/fildeling/fasit

rm -rf ./webroot

docker container stop fildeling
docker image rm fildeling