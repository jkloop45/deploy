docker exec $1 bash -c "git remote set-url origin $2 && git config user.name $3 --replace-all && git config user.email $4 --replace-all"
