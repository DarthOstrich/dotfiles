set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=/usr/local/opt/fzf "Fuzzy finder, installed via homebrew

call plug#begin('~/.vim/plugged')

" Themes
Plug 'mhartington/oceanic-next'
Plug 'jnurmine/zenburn' "Theme plugin

Plug 'mitermayer/vim-prettier'
Plug 'jiangmiao/auto-pairs' "Autocomplete brackets. 
Plug 'junegunn/fzf.vim' "Fuzzy Finder vim plugin
" Plug 'mattn/emmet-vim' "Emmet, the best workflow tool. This is kind of
" annoying because it takes over my tab
Plug 'pangloss/vim-javascript' "JS highlighting
Plug 'mxw/vim-jsx' "JSX syntax highlighting
Plug 'jparise/vim-graphql' "graphql syntax highlighting
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} "Nerdtree
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletion

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

" Theme settings 
syntax enable 
colors OceanicNext
if (has("termguicolors"))
  set termguicolors
endif

 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core Functionality 
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" deal with swps and backups here
" create backups
set backup
" tell vim where to put its backup files
set backupdir=/tmp
" tell vim where to put swap files
set dir=/tmp


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => netrw
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_liststyle=3 ""Tree Style [3]
let g:netrw_banner=0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+'
autocmd FileType netrw set nolist


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Changes NerdTree Toggle to Ctrl + n
map <C-n> :NERDTreeToggle<CR> 
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
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Shows the title within the window
set title titlestring=

" Prettier
" Autosave
" disables autosave feature
let g:prettier#autoformat = 0
" runs prettier on file formats
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync


" Emmet
let g:user_emmet_expandabbr_key='<Tab>'

" Syntax stuff
" This lets vim know that .prisma files should be graphql. 
" Stolen from vim-graphql/ftdetect/graphql.vim
au BufRead,BufNewFile *.prisma setfiletype graphql
