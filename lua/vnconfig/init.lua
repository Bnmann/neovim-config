require("vnconfig.plugins")

require("vnconfig.devicons")
require("vnconfig.telescope")
require("vnconfig.treesitter")
require("vnconfig.lsp")
require("vnconfig.tree")
require("vnconfig.colorscheme")
require("vnconfig.terminal")


vim.api.nvim_set_keymap('i', '<S-Up>', '', {})
vim.api.nvim_set_keymap('i', '<S-Down>', '', {})

vim.api.nvim_set_keymap('n', '<S-Up>', '', {})
vim.api.nvim_set_keymap('n', '<S-Down>', '', {})

vim.api.nvim_set_keymap('v', '<S-Up>', '', {})
vim.api.nvim_set_keymap('v', '<S-Down>', '', {})

vim.api.nvim_set_keymap('i', '<S-CR>', '', {})
vim.api.nvim_set_keymap('n', '<S-CR>', '', {})
vim.api.nvim_set_keymap('v', '<S-CR>', '', {})
