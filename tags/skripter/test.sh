source /workspaces/docker_intro/skripter/env.sh
echo -- Kjører skript for tags
$kursrot/tags/skripter/bygg.sh
$kursrot/tags/skripter/sjekk.sh
$kursrot/tags/skripter/ryddopp.sh