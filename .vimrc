" Plugins (Vundle)
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'lokaltog/Powerline',{'rtp': 'powerline/bindings/vim/'}
	Plugin 'Syntastic'
	Plugin 'valloric/youcompleteme'
	Plugin 'scrooloose/nerdtree'
	Plugin 'EasyMotion'
call vundle#end()            " required
filetype plugin indent on    " required

" Prohibit keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

"Plugin : Powerline 
set laststatus=2
"Colors
set t_Co=256
set background=dark
colo ron
highlight LineNr term=bold cterm=NONE ctermfg=Grey ctermbg=black gui=NONE guifg=DarkGrey guibg=NONE

"Options:
set number
set numberwidth=3
set tabstop=4
set cindent
