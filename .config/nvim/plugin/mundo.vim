" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.nvim/undo

nnoremap <F5> :MundoToggle<CR>
