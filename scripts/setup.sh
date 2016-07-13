#!/bin/bash
mkdir -p $1/.vim/
cp -i _vimrc $1/.vimrc
cp -i -r _vim/after $1/.vim/
cp -i -r _vim/colors $1/.vim/
cp -i _vim/filetype.vim $1/.vim/
cp -i -r _vim/UltiSnips $1/.vim/
