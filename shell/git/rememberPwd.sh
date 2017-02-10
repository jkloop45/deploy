docker exec $1 bash -c "echo https://$2:$3@github.com > ~/.git-credentials && git config --global credential.helper store"
