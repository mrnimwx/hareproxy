#!/bin/bash

# install.sh

echo "📦 Installing HAProxy..."
apt update && apt install -y haproxy

echo "📁 Placing HAProxy config..."
cp haproxy.cfg /etc/haproxy/haproxy.cfg

echo "🔄 Restarting HAProxy..."
systemctl enable haproxy
systemctl restart haproxy

echo "✅ HAProxy is set up and running!"
