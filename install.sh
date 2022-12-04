#!/bin/sh

set -eu

readonly CONFIG_INSTALL_DIRECTORY="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
readonly CONFIG_SOURCE_DIRECTORY=$(pwd)

function install_file
{
    local file="$1"
    local source="$(realpath "$CONFIG_SOURCE_DIRECTORY/$file")"
    local relative="$(realpath --relative-to="$CONFIG_SOURCE_DIRECTORY" "$file")"
    local destination="$(realpath --canonicalize-missing "$CONFIG_INSTALL_DIRECTORY/$relative")"
    local destination_dir=$(dirname "$destination")
    mkdir -p "$destination_dir"
    echo "-- INSTALL $relative -> $destination" 1>&2
    ln -s "$source" "$destination"
}

echo "-- REMOVING PREVIOUS INSTALLATION" 1>&2
rm -rf $CONFIG_INSTALL_DIRECTORY
mkdir -p $CONFIG_INSTALL_DIRECTORY
echo "-- INSTALL DESTINATION: $CONFIG_INSTALL_DIRECTORY" 1>&2

for f in $(find . -regex ".*\.vim$\|.*\.lua$"); do
    install_file $f
done


