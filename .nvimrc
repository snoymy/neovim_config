call plug#begin('~/.local/share/nvim/site/autoload/')

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Side scrollbar
Plug 'dstein64/nvim-scrollview', { 'branch': 'main' }

" ColorScheme
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tomasr/molokai'
Plug 'tomasiser/vim-code-dark'
Plug 'habamax/vim-polar'

" Bottom bar
Plug 'itchyny/lightline.vim'

" Syntax check
Plug 'vim-syntastic/syntastic'

" Coc
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Indent line
Plug 'lukas-reineke/indent-blankline.nvim'

" Every variable has different color
" Plug 'jaxbot/semantic-highlight.vim'

" File select on startup
Plug 'mhinz/vim-startify'

" C/C++ funvtion highlight
Plug 'octol/vim-cpp-enhanced-highlight'

" Undo tree
Plug 'simnalamburt/vim-mundo'

" Vim game
" Plug 'ThePrimeagen/vim-be-good'

" rainbow syntax highlight
Plug 'frazrepo/vim-rainbow'

" Javascript plugin
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Thai key vim
" Plug 'chakrit/vim-thai-keys'

" Float terminal
Plug 'voldikss/vim-floaterm'

" Close tag
Plug 'alvan/vim-closetag'

" Smooth scroll
Plug 'yuttie/comfortable-motion.vim'

" Plug 'SirVer/ultisnips'
" Plug 'mlaursen/vim-react-snippets'

call plug#end()
set runtimepath^=/home/snoy/.local/share/nvim/site/autoload/buffer-window/

" Key binding
inoremap jj <Esc>

inoremap "" ""<left>
inoremap \"\" \"\"<left><left>
inoremap \'\' \'\'<left><left>
inoremap '' ''<left>
inoremap ( ()<left>
inoremap () ()
inoremap (; ();<left><left>
inoremap [ []<left>
inoremap [] []
inoremap { {}<left>
inoremap {} {}
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap <silent> tt :10sp\|:terminal<CR>
nnoremap <leader>d d
nnoremap <leader>x x
nnoremap <leader>c c
" nnoremap <leader>s s
nnoremap <leader>D D
nnoremap <leader>X X
nnoremap <leader>C C
nnoremap <leader>S S
nnoremap c "_c
nnoremap x "_x
nnoremap d "_d
nnoremap s "_s
nnoremap C "_C
nnoremap X "_X
nnoremap D "_D
nnoremap S "_S
nnoremap <leader>yy ^vg_y0
nnoremap Y y$
nnoremap oo o<ESC>
nnoremap OO O<ESC>
nnoremap "" ciw""<Esc>P 
nnoremap '' ciw''<Esc>P 
nnoremap <leader>"" ciw\"\"<Esc><Left>P 
nnoremap <leader>'' ciw\'\'<Esc><Left>P 
nnoremap <silent> <F6> :call BufferWindowToggle()<CR>
" nnoremap <silent> <F2> :call ToggleNetrw()<CR> 
nnoremap <silent> <F2> :NvimTreeToggle<CR> 
" nnoremap <C-A> ggVG
nnoremap <leader>s :%s/
nnoremap <leader>( ciw()<Esc>PB

vnoremap <leader>d d
vnoremap <leader>x x
vnoremap <leader>c c
vnoremap <leader>s s
vnoremap <leader>D D
vnoremap <leader>X X
vnoremap <leader>C C
vnoremap <leader>S S
vnoremap c "_c
vnoremap x "_x
vnoremap d "_d
vnoremap s "_s
vnoremap C "_C
vnoremap X "_X
vnoremap D "_D
vnoremap S "_S

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap : :<c-g>u
inoremap ; ;<c-g>u
inoremap = =<c-g>u
inoremap ' '<c-g>u
inoremap " "<c-g>u
inoremap <Space> <Space><c-g>u

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" nnoremap <C-K> :m .-2<CR>==
" nnoremap <C-J> :m .+1<CR>==

tnoremap <Esc> <C-\><C-n>
tnoremap <silent> <Esc><Esc> <C-\><C-n>:bd!<CR>
tnoremap <C-W> <C-\><C-n><C-W>
autocmd BufWinEnter,WinEnter term://* startinsert
au TermOpen term://* startinsert

" End Key binding

set mouse=a
set splitbelow splitright
set number 
set relativenumber
set expandtab
set shiftwidth=4
set noshowmode

colorscheme molokai
" let g:lightline = { 'colorscheme': 'onehalfdark' }

hi LineNr               guifg=#999999
hi CursorLineNr         guifg=#FFFFFF
hi MatchParen           guifg=#FFFFFF   guibg=#999999   gui=bold

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

let g:NetrwIsOpen=0
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

let g:rainbow_active = 0

set t_Co=256
set t_ut=
colorscheme codedark

" func! s:polar_setup() abort
"     hi Comment gui=italic cterm=italic
"     hi Statement gui=bold cterm=bold
" endfunc
" 
" augroup colorscheme_change | au!
"     au ColorScheme polar call s:polar_setup()
" augroup END
" 
" augroup colorscheme_change | au!
"     au ColorScheme polar hi Comment gui=italic cterm=italic
" augroup END
" 
" set termguicolors
" colorscheme polar

" augroup remember_folds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent! loadview
" augroup END

" lua << EOF
"     vim.opt.listchars:append("space:⋅")
" EOF
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

let g:comfortable_motion_no_default_key_mappings = 1

" let g:comfortable_motion_scroll_down_key = "j"
" let g:comfortable_motion_scroll_up_key = "k"

nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>
" noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(60)<CR>
" noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-60)<CR>

