" #################
" #### General ####
" #################
" How many lines of history VIM must remember
set history=700

" Enable filetype plugins (script that is run automatically when Vim detects the type of file)
filetype plugin on
filetype indent on

" Auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
" Global mapleader
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" ############################
" #### VIM user interface ####
" ###########################
" Enable line numbers
set number

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current position
set ruler

" A buffer becomes hidden when  it is abandoned
set hid

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Do not redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" ########################################
" ######## Files, backups and undo #######
" ########################################
" Use spaces instead of tabs
" set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" set ai "Auto indent
" set si "Smart indent
" set wrap "Wrap lines

" ############################################
" ########## Visual mode related #############
" ############################################
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" #############################################
" ########### Moving around, tabs, windows and buffers
" #######################################################
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
