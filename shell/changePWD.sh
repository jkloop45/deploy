docker exec $1 bash -c "echo 'root:$2' | chpasswd"
