#!/usr/bin/bash
cd "$(dirname "$0")"
rm -rf * .git
rmdir .
cd /usr/local/bin
rm gouda-config gouda-install gouda-uninstall gouda-upgrade gouda-chkroot