#!/usr/bin/bash
cd "$(dirname "$0")"
git pull
chmod +x ./install.sh
./install.sh