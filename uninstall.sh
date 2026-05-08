#!/usr/bin/bash
cd "$(dirname "$0")"
rm -rf * .git
dir_to_remove=$PWD
cd ..
rmdir $dir_to_remove
cd /usr/local/bin
rm gouda-config gouda-install gouda-uninstall gouda-upgrade gouda-chkroot
