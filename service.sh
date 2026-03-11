#!/system/bin/sh

MODDIR=${0%/*}

mkdir -p /data/adb/echwk

# 等待配置文件生成
sleep 10

sh $MODDIR/start.sh

# 启动 WebUI
$MODDIR/system/bin/busybox httpd -p 9090 -h $MODDIR/webui -c $MODDIR/api
