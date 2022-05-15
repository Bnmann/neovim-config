set path+=**

call plug#begin('~/.local/share/nvim/plugged')
    Plug 'ThePrimeagen/harpoon'
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    Plug 'fabi1cazenave/termopen.vim'
    Plug 'famiu/nvim-reload'
    Plug 'gruvbox-community/gruvbox'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/cmp-calc'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'neovim/nvim-lspconfig'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'norcalli/nvim-terminal.lua'
    Plug 'numtostr/FTerm.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'
    Plug 'p00f/clangd_extensions.nvim'
    Plug 'peterhoeg/vim-qml'
    Plug 'ray-x/lsp_signature.nvim'
    Plug 'sbdchd/neoformat'
    Plug 'skywind3000/asyncrun.vim'
    Plug 'skywind3000/asynctasks.vim'
    Plug 'tami5/lspsaga.nvim'
    Plug 'tikhomirov/vim-glsl'
    Plug 'tpope/vim-eunuch'
call plug#end()

let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'bottom'
let g:asynctasks_term_rows = 10    " set height for the horizontal terminal split
let g:asynctasks_term_cols = 80    " set width for vertical terminal split

set guifont=SauceCodePro\ Nerd\ Font\ Mono:h16
