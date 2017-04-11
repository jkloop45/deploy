yum -y install rsync xinetd

echo "dodorauser:dodorarsync" >/etc/rsync.passwd
cp /root/gospely/deploy/rsyncsetup/rsync /etc/xinetd.d/
chmod 600 /etc/rsync.passwd

cp -f /root/gospely/deploy/rsyncsetup/rsyncd.conf /etc

service xinetd start
chkconfig xinetd on
