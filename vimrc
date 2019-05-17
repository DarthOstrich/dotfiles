set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jnurmine/zenburn'
Plugin 'mitermayer/vim-prettier'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" my theme
syntax on
colors zenburn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai            " Auto indent
set si            " Smart indent
set wrap          " Wrap lines
set nowrap        " Don't wrap text

" Show line numbers
" turn absolute line numbers on
:set number
:set nu

" Code fold bliss
set foldmethod=indent

" Blink cursor on error instead of beeping (grr)
set visualbell
set t_vb=

" save with zz
nnoremap zz :update<cr>

" set clipboard to easily copy from vim and paste into OSx
set clipboard=unnamed

" adds blue highlight to vim in visual mode selections
highlight Visual cterm=bold ctermbg=Blue ctermfg=NONE
" iterm cursor changes depending on mode
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set title titlestring=

