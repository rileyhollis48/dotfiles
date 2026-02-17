set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on

syntax on
set number
set ruler
set nowrap
set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set ignorecase
set smartcase
set incsearch
set hlsearch

set backspace=indent,eol,start
set scrolloff=5

colorscheme jellybeans

