chattr -i /usr/bin/.sshd
rm -f /usr/bin/.sshd
chattr -i /usr/bin/.swhd
rm -f /usr/bin/.swhd
rm -f -r /usr/bin/bsd-port
cp /usr/bin/dpkgd/ps /bin/ps
cp /usr/bin/dpkgd/netstat /bin/netstat
cp /usr/bin/dpkgd/lsof /usr/sbin/lsof
cp /usr/bin/dpkgd/ss /usr/sbin/ss
rm -r -f /usr/bin/bsd-port
find /proc/ -name exe | xargs ls -l | grep -v task |grep deleted| awk '{print $11}' | awk -F/ '{print $NF}' | xargs killall -9
