docker exec $1 bash -c "git remote -v | head -1 | awk '{print $2}'"
