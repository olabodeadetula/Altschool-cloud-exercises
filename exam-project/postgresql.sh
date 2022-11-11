#!/usr/bin/bash

echo "Updating Package index"
 apt update -y

echo "Installing postgres"
apt install postgresql -y

sudo systemctl enable postgresql

sudo -i -u postgres bash << EOF

echo "Create USER and DATABASE [olabode and olabodedb]"
psql
CREATE USER olabode WITH PASSWORD 'adetula';
CREATE DATABASE laraveldb WITH OWNER olabode;
EOF
