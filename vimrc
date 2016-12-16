call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'valloric/youcompleteme'
Plug 'itchny/lightline.vim'

call plug#end()

syntax on
filetype indent plugin on
set modeline

set background=dark
set encoding=utf8
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set wrap
set laststatus=2

"auto reload changes"
set autoread

"Always show current position
set ruler
"regular expressions
set magic

" Add a bit extra margin to the left
set foldcolumn=1

"ignore compiled files
set wildignore=*.o,*~,*.pyc

" move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" bash like keys"
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }


" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
