#!/bin/bash
#
# Installation script for SaveWeb. It tries to move $bin in one of the
# directories stored in $binpaths.

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"

bin="$INSTALL_DIR/miceweb"
binpaths="/usr/local/bin"

OLDVER="$(miceweb version)"
git pull
if [ $? -ne 0 ]; then
	exit 1
fi
NEWVER="$(miceweb version)"
if [[ "$OLDVER" != "$NEWVER" ]]
then
	echo "Updated from v.$OLDVER to v.$NEWVER"
fi

