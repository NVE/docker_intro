echo "Fikser linjeskift og rettigheter...."
sudo dos2unix /workspaces/docker_intro/skripter/konverterfiler.sh
sudo /workspaces/docker_intro/skripter/konverterfiler.sh
git config --global core.autocrlf false
git reset --hard
