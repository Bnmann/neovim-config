require("nvterm").setup({
	terminals = {
		type_opts = {
			float = {
				relative = "editor",
				row = 0.1,
				col = 0.1,
				width = 0.8,
				height = 0.8,
				border = "single",
			},
		},
	},
})

local toggle_terminal = function()
	require("nvterm.terminal").toggle("float")
end

vim.keymap.set("t", "<C-s-t>", toggle_terminal, { silent = true })
vim.keymap.set("n", "<C-s-t>", toggle_terminal, { silent = true })
vim.api.nvim_create_user_command("Terminal", function()
	toggle_terminal()
end, { nargs = 0 })
