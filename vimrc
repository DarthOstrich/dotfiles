set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf "Fuzzy finder, installed via homebrew

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' "Plugin manager

" Themes
Plugin 'mhartington/oceanic-next'
Plugin 'jnurmine/zenburn' "Theme plugin

Plugin 'mitermayer/vim-prettier'
Plugin 'jiangmiao/auto-pairs' "Autocomplete brackets
Plugin 'junegunn/fzf.vim' "Fuzzy Finder vim plugin
Plugin 'mattn/emmet-vim' "Emmet, the best workflow tool
Plugin 'pangloss/vim-javascript' "JS highlighting
Plugin 'mxw/vim-jsx' "JSX syntax highlighting

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Theme settings 
syntax enable 
colors OceanicNext
if (has("termguicolors"))
  set termguicolors
endif

 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2     " tab spacing

set ai            " Auto indent
set si            " Smart indent
set wrap          " Wrap lines
set nowrap        " Don't wrap text

" Show line numbers
" turn absolute line numbers on
:set number
:set nu

" Code fold bliss
" https://www.linux.com/learn/vim-tips-folding-fun
" set foldmethod=indent

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

" Prettier
" Autosave
" disables autosave feature
let g:prettier#autoformat = 0
" runs prettier on file formats
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync


" Emmet
let g:user_emmet_expandabbr_key='<Tab>'