local previewers = require("telescope.previewers")

local new_maker = function(filepath, bufnr, opts)
	opts = opts or {}

	filepath = vim.fn.expand(filepath)
	vim.loop.fs_stat(filepath, function(_, stat)
		if not stat then
			return
		end
		if stat.size > 100000 then
			return
		else
			previewers.buffer_previewer_maker(filepath, bufnr, opts)
		end
	end)
end

require("telescope").setup({
	defaults = {
		color_devicons = true,
		set_env = { ["COLORTERM"] = "truecolor" },
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		prompt_prefix = ">",
		color_devicons = true,
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		buffer_previewer_maker = new_maker,
		mappings = {
			i = {
				["<esc>"] = require("telescope.actions").close,
			},
		},
	},
	find_files = {
		theme = "dropdown",
	},
	pickers = {
		buffers = {
			theme = "dropdown",
			sort_lastused = true,
			color_devicons = true,
			previewer = false,
			layout_config = {
				vertical = {
					width = 0.9,
					anchor = "N",
				},
				anchor = "N",
				width = 0.9,
			},
			mappings = {
				i = {
					["<tab>"] = require("telescope.actions").move_selection_next,
				},
			},
		},
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "ignore_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")
