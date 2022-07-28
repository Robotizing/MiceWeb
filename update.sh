#!/bin/sh
#
# Updater for MiceWeb. It performs 'git pull' and then runs 'install.sh'.

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"

miceweb backup >/dev/null
OLDVER="$(miceweb version 2>/dev/null)"
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
	if [ $RET -ne 0 ]; then
	    echo "Can't pull updates from $(git remote get-url origin)" 1>&2
	fi
    fi
fi
cd - >/dev/null
if [ $RET -ne 0 ]; then
	echo "Can't update MiceWeb, try to run 'git pull' manually" 1>&2
	echo "Feel free to run 'miceweb discuss'" 1>&2
	echo ""
	exit 1
fi
"$INSTALL_DIR/install.sh"
NEWVER="$(miceweb version 2>/dev/null)"
if [ "$OLDVER" != "$NEWVER" ]; then
	echo "Updated from v.$OLDVER to v.$NEWVER"
	echo "" 1>&2
fi

