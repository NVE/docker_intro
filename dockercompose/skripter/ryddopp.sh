source /workspaces/docker_intro/skripter/env.sh

echo -- Rydder opp: dockercompose

cd $kursrot/dockercompose/
docker-compose down
docker image rm dockercompose-helloworld

cd $kursrot/dockercompose/fasit/helloworld
docker-compose down
docker image rm helloworld-helloworld

cd $kursrot/dockercompose/fasit/helloworld
docker-compose down


docker image rm postgres:15
docker image rm webapp-app

docker volume prune -f
docker network prune -f

