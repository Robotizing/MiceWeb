#!/bin/sh
#
# Installation script for SaveWeb. It tries to move $bin in one of the
# directories stored in $binpaths.

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"

bin="$INSTALL_DIR/miceweb"
binpaths="/usr/local/bin"

# This variable contains a nonzero length string in case the script fails
# because of missing write permissions.
is_write_perm_missing=""

for binpath in $binpaths; do
  if ln -s "$bin" "$binpath/miceweb" ; then
    echo "Created a symbolic link of $bin in $binpath"
    echo "Run 'miceweb' in the terminal"
    exit 0
  else
    if [ -e "$binpath" ]; then
      echo "Check '$binpath/miceweb', move it to other place and run '$0' again"
      exit 1
    fi
    if [ -d "$binpath" ] && [ ! -w "$binpath" ]; then
      is_write_perm_missing=1
    fi
  fi
done

echo "We cannot install $bin in $binpaths"

if [ -n "$is_write_perm_missing" ]; then
  echo "It seems that we do not have the necessary write permissions."
  echo "Perhaps try running this script as a privileged user:"
  echo
  echo "    sudo $0"
  echo
fi

exit 1
