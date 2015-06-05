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

"let g:syntastic_python_checkers=['pyflakes']
" set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

hi colorcolumn guifg=DarkRed guibg=Black
autocmd BufNewFile,BufRead *.wsgi set filetype=python
autocmd BufNewFile,BufRead *.py call SetOverLength()

fun! SetOverLength()
    "match OverLength /\%80v.*/
    execute "set colorcolumn=" . join(range(80,100),',')
endfun

" SuperTab stuff
autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Powerline
set rtp+=.vim/bundle/powerline/powerline/bindings/vim

map <F7> :w<CR>:!python % <CR>
map <F10> :shell <CR>

" NERDTree
map <silent><leader>n :NERDTreeToggle<CR>

" minibufexplorer
map <silent><leader>b :TMiniBufExplorer<CR>
let g:miniBufExplMapWindowNavVim = 1

" indent guides
let g:indent_guides_color_change_percent = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" PEP8
let g:pep8_map='<leader>8'

" Column limits
" execute "set colorcolumn=" . join(range(80,334),',')

noremap <F4> :set hlsearch! hlsearch?<CR>

" map window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


imap jj <Esc>

" set statusline=\ %n\ -\ %f\ %m%r%=[%l/%L,%c]\ \ %p\%%

