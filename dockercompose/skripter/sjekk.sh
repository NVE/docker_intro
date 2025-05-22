#!/bin/bash
source /workspaces/docker_intro/skripter/env.sh
echo -- Sjekker: dockercompose

cd $kursrot/dockercompose/fasit/helloworld
docker-compose up
docker-compose down

cd $kursrot/dockercompose/webapp

docker-compose up -d
docker-compose down