function! neoformat#formatters#qml#enabled() abort
    return ['qmlfmt']
endfunction

function! neoformat#formatters#qml#qmlfmt() abort
     return {
         \ 'exe': 'qmlfmt',
         \ 'args': [],
         \ 'stdin': 1
         \ }
 endfunction

