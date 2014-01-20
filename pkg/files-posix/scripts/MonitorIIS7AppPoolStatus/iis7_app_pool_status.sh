#!/usr/bin/sh
..\..\apache\php\php rcs.php -h=$UPTIME_HOSTNAME -p=$UPTIME_PORT -s=$UPTIME_PASSWORD -c="iis7_app_pool_status" -a="$UPTIME_APP_POOL"
