

" Our great overlord
let mapleader = "\<space>"

" set ...
nmap <Leader>ss :source %
nmap <Leader>sh :set hls!<CR>
nmap <Leader>sp :set paste!<CR>
nmap <leader>sr :ToggleRelativeNumbers<CR>

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

" Yank method in a typical js class
nmap ym ?:.function<CR>f{V%jy
nmap dm ?:.function<CR>f{V%jd

" Insert mode moving
imap <C-h> <Esc>bi
imap <C-H> <Esc>Bi
imap <C-l> <Esc>lwi
imap <C-L> <Esc>lWi
imap <C-k> <Esc>ka
imap <C-j> <Esc>ja

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


" Removed syntastic since I can't find any checker that actually works. It's
" either too slow, or won't work with es6, jsx, and types.
"
" let g:syntastic_javascript_checkers = ['jsxhint']
" autocmd FileType javascript let b:syntastic_checkers = findfile('.jscsrc', '.;') != '' ? ['jscs'] : ['jsxhint']
