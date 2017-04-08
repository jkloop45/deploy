docker stop gospel_bbs_mongo && docker rm gospel_bbs_mongo
docker run -itd -v /mnt/bbs/data:/data/db --name gospel_bbs_mongo -m 500m --memory-swap 500m daocloud.io/mongo

docker stop gospel_club && docker rm gospel_club
docker run -it --name gospel_club --link gospel_bbs_mongo:mongo -p 4567:4567 benlubar/nodebb /bin/bash
