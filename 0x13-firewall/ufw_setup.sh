#!/usr/bin/env bash
apt-get -y update
apt-get install -y ufw
ufw disable
ufw default deny incoming
ufw default allow outgoing
systemctl stop ufw
ufw allow 22/tcp
ufw allow 443/tcp
ufw allow 80/tcp
ufw enable
