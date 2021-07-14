set tabstop=4 softtabstop=4 "" Tab -> 4 spaces
set shiftwidth=4
set noexpandtab
set nosmartindent

set exrc "" Source vimrc in directory
set relativenumber "" Jump numbers
set nowrap "" Do not wrap text
set nu "" Show line number
set nohlsearch "" Do not highlight after search
set hidden "" Keep unsaved buffers in the background
set smartcase  "" Search case sensitive when capital letter introduced
set ignorecase "" Case insensitive search

"" Keep history in undodirectory, and do not keep swap files
set noswapfile
set nobackup
set undofile
set undodir=~/.cache/vim/undodir

set incsearch "" Highlight as search is in progress
set scrolloff=8 "" Keep scroll buffer 8 lines
set termguicolors ""

set signcolumn=yes "" Extra column for diagnositcs
set cmdheight=1 "" Extra space for messages

colorscheme gruvbox
highlight Normal guibg=none

set title

set wildmode=longest,list,full
set wildmenu

set wildignore+=*.pyc
set wildignore+=*.cache/*
set wildignore+=*_build/*
set wildignore+=*build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

syntax on

