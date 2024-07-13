#!/bin/sh

# Run in Vim/Nvim configuration directory

STARTDIR="pack/plugins/start"
OPTDIR="pack/plugins/opt"

mkdir -p $STARTDIR $OPTDIR

# start

git clone https://github.com/junegunn/goyo.vim $STARTDIR/goyo.vim
git clone https://github.com/preservim/tagbar $STARTDIR/tagbar
git clone https://github.com/vim-scripts/VimCompletesMe $STARTDIR/VimCompletesMe
git clone https://github.com/skurtulmus/blackbubble $STARTDIR/blackbubble
