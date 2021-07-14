#!/bin/sh

set -eu

rm -rf ~/.config/nvim

mkdir -p ~/.config/nvim/plugin
mkdir -p ~/.config/nvim/after/plugin
mkdir -p ~/.config/nvim/lua/vnconfig
mkdir -p ~/.config/nvim/autoload/neoformat/formatters/


for f in `find . -regex ".*\.vim$\|.*\.lua$"`; do
    rm -rf ~/.config/nvim/$f
    ln -s `pwd`/$f ~/.config/nvim/$f
done
