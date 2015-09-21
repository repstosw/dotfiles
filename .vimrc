" Powerline setup
python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages/") 
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set t_Co=256
set laststatus=2

" Load Pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()

set history=700

colorscheme molokai
filetype on
syntax on
filetype plugin on
filetype indent on

set directory=~/.swp

set autoread
set guioptions=agimt
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 10
set title

set scrolloff=15
set wildmenu
set wildignore=*.o,*~,*.pyc

set ruler
set cmdheight=2
set hid
set relativenumber
set cursorline
set cursorcolumn

set backspace=eol,start,indent
set whichwrap+=<,>,h

set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

set wrap

nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

autocmd BufNewFile,BufRead *.wsgi set filetype=python

map <F7> :w<CR>:!python % <CR>
map <F10> :shell <CR>

" NERDTree
map <silent><leader>n :NERDTreeToggle<CR>

" minibufexplorer
map <silent><leader>b :MBEToggle<CR>
let g:miniBufExplMapWindowNavVim = 1


noremap <F4> :set hlsearch! hlsearch?<CR>

" map window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


set timeoutlen=250
imap jj <Esc>


