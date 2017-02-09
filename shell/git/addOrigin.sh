docker exec $1 bash -c "git init && git remote add origin $2 && git config user.name $3 --replace-all && git config user.email $4 --replace-all"
