#!/bin/sh
#
# Updater for MiceWeb. It performs 'git pull'.

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"

OLDVER="$(miceweb version)"
cd "$INSTALL_DIR"
git pull
RET=$?
cd -
if [ $RET -ne 0 ]; then
	exit 1
fi
NEWVER="$(miceweb version)"
if [[ "$OLDVER" != "$NEWVER" ]]
then
	echo "Updated from v.$OLDVER to v.$NEWVER"
fi

