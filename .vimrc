set autoindent
set hlsearch
set ignorecase
set encoding=utf-8
set nu
set wrap
set ruler
set wildmenu
set mouse=a
set background=dark

syntax enable

" Download plug.vim and put it in ~/.vim/autoload
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-pl" ug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'

call plug#end()
autocmd VimEnter *
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
	PlugInstall | q
endif
