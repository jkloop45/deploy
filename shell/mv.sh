docker exec $1 bash -c 'cp -r /root/temp/* /root/workspace' &&  docker exec $1 bash -c 'cp -r /root/temp/.* /root/workspace' 
