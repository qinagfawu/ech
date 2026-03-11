#!/system/bin/sh
read POST_DATA
echo $POST_DATA > /data/adb/echwk/config.json
echo "Content-type: text/plain"
echo
echo ok
