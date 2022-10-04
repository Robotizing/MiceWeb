#!/bin/sh
#
# Installation script for MiceWeb. It copies $bin to one of the
# directories stored in $binpaths.

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"

bin="$INSTALL_DIR/miceweb"
binpaths="/usr/local/bin /usr/bin"

# This variable contains a nonzero length string in case the script fails
# because of missing write permissions.
is_write_perm_missing=""

for binpath in $binpaths; do
    cp --no-clobber "$binpath/miceweb" "$binpath/miceweb.bak" 2>/dev/null
    if cp "$bin" "$binpath/miceweb" ; then
	echo "Copied $bin to $binpath" 1>&2
	echo "Run 'miceweb' in the terminal" 1>&2
	echo "" 1>&2
	exit 0
    else
	if [ -e "$binpath/miceweb" ]; then
	    echo "Check '$binpath/miceweb', move it to other place and run '$0' again" 1>&2
	    echo "" 1>&2
	    exit 1
	fi
	if [ -d "$binpath" -a ! -w "$binpath" ]; then
	    is_write_perm_missing=1
	fi
    fi
done

echo "We cannot install $bin in $binpaths"

if [ -n "$is_write_perm_missing" ]; then
  echo "It seems that we do not have the necessary write permissions" 1>&2
  echo "Perhaps try running this script as a privileged user:" 1>&2
  echo "" 1>&2
  echo "    sudo $0" 1>&2
  echo "" 1>&2
fi

exit 1
