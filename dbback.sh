bash -c " cd /mnt/data && zip -r postgres.zip postgres && git add . && git commit -m 'update' && git push && echo backup: $(date '+%Y%m%d %H:%M:%S') >> /mnt/data/log.txt"
