function! neoformat#formatters#qml#enabled() abort
    return ['qmlformat']
endfunction

function! neoformat#formatters#qml#qmlfmt() abort
     return {
         \ 'exe': 'qmlfmt',
         \ 'args': [],
         \ 'stdin': 1
         \ }
 endfunction


function! neoformat#formatters#qml#qmlformat() abort
     return {
         \ 'exe': 'qmlformat-qt6',
         \ 'args': ['-i', '-n'],
         \ 'replace': 1,
         \ 'stdin': 0,
         \ 'stderr' : 0,
         \ 'valid_exit_codes' : [0]
         \ }
 endfunction

