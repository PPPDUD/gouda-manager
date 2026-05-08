#!/bin/bash
cd "$(dirname "$0")"
chmod +x gouda-*
ln -s gouda-config gouda-install gouda-uninstall gouda-upgrade gouda-chkroot /usr/local/bin/
echo Gouda installed!
