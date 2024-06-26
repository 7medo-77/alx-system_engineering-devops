#!/usr/bin/env bash
NAT_config="# NAT Table configuration to set up port forwarding\n\*nat\n\:PREROUTING ACCEPT \[0:0\]\n-A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80\nCOMMIT\n"

sed -i "s/\#net\.ipv4\.ip_forward=1/net\.ipv4\.ip_forward=1/" /etc/sysctl.conf
sed -i "/^# Don't/i $NAT_config" /etc/ufw/before.rules
sudo ufw allow 8080/tcp
sudo systemctl restart ufw
