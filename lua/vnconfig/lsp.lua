local function on_attach_override()
	require("lsp_signature").on_attach()
	-- vim.lsp.handler
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = {
		"documentation",
		"detail",
		"additionalTextEdits",
	},
}

require("clangd_extensions").setup({
	server = {
		on_attach = on_attach_override,
		root_dir = function()
			return vim.loop.cwd()
		end,
		capabilities = capabilities,
	},
})

require("lspconfig").pylsp.setup({})
require("lspconfig").pyright.setup({})
require("lspconfig").gopls.setup({})

local cmp = require("cmp")
cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
		{ name = "path" },
		{ name = "calc" },
		{ name = "buffer" },
		--{ name = "cmdline" },
	}),
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).

-- cmp.setup.cmdline(":", {
-- mapping = cmp.mapping.preset.cmdline(),
-- sources = cmp.config.sources({
-- { name = "path" },
-- }, {
-- { name = "cmdline" },
-- }),
-- })

require("lspsaga").init_lsp_saga()

vim.api.nvim_create_user_command("LspActions", function()
	require("lspsaga.codeaction").code_action()
end, { nargs = 0 })

vim.api.nvim_create_user_command("LspRename", function()
	require("lspsaga.rename").rename()
end, { nargs = 0 })

vim.api.nvim_create_user_command("LspFormat", function()
	if vim.g.lspformat == 1 then
		vim.lsp.buf.formatting_sync(nil, 1000)
	end
end, { nargs = 0 })
