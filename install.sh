#!/bin/bash
cd "$(dirname "$0")"
chmod +x *.sh
cp gouda-config gouda-install gouda-uninstall gouda-upgrade /usr/local/bin/
chmod +x /usr/local/bin/gouda-*
echo Gouda installed to /usr/local/bin!
