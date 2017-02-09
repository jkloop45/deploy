docker exec -it $1 kill -9 $(docker exec -it $1 netstat -anp | grep $2 | awk '{printf $7}'|cut -d/ -f1) && docker -it exec $1 bash -c '$3'
