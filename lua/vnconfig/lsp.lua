local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.ensure_installed({
	"pylsp",
	"pyright",
	"clangd",
})

lsp.configure('clangd', require("clangd_extensions").prepare())

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = true,
	float = true,
})

local sagacmd = function(cmd)
    vim.cmd('Lspsaga ' .. cmd)
end

function LspActions()
    sagacmd('code_action')
end

function LspRename()
    sagacmd('rename')
end

function LspFinder()
    sagacmd('lsp_finder')
end

local nnoremap = function(seq, callback)
    vim.keymap.set('n', seq, callback, { silent = true })
end


require("lspsaga").setup({})

vim.api.nvim_create_user_command("LspActions", function()
    LspActions()
end, { nargs = 0 })

vim.api.nvim_create_user_command("LspRename", function()
    LspRename()
end, { nargs = 0 })

vim.api.nvim_create_user_command('LspFinder', function()
    LspFinder()
end, { nargs = 0 })

vim.api.nvim_create_user_command("LspFormat", function()
	if vim.g.lspformat == 1 then
		vim.lsp.buf.formatting_sync(nil, 1000)
	end
end, { nargs = 0 })

nnoremap('<C-.>', LspActions)
nnoremap('<C-,>', LspFinder)
nnoremap('<A-o>', function() vim.cmd('ClangdSwitchSourceHeader') end)
