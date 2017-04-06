service docker stop

mv /var/lib/docker /mnt/docker

ln -s /mnt/docker /var/lib/docker
ls /var/lib/docker
service docker start

sh /gospely/deploy/auto_setup.sh

#devicemapper 扩容
# dd if=/dev/zero of=/mnt/docker/devicemapper/devicemapper/data bs=1G count=0 seek=250
