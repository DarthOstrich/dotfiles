set nocompatible              " be iMproved, required
filetype off                  " required
set exrc  										" Allows project specific .vimrc
set autoread                  " reload files 


"Auto install Plug https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
" This doesn't work for some reason
" Need to install Plug first before this init file will work.
if empty(glob('~/.config/nvim/plugged/plug.vim'))
  silent !curl -fLo ~/.config/nvim/plugged/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


set rtp+=/usr/local/opt/fzf "Fuzzy finder, installed via homebrew



call plug#begin('~/.config/nvim/plugged')

" Themes
" Plug 'mhartington/oceanic-next'
Plug 'haishanh/night-owl.vim'
" Plug 'morhetz/gruvbox'
" Plug 'jnurmine/zenburn' "Theme plugin
Plug 'ryanoasis/vim-devicons' "Icons for filetypes
Plug 'vim-airline/vim-airline' "Status bar
Plug 'vim-airline/vim-airline-themes' "Applicable themes
Plug 'ap/vim-css-color' "  color name highlighter

" Language Syntax Support
Plug 'pangloss/vim-javascript' "JS highlighting
Plug 'mxw/vim-jsx' "JSX syntax highlighting
Plug 'jparise/vim-graphql' "graphql syntax highlighting
Plug 'digitaltoad/vim-pug' "Pug highlighting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'evanleck/vim-svelte', {'branch': 'main'}

" Tools
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'jiangmiao/auto-pairs' "Autocomplete brackets. 
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
" Plug 'tpope/vim-commentary'
" Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive' "Git tools
Plug 'tpope/vim-surround'
Plug 'metakirby5/codi.vim'
" Plug 'frazrepo/vim-rainbow' "Disables normal syntax highlighting...stupid
Plug 'mattn/emmet-vim' "A bit annoying because it takes over my Tab key
" Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} "Nerdtree
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletion

" All of your Plugins must be added before the following line
call plug#end()            " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" External Settings files 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source $HOME/.config/nvim/plug-config/coc.vim




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (has("termguicolors"))
   set termguicolors
 endif
syntax enable

" colors OceanicNext
colorscheme night-owl

" To enable the lightline theme
let g:lightline = { 'colorscheme': 'nightowl' }


" let g:gruvbox_contrast_dark = 'soft'

" adds blue highlight to vim in visual mode selections
hi Visual cterm=bold ctermbg=Yellow ctermfg=NONE
" Search Highlight
hi Search guibg=darkslateblue guifg=wheat

" Enable Rainbow Brackets  
" let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core Functionality (general settings, keyboard shortcuts)
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" deal with swps and backups here
" create backups
set backup
" tell vim where to put its backup files
set backupdir=/tmp
" tell vim where to put swap files
set dir=/tmp
set timeoutlen=1000        " speed vim up
set ttimeoutlen=0          " https://stackoverflow.com/questions/37644682/why-is-vim-so-slow/37645334
set ttyfast                " Rendering
set tw=200                 " Line Length set to 200 😲

" Disable Autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" map jk to esc
:imap jk <Esc>

" save with zz
nnoremap zz :update<cr>

" set clipboard to easily copy from vim and paste into OSx
set clipboard=unnamed

" remap Ctrl-p for finding files run Fzf :Files command
nnoremap <C-p> :Files<Cr>

" Disable highlight with esc
nnoremap <esc> :noh<return><esc>


"This unsets the "last search pattern" register by hitting return
" nnoremap <silent> <CR> :nohlsearch<CR><CR>

" add characters for punctuation, use `:set list` to toggle
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,space:␣,trail:•,extends:⟩,precedes:⟨

" Setting for commenter to not replace hyphens
let g:tcomment#replacements_xml = {'&': '&', '-': '-'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => netrw
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't really use this anymore, but leaving in here for reference
" let g:netrw_liststyle=3 "Tree Style [3]
" let g:netrw_banner=0
" let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+'
" autocmd FileType netrw set nolist


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Changes NerdTree Toggle to Ctrl + n
" map <C-n> :NERDTreeToggle<CR> 
" autocmd VimEnter * NERDTree "Toggles Nerdtree on vim open
" let NERDTreeQuitOnOpen = 1 "closes NerdTree when opening a file



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coc Explorer (The New NerdTree) 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nmap <space>e :CocCommand explorer<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Conquer of Completion 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2     " tab spacing
set expandtab     " tabs are now spaces
set ai            " Auto indent
" set si            " Smart indent
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

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Shows the title within the window
set title titlestring=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Prettier
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autosave
" disables autosave feature
let g:prettier#autoformat = 0

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" runs prettier on file formats
autocmd BufWritePre *.html,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync


" Emmet
let g:user_emmet_leader_key=',' " Redefine emmet leader key. It's now ,,
" let g:user_emmet_expandabbr_key='<Tab>'

" Syntax stuff
" This lets vim know that .prisma files should be graphql. 
" Stolen from vim-graphql/ftdetect/graphql.vim
au BufRead,BufNewFile *.prisma setfiletype graphql
" au BufNewFile,BufRead *.svelte :set filetype=html

set secure "disables unsafe commands in project specific .vimrc

