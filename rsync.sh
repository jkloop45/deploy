#!/bin/bash
host=119.23.9.249
src=/mnt/static/vd
des=dodora
user=dodorauser
/usr/local/inotify/bin/inotifywait -mrq --timefmt '%d/%m/%y %H:%M' --format '%T %w%f%e' -e modify,delete,create,attrib $src \
| while read files
do
/usr/bin/rsync -vzrtopg --delete --progress --password-file=/usr/local/rsync/rsync.passwd $src $user@$host::$des
echo "${files} was rsynced" >>/tmp/rsync.log 2>&1
done
