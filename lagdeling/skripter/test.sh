source /workspaces/docker_intro/skripter/env.sh
echo -- Kjører skript for lagdeling
$kursrot/lagdeling/skripter/bygg.sh
$kursrot/lagdeling/skripter/sjekk.sh
$kursrot/lagdeling/skripter/ryddopp.sh