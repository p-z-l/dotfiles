"VIM-MULTIPLE-CURSORS

"Disable deoplete when using multiple cursors
function! Multiple_cursors_before()
    call deoplete#disable()
endfunc
function! Multiple_cursors_after()
    call deoplete#enable()
endfunc
