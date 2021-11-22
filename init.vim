set path+=**

call plug#begin('~/.local/share/nvim/plugged')
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'neovim/nvim-lspconfig'
    Plug 'tami5/lspsaga.nvim', { 'branch' : 'nvim51' }
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'sbdchd/neoformat'
    Plug 'famiu/nvim-reload'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'norcalli/nvim-terminal.lua'
    Plug 'peterhoeg/vim-qml'
	Plug 'fabi1cazenave/termopen.vim'
	Plug 'equalsraf/neovim-gui-shim'
	Plug 'numtostr/FTerm.nvim'
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'ThePrimeagen/harpoon'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'skywind3000/asynctasks.vim'
	Plug 'skywind3000/asyncrun.vim'
	Plug 'tpope/vim-eunuch'
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
call plug#end()


lua require('FTerm').setup()

let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'bottom'
let g:asynctasks_term_rows = 10    " set height for the horizontal terminal split
let g:asynctasks_term_cols = 80    " set width for vertical terminal split
