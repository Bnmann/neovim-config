
if exists("g:gnvim")
    inoremap <S-Insert> <C-R>+
    nnoremap <S-Insert> <C-R>+
    cnoremap <S-Insert> <C-R>+

    let g:GuiFontSize=16
    let g:GuiFontFamily='SauceCodePro\ Nerd\ Font\ Mono'
    let g:GuiFont=g:GuiFontFamily . ":h" . g:GuiFontSize

    function! SetFontSize(size)
        let g:GuiFontSize=a:size
        exe 'set guifont='..g:GuiFontFamily . ":h" . g:GuiFontSize
    endfunction
    command! -nargs=1 -bang SetFontSize :call SetFontSize(<args>)

    function! SetDefaultFontSize()
        :call SetFontSize(16)
    endfunction
    command! SetDefaultFontSize :call SetDefaultFontSize()

    function! IncreaseFontSize()
        :call SetFontSize(g:GuiFontSize + 1)
    endfunction
    command! IncreaseFontSize :call IncreaseFontSize()

    function! DecreaseFontSize()
        :call SetFontSize(g:GuiFontSize - 1)
    endfunction
    command! DecreaseFontSize :call DecreaseFontSize()

    inoremap <C-S-Insert> <C-R>+
    nnoremap <C-S-Insert> <C-R>+
    cnoremap <C-S-Insert> <C-R>+
endif
