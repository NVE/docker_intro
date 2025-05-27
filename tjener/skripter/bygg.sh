source /workspaces/docker_intro/skripter/env.sh
echo -- Bygger: tjener
cd $kursrot/tjener/
docker build ./fasit/. -t tjener
