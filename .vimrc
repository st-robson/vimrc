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
set clipboard=unnamedplus
set noshowmode
set noshowcmd
set shortmess+=F

syntax enable
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
map <C-v> :r ~/.vimbuffer<CR>

" Download plug.vim and put it in ~/.vim/autoload
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-pl" ug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'posva/vim-vue'
Plug 'sirver/ultisnips'

call plug#end()
autocmd VimEnter *
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
	PlugInstall | q
endif
