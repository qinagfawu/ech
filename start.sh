#!/system/bin/sh

MODDIR=/data/adb/modules/echwk
CONFIG=/data/adb/echwk/config.json

SERVER=$(grep server $CONFIG | cut -d '"' -f4)
PORT=$(grep local_port $CONFIG | grep -o '[0-9]*')
DOH=$(grep ech_doh $CONFIG | cut -d '"' -f4)
ECHDOMAIN=$(grep ech_pub_domain $CONFIG | cut -d '"' -f4)
IP=$(grep preferred_ip $CONFIG | cut -d '"' -f4)
TOKEN=$(grep token $CONFIG | cut -d '"' -f4)

pkill ech-workers

$MODDIR/system/bin/ech-workers \
-f $SERVER \
-l 127.0.0.1:$PORT \
-doh $DOH \
-ech $ECHDOMAIN \
-ip $IP \
-token $TOKEN \
-routing global & 
