#!/bin/sh
#
# Updater for MiceWeb (release)

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$INSTALL_DIR"

if git fetch --tags; then
	release=$(git describe --tags "$(git rev-list --tags --max-count=1)")
	echo "Fetched MiceWeb releases, the last one is $release" 1>&2
else
	echo "Error: can't fetch from $(git remote get-url origin), check connection" 1>&2
fi

"$INSTALL_DIR/install.sh"
