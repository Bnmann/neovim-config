" Enable Mouse
set mouse=a

GuiFont SauceCodePro\ Nerd\ Font\ Mono:h16
GuiAdaptiveFont 1
GuiTabline 1
GuiPopupmenu 1
GuiScrollBar 1
GuiAdaptiveColor 1
GuiAdaptiveFont 1
GuiAdaptiveStyle Fusion
GuiRenderLigatures 1

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv

inoremap <C-S-Insert> <ESC>"*p
nnoremap <C-S-Insert> "*p
cnoremap <C-S-Insert> "*p

command! PasteFromClipBoard "*p

"nnoremap <C-E> :GuiTreeviewShow<CR>
"nnoremap <C-B> :GuiTreeviewToggle<CR>

command! FullScreen :call GuiWindowFullScreen(1)
command! Windowed :call GuiWindowFullScreen(0)

let g:GuiFontSize=16
let g:GuiFontFamily="SauceCodePro\ Nerd\ Font\ Mono"

function! SetFontSize(size)
    let g:GuiFontSize=a:size
    let font = g:GuiFontFamily . ":h" . g:GuiFontSize
    :call GuiFont(font)
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



