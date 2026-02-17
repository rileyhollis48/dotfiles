" =========================
" Vundle setup (required)
" =========================
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

" =========================
" Plugins (add more later)
" =========================
" Examples (leave commented until you want them):
" Plugin 'tpope/vim-sensible'
" Plugin 'preservim/nerdtree'
" Plugin 'vim-airline/vim-airline'
" Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" =========================
" Basic Vim settings
" =========================
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nowrap
set ruler
set mouse=a

