lua require('vnconfig')

set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

nnoremap <C-.> <cmd>lua require('lspsaga.codeaction').code_action()<CR>
nnoremap <C-,> <cmd>lua require('lspsaga.provider').lsp_finder()<CR>
nnoremap <A-o> <cmd>ClangdSwitchSourceHeader<CR>

