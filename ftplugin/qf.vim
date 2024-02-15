function! s:yankMatch() 
    if (&filetype !=# "qf")
        return
    endif
    normal! yy
    let @" = matchlist(@", '\s\(.*\)$')[1]
endfunction

nnoremap <silent> <leader>yy :call <SID>yankMatch()<Enter>
