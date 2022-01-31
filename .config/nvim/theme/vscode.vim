" Theming

" Get syntax files from config folder
set runtimepath+=~/.config/nvim/syntax

set t_Co=256
set t_ut=
colorscheme codedark
let g:lightline = { 'colorscheme': 'codedark' }

syntax on
"hi link dFunction Function
"syn match Function /\w\+\((\)\@=/
"set t_Co=256
set cursorline
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" End Theming
