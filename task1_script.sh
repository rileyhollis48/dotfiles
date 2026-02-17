#!/bin/bash

echo "vimrc is being Copied to the Home Directory."
cp vim-config/.vimrc ~/.vimrc

echo "Looking for Vundle."

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    echo "Vundle not downloaded, Downloading Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Vundle has been downloaded already, No need to reinstall."
fi

echo "Running the Plugins for Vim."
vim +PluginInstall +qall

echo "Finished running Script"
