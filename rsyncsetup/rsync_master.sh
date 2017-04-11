yum -y install rsync xinetd

echo "dodorarsync" >/etc/rsync.passwd
cp /root/gospely/deploy/rsyncsetup/rsync /etc/xinetd.d/
chmod 600 /etc/rsync.passwd

bash -c "cd /usr/src/ && wget http://cloud.github.com/downloads/rvoicilas/inotify-tools/inotify-tools-3.14.tar.gz  &&  tar zxvf inotify-tools-3.14.tar.gz  && cd inotify-tools-3.14 && ./configure --prefix=/usr/local/inotify &&  make && make install"

cp /root/gospely/deploy/rsyncsetup/rsync.sh /mnt/static/vd

chmod 764 /mnt/static/vd/rsync.sh

service xinetd start
chkconfig xinetd on
sh /mnt/static/vd/rsync.sh
echo "/mnt/static/vd/rsync.sh" >> /etc/rc.local
