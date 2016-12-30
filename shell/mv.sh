docker exec $1 bash -c 'mv /root/temp/* /root/workspace' &&  docker exec $1 bash -c 'mv /root/temp/.* /root/workspace' 
