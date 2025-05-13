source /workspaces/docker_intro/skripter/env.sh
echo -- Kjører skript for dockercompose
$kursrot/dockercompose/skripter/bygg.sh
$kursrot/dockercompose/skripter/sjekk.sh
$kursrot/dockercompose/skripter/ryddopp.sh