source /workspaces/docker_intro/skripter/env.sh
echo -- Bygger: tilkobling_terminal
cd $kursrot/tilkobling_terminal/
docker build ./fasit/. -t tilkobling_terminal
