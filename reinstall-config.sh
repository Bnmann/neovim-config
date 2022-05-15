#!/bin/sh

set -eu

INSTALL_DIRECTORY="$(cd ~/.config && pwd)/nvim"
CONFIG_DIRECTORY=$(pwd)

rm -rf $INSTALL_DIRECTORY
mkdir -p $INSTALL_DIRECTORY
echo "INSTALL_DIRECTORY: $INSTALL_DIRECTORY"

for f in $(find . -regex ".*\.vim$\|.*\.lua$"); do
    source=$(realpath "$CONFIG_DIRECTORY/$f")
    relative=$(realpath --relative-to="$CONFIG_DIRECTORY" "$f")
    destination=$(realpath -m "$INSTALL_DIRECTORY/$f")
    destination_dir=$(dirname $destination)
    mkdir -p "$destination_dir"
    echo "Installing $relative"
    ln -s "$source" "$destination"
done
