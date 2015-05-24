
" Function to strip white space from javascript files.
function! <SID>StripTrailingWhitespaces()
    " save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")

    " Strip trailing whitespace
    %s/\s\+$//e

    " restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Run function when saving the file
autocmd BufWritePre *.js :call <SID>StripTrailingWhitespaces()

