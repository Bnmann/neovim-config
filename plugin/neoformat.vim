let g:neoformat_cpp_clangformat = {
        \ 'exe': 'clang-format',
        \ 'args': ['--style=file']
    \}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']
let g:neoformat_enabled_qml = ['qmlformat6']
let g:neoformat_basic_format_trim = 1
let g:lspformat = 1

augroup fmt
    autocmd!
   " autocmd BufWritePre *.h undojoin | Neoformat
   " autocmd BufWritePre *.c undojoin | Neoformat
   " autocmd BufWritePre *.hpp undojoin | Neoformat
   " autocmd BufWritePre *.cpp undojoin | Neoformat
    autocmd BufWritePre *.hpp lua if vim.g.lspformat == 1 then vim.lsp.buf.formatting_sync(nil, 1000) end
    autocmd BufWritePre *.cpp lua if vim.g.lspformat == 1 then vim.lsp.buf.formatting_sync(nil, 1000) end
    autocmd BufWritePre *.c lua if vim.g.lspformat == 1 then vim.lsp.buf.formatting_sync(nil, 1000) end
    autocmd BufWritePre *.h lua if vim.g.lspformat == 1 then vim.lsp.buf.formatting_sync(nil, 1000) end
    autocmd BufWritePre *.json lua vim.lsp.buf.formatting_sync(nil, 1000)
augroup END

command ClangFormat lua vim.lsp.buf.formatting_sync(nil, 1000)


