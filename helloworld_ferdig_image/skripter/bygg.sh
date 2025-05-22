source /workspaces/docker_intro/skripter/env.sh
echo -- Bygger: helloworld_ferdig_image
cd $kursrot/helloworld_ferdig_image/fasit/
docker build ../fasit/. -t helloworld_ferdig_image