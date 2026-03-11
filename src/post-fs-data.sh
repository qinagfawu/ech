#!/system/bin/sh
mkdir -p /data/adb/echwk
if [ ! -f /data/adb/echwk/config.json ]; then
  cat > /data/adb/echwk/config.json <<EOF
  {
    "server": "example.workers.dev:443",
    "local_port": 1080,
    "ech_doh": "dns.alidns.com/dns-query",
    "ech_pub_domain": "cloudflare-ech.com",
    "preferred_ip": "",
    "token": "",
    "mode": "global"
  }
  EOF
fi
chmod -R 755 /data/adb/echwk
