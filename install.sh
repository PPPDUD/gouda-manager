#!/bin/bash
cd "$(dirname "$0")"
cp gouda-config gouda-install gouda-uninstall gouda-upgrade /usr/local/bin/
echo Gouda installed to /usr/local/bin!