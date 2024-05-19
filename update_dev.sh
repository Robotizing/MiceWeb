#!/bin/sh
#
# Updater for MiceWeb (dev). It performs 'git pull' and then runs 'install.sh'.

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"

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
	echo "" 1>&2
	exit 1
fi
"$INSTALL_DIR/install_dev.sh"
