
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

    inoremap <C-Insert> <ESC>"*p
    nnoremap <C-Insert> "*p
    cnoremap <C-Insert> "*p
    vnoremap <C-Insert> "*p

    inoremap <C-S-Insert> <ESC>"+p
    nnoremap <C-S-Insert> "+p
    cnoremap <C-S-Insert> "+p
    vnoremap <C-S-Insert> "+p

    vnoremap <C-S-y> "+y

    call gnvim#enable_ext_cmdline(0)

endif
