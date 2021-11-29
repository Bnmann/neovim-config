" Enable Mouse
set mouse=a

GuiFont SauceCodePro\ Nerd\ Font:h16
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

inoremap <S-Insert> <C-R>+
nnoremap <S-Insert> <C-R>+
cnoremap <S-Insert> <C-R>+

nnoremap <C-E> :GuiTreeviewShow<CR>
nnoremap <C-B> :GuiTreeviewToggle<CR>

command FullScreen :call GuiWindowFullscreen(1)
command Windowed :call GuiWindowFullscreen(0)
