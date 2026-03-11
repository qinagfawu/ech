#!/system/bin/sh
MODDIR=${0%/*}
mkdir -p /data/adb/echwk
sleep 10
sh $MODDIR/start.sh
$MODDIR/system/bin/busybox httpd -p 9090 -h $MODDIR/webui -c $MODDIR/api
