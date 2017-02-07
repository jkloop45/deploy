docker exec $1 bash -c "git status | tail -n +6 | head -n -2 | awk '{print $2}'"
