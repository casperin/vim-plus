" Insert function () {}
imap fun<Tab> function () {<Esc>o}<Esc>k0f(
nmap fun<Tab> ifunction () {<Esc>o}<Esc>k0f(

" Simple html template for mockups
imap html<Tab> <!doctype html><CR><html><CR><head><CR><meta charset='utf-8'><CR><title>x</title><CR></head><CR><body><CR><div id='container'></div><CR></body><CR></html><Esc>5Gfx

" go error handling
au FileType go imap <C-e> <CR>if err != nil {}<Esc>==0f}i<CR><Esc>O
