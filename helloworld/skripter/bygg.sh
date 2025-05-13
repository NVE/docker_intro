source /workspaces/docker_intro/skripter/env.sh
echo -- Bygger: helloworld
cd $kursrot/helloworld/fasit/
docker build ../fasit/. -t helloworld