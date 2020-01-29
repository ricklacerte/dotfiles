" Plugins (Vundle)
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'lokaltog/Powerline',{'rtp': 'powerline/bindings/vim/'}
	Plugin 'tmhedberg/SimpylFold'
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'scrooloose/nerdtree'
"	Plugin 'EasyMotion'
	Plugin 'vim-scripts/indentpython.vim'
	Plugin 'vim-syntastic/syntastic'
	Plugin 'nvie/vim-flake8'
	Plugin 'kien/ctrlp.vim'
	Plugin 'tpope/vim-fugitive'
    Plugin 'dracula/vim'
call vundle#end()            " required
filetype plugin indent on    " required



" Prohibit keys
"no <down> <Nop>
"no <left> <Nop>
"no <right> <Nop>
"no <up> <Nop>



"Plugin : Powerline 
set laststatus=2


"Options:
set nu
set number
set numberwidth=3
set tabstop=4
set cindent
set splitbelow
set splitright
set clipboard=unnamed

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"PEP8 : White space
highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.py
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set shiftwidth=4|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix

set encoding=utf-8

"Format for Full stack files
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"Autocompletion
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_python_interpreter = '/usr/bin/python3'
map <space>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


"python with virtualenv support
py3 << EOF
import os
import sys

if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate')
    exec(activate_this, dict(__file__=activate_this))
EOF

" Make the code look pretty Madafucka!
let python_highlight_all=1
syntax on
color dracula

" Ignore .pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:SimpylFold_docstring_preview = 1
