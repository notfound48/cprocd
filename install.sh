#!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -e $0))

cp ${SCRIPT_DIR}/cprocessing /usr/local/bin/
touch /etc/cprocd.list
cp -s ${SCRIPT_DIR}/cprocd /etc/init.d/

update-rc.d cprocd defaults

echo "
fs.inotify.max_user_watches = 16777216 
fs.inotify.max_queued_events = 65536
" >> /etc/sysctl.conf

echo "
/var/log/cprocd.log {
   rotate 2
   size=16M
   missingok
   nocopytruncate
   nocreate
   nodelaycompress
   nomail
   notifempty
   noolddir
   compress
}" >> /etc/logrotate.conf

echo 16777216 > /proc/sys/fs/inotify/max_user_watches
echo 65536 > /proc/sys/fs/inotify/max_queued_events
