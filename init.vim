set path+=**

call plug#begin('~/.local/share/nvim/plugged')
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'sbdchd/neoformat'
    Plug 'famiu/nvim-reload'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'norcalli/nvim-terminal.lua'
    Plug 'peterhoeg/vim-qml'
	Plug 'fabi1cazenave/termopen.vim'
call plug#end()




