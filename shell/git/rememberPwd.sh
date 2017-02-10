docker exec $1 bash -c "echo https://$1:$2@github.com > ~/.git-credentials && git config --global credential.helper store"
