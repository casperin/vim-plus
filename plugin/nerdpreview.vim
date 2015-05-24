let g:nerd_preview_enabled = 0
let g:preview_last_buffer  = 0

function! NerdTreePreview()
    " Only on nerdtree window
    if (&ft ==# 'nerdtree')
        " Get filename
        let l:filename = substitute(getline("."), "^\\s\\+\\|\\s\\+$","","g")

        " Preview if it is not a folder
        let l:lastchar = strpart(l:filename, strlen(l:filename) - 1, 1)
        if (l:lastchar != "/" && strpart(l:filename, 0 ,2) != "..")

            let l:store_buffer_to_close = 1
            if (bufnr(l:filename) > 0)
                " Don't close if the buffer is already open
                let l:store_buffer_to_close = 0
            endif

            " Do preview
            execute "normal go"

            " Close previews buffer
            if (g:preview_last_buffer > 0)
                execute "bwipeout " . g:preview_last_buffer
                let g:preview_last_buffer = 0
            endif

            " Set last buffer to close it later
            if (l:store_buffer_to_close)
                let g:preview_last_buffer = bufnr(l:filename)
            endif
        endif
    elseif (g:preview_last_buffer > 0)
        " Close last previewed buffer
        let g:preview_last_buffer = 0
    endif
endfunction

function! s:NerdPreviewToggle()
    if (g:nerd_preview_enabled)
        let g:nerd_preview_enabled = 0
        augroup nerdpreview
            autocmd!
        augroup END
    else
        let g:nerd_preview_enabled = 1
        augroup nerdpreview
            autocmd!
            autocmd CursorMoved * nested call NerdTreePreview()
        augroup END
    endif
endfunction


" Start it
:call s:NerdPreviewToggle()

" Export function so it's easy to toggle
:command! PlusNerdPreviewToggle :call s:NerdPreviewToggle()

