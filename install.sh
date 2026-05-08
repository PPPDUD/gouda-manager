#!/bin/bash
cd "$(dirname "$0")"
chmod +x gouda-* *.sh
cp gouda-config gouda-install gouda-uninstall gouda-upgrade /usr/local/bin/
echo Gouda installed to /usr/local/bin!
