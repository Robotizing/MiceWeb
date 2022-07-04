#!/bin/sh
#
# Updater for MiceWeb. It performs 'git pull'.

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"

OLDVER="$(miceweb version)"
cd "$INSTALL_DIR"
git pull
RET=$?
if [ $RET -ne 0 ]; then
    git stash
    RET=$?
    if [ $RET -eq 0 ]; then
	echo "Stashed local changes, run 'git stash pop' to bring back them"
	git pull
	RET=$?
    fi
fi
cd - >/dev/null
if [ $RET -ne 0 ]; then
	echo "Can't update MiceWeb, try to run 'git pull' manually"
	exit 1
fi
NEWVER="$(miceweb version)"
if [ "$OLDVER" != "$NEWVER" ]
then
	echo "Updated from v.$OLDVER to v.$NEWVER"
fi

