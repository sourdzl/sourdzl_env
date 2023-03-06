" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
" Plug 'valloric/youcompleteme'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
" Plug 'nvie/vim-flake8'
Plug 'jnurmine/zenburn'
" Plug 'davidhalter/jedi-vim'
" Plug 'Vimjas/vim-python-pep8-indent'
Plug 'powerman/vim-plugin-AnsiEsc'

call plug#end()

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

syntax on
let python_highlight_all = 1

set number
" set relativenumber              "Relative line numbers are also good
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom

set hidden

set title


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" file/command completion more useful (default: first possible completion)
set wildmenu
set wildmode=list:longest

set wildignore=*.o,*.so,*.dylib,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*.pyc,*.pyo,*.pyd,*.egg-info/**,*.egg,develop-eggs/**,__pycache__/**,.Python
set wildignore+=*/venv/*,*/venv/**,venv/*,venv/**
set wildignore+=*DS_Store*
set wildignore+=node_modules/*,node_modules/**,*/node_modules/*,**/node_modules/**
set wildignore+=log/**


" smart case searching - case sensitive if capital letter present
set ignorecase 
set smartcase

set t_Co=256
set background=dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans = 1

" colorscheme solarized
colorscheme zenburn

" system clipboard
set clipboard=unnamed

set encoding=utf8

" indentation
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set wrap
set laststatus=2
scriptencoding utf-8

set linebreak    "Wrap lines at convenient points


set backspace=indent,eol,start " backspace over everything in insert mode

" More intuitive splitting
set splitbelow
set splitright


" enable folding with space bar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


" auto reload changes
set autoread

" Always show current position
set ruler

" regular expressions
set magic

" Add a bit extra margin to the left
set foldcolumn=1

" ignore compiled files
set wildignore=*.o,*~,*.pyc

" move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" bash like keys
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" ctrl-c to copy to system clipboard
vmap <C-c> :w !pbcopy<CR><CR>

" lightline config
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

" attempt at python3 syntax checking
" let g:syntastic_python_python_exec = 'python3'
" let g:syntastic_python_flake8_args = ['-m', 'flake8']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args='--ignore=E501,E711,E124'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" vimpager configs

let g:vimpager = {}
let g:vimpager.ansiesc = 0
let g:less     = {}


" Goes at end of file
set secure
