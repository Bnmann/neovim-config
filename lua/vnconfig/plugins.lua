local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("tpope/vim-eunuch")
	use("peterhoeg/vim-qml")
	use("sbdchd/neoformat")
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-calc")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-path")

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use("marko-cerovac/material.nvim")
	use("mhartington/oceanic-next")

	use({
		"neovim/nvim-lspconfig",
		requires = {
			{ "p00f/clangd_extensions.nvim" },
			{ "tami5/lspsaga.nvim" },
			{ "ray-x/lsp_signature.nvim" },
		},
	})

	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-telescope/telescope-file-browser.nvim" },
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		},
	})

	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
		requires = {
			{ "nvim-treesitter/playground" },
		},
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
