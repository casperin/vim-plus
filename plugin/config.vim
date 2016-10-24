

" Our great overlord
let mapleader = "\<space>"

" set ...
nmap <Leader>ss :source %
nmap <Leader>sh :set hls!<CR>
nmap <Leader>sp :set paste!<CR>
nmap <Leader>sr :ToggleRelativeNumbers<CR>

" console.log
nmap <Leader>li iconsole.log()<Esc>i
nmap <Leader>lo oconsole.log()<Esc>i
imap l<TAB> console.log();<Esc>hi

" Tabularize
nmap <Leader>= vip:EasyAlign =<CR>
vmap <Leader>= :EasyAlign =<CR>
nmap <Leader>i vip:EasyAlign */from*/<CR>
vmap <Leader>i :EasyAlign */from*/<CR>

" Splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Buffers
nmap <Tab> :b#<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>o :CtrlP<CR>

" Tabs/Buffers
map gh :PlusNavLeftRight prev<CR>
map gl :PlusNavLeftRight next<CR>

map <Leader>w :PlusToggleSingleSplit<CR>

map <Leader>q :bp\|bd #<CR>

" Visual mode deleting (cutting to the black hole)
xnoremap p "_dP
xnoremap s "_d

" Disable ex mode
nnoremap Q <nop>
map q: <Nop>

" Remap increase and decrease number because <C-a> is used for tmux
:nnoremap <leader>a <C-a>
:nnoremap <leader>d <C-x>

" Use ag to search for whatever is under cursor
map <leader>f yiw:Ag <C-r>"
xmap <leader>f y:Ag <C-r>"

" CtrlP
"""""""""
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " Ignore node_modules, et al.
let g:ctrlp_working_path_mode = 0

" NerdTree
""""""""""""
let NERDTreeIgnore = ['\.aux$']
map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>
let g:NERDTreeWinSize = 50

" Airline
"""""""""""
let g:airline#extensions#tabline#enabled = 1
set laststatus=2    " Makes the powerline show up all the time
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:flow#autoclose = 1


" Removed syntastic since I can't find any checker that actually works. It's
" either too slow, or won't work with es6, jsx, and types.
"
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
" autocmd FileType javascript let b:syntastic_checkers = findfile('.jscsrc', '.;') != '' ? ['jscs'] : ['jsxhint']
function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction
let b:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))

" EditorConfig - Should work nicely with fugitive and scp
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Tagbar
map <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_foldlevel = 0
let g:tagbar_iconchars = ['▸', '▾']
