#!/usr/bin/sh

inst=`grep ^inst /etc/init.d/uptime_httpd | cut -d= -f2`
MIBDIRS=$inst/mibs
export MIBDIRS

/usr/local/uptime/apache/bin/php rcs.php -h=$UPTIME_HOSTNAME -p=$UPTIME_PORT -s=$UPTIME_PASSWORD -c="iis7_app_pool_status" -a="$UPTIME_APP_POOL"
