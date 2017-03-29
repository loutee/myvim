set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible

colorscheme PaperColor
set background=dark
set number
set nocp

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

if exists('$DOTFILES')
	source $DOTFILES/vim/autoload/pathogen.vim
	source $DOTFILES/vim/vimrc
endif

execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd BufNewFile,BufReadPre * match ErrorMsg '\s\+$'
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
