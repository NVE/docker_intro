source /workspaces/docker_intro/skripter/env.sh
echo -- Bygger: lagdeling
$kursrot/helloworld/skripter/bygg.sh
cd /workspaces/docker_intro/lagdeling/fasit/
docker build . -t lagdeling