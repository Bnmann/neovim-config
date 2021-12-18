let g:neoformat_cpp_clangformat = {
        \ 'exe': 'clang-format',
        \ 'args': ['--style=file']
    \}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']
let g:neoformat_enabled_qml = ['qmlformat6']
let g:neoformat_basic_format_trim = 1

augroup fmt
    autocmd!
   " autocmd BufWritePre *.h undojoin | Neoformat
   " autocmd BufWritePre *.c undojoin | Neoformat
   " autocmd BufWritePre *.hpp undojoin | Neoformat
   " autocmd BufWritePre *.cpp undojoin | Neoformat
   	autocmd BufWritePre *.hpp lua vim.lsp.buf.formatting_sync(nil, 1000)
   	autocmd BufWritePre *.cpp lua vim.lsp.buf.formatting_sync(nil, 1000)
   	autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 1000)
   	autocmd BufWritePre *.h lua vim.lsp.buf.formatting_sync(nil, 1000)
   	autocmd BufWritePre *.json lua vim.lsp.buf.formatting_sync(nil, 1000)
	autocmd BufWritePre *.qml undojoin | Neoformat
augroup END

command ClangFormat lua vim.lsp.buf.formatting_sync(nil, 1000)


