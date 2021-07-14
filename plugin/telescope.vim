lua require('vnconfig')

nnoremap <C-f> :lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>
inoremap <C-f> <ESC>:lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>

nnoremap <C-S-f> :lua require('telescope.builtin').live_grep()<CR>
inoremap <C-S-f> <ESC>:lua require('telescope.builtin').live_grep()<CR>

nnoremap <C-p> :lua require('telescope.builtin').find_files()<CR>
inoremap <C-p> <ESC>:lua require('telescope.builtin').find_files()<CR>

nnoremap <C-S-p> :lua require('telescope.builtin').commands()<CR>
inoremap <C-S-p> <ESC>:lua require('telescope.builtin').commands()<CR>

nnoremap <C-o> :lua require('telescope.builtin').treesitter()<CR>
inoremap <C-o> <ESC>:lua require('telescope.builtin').treesitter()<CR>

nnoremap <C-tab> :lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
inoremap <C-tab> <ESC>:lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>




