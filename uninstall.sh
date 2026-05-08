#!/usr/bin/bash
cd "$(dirname "$0")"
rm -rf *
cd /usr/local/bin
rm gouda-config gouda-install gouda-uninstall gouda-upgrade
